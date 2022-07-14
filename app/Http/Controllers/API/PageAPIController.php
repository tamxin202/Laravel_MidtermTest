<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class PageAPIController extends Controller
{
    public function getProducts(){
        $products= Product::all();
        return response()->json($products);
    }
    public function getOneProduct($id)
    {
    $product = Product::find($id);
    return response()->json($product);
    }

    public function searchfoods(Request $request)
    {
        if($request->keyword == null)
        {
            return DB::table('products')->get();
        }
        $result = DB::table('products')
                ->where('name', 'like', "%$request->keyword%")
                ->get();
        return $result;
    }

    public function search(Request $request){

        $query = DB::table('products')->whereBetween('unit_price', [$request->min, $request->max])
        ->orWhere('name', 'like', '%' . $request->name . '%')
        ->get();

        return response()->json(["data"=>$query]);
    }
    
    
}
