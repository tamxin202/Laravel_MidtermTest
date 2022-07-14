<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\FormInputRequest;
use App\Models\Product;

class PageController extends Controller
{
    public function index(){
        $product = Product :: all();
        
        return view('trangchu',compact('product'));
    }
    public function formAdd(){
        return view('formAdd');
    }
    public function getIndex(){
        $product = Product :: all();
        return view('Show');
    }
    public function postAdminAdd(FormInputRequest $request){
        $product= new Product();
        if ($request->hasFile('inputImage')){
            $file = $request -> file ('inputImage');
            $fileName=$file->getClientOriginalName('inputImage');
            $file->move('source/image/product',$fileName);
        }
        $fileName=null;
        if ($request->file('inputImage')!=null){
            $file_name=$request->file('inputImage')->getClientOriginalName();

        }
        $product->name=$request->inputName;
        $product->image=$file_name;
        $product->unit_price=$request->inputPrice;
        $product->promotion_price=$request->inputPromotionPrice;
        $product->description=$request->inputDescription;
        $product->save();
        return redirect('/page')->with('success', 'Thêm thành công');
    
    }
    public function getDetail(Request $request){
        $sanpham = product::where('id',$request->id)->first();
        
        return view('Detail',compact('sanpham'));
    }
    //
}
