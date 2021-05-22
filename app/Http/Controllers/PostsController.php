<?php

namespace App\Http\Controllers;

use App\Models\Posts;
use App\Models\Role;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Intervention\Image\Facades\Image;
use mysql_xdevapi\Exception;

class PostsController extends Controller
{
    protected $post;
    public function __construct(){
        $this->post = new Posts();
    }

    public function index(Posts $post)
    {
        $data = DB::table('posts')->orderBy('created_at', 'DESC')->paginate(8);
        return view('post.index', compact('post', 'data'));
    }

    public function show(Posts $post, $p)
    {
        $postExists = Posts::where('id', $p)->exists();
        abort_unless($postExists, 404);

        return view('post.post', compact('post'), ['p'=>$p]);
    }

    public function store()
    {
        $data = request()->validate([
            'title' => 'required',
            'short_description' => 'required',
            'long_description_title' => 'required',
            'long_description' => 'required',
            'summary_title' => 'required',
            'summary' => 'required',
            'image' => ['required', 'image'],
        ]);

        $imagePath = request('image')->store('blog', 'public');

        $image = Image::make(public_path("storage/{$imagePath}"))->fit(1200, 1200);
        $image->save();

       try{
            $this->post->slug = SlugService::createSlug(Posts::class, 'slug', $data['title']);
            $post = $this->post->create([
                'title' => $data['title'],
                'slug' => $this->post->slug,
                'short_description' => $data['short_description'],
                'long_description_title' => $data['long_description_title'],
                'long_description' => $data['long_description'],
                'summary_title' => $data['summary_title'],
                'summary' => $data['summary'],
                'image' => $imagePath,
            ]);

            if($post)
            {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect('/blog/post/' . $post->id);
      }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

    public function list(Role $role, Posts $post)
    {
        $this->authorize('view', $role);

        $data = DB::table('posts')->paginate(8);
        return view('admin.posts.index', compact('post', 'data'));
    }

    public function create(Role $role)
    {
        $this->authorize('view', $role);
        return view('admin.posts.create');
    }

    public function edit(Role $role, Posts $post, $p)
    {
        $this->authorize('view', $role);
        return view('admin.posts.edit', compact('post'), ['p'=>$p]);
    }

    public function update($p)
    {
        $data = request()->validate([
            'title' => 'required',
            'short_description' => 'required',
            'long_description_title' => 'required',
            'long_description' => 'required',
            'summary_title' => 'required',
            'summary' => 'required',
        ]);

        try {
            $post = DB::table('posts')->where('id', '=', $p)->update($data);
            if($post) {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect("/blog/post/{$p}");
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }

    public function delete($p, Role $role)
    {
        $this->authorize('view', $role);
        try {
            //image delete
            $post_img = DB::table('posts')->where('id','=',$p)->select('image')->get();
            $imagePath="storage/{$post_img[0]->image}";
            if(File::exists(public_path($imagePath))){
                File::delete(public_path($imagePath));
            }else{
                dd("Error in image path");
            }

            $post = DB::table('posts')->where('id','=',$p)->delete();
            if($post) {
                DB::commit();
            } else {
                DB::rollback();
            }
            return redirect('adminPanel/posts');
        }
        catch (\Exception $ex){
            DB::rollback();
            return redirect()->back();
        }
    }
}
