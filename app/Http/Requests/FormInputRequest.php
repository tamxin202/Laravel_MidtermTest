<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FormInputRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
    public function rules()
    {
        return [
            'inputName'=>'required|max:300|string',
            'inputDescription'=>'required|string',
            'inputPrice'=>'required|numeric|min:1000',
            'inputImage'=>'required|filled|image|mimes:jpeg,png,jpg,gif,svg|max:25000',
        ];
    }

    public function messages()
    {
        return [
            'inputName.required'=>'Bạn chưa nhập tên sản phẩm',
            'inputName.max'=>'Tên sản phẩm chỉ có tối đa 300 ký tự',
            'inputDescription.required'=>'Bạn chưa nhập mô tả sản phẩm',
            'inputPrice.required'=>'Bạn chưa nhập giá sản phẩm',
            'inputPrice.min'=>'Giá sản phẩm phải lớn hơn 1000 đ',
            'inputImage.required'=>'Bạn chưa chọn ảnh',
            'inputImage.filled'=>'Bạn chưa chọn ảnh',
            'inputImage.max'=>'Kích thước ảnh tối đa là 25Mb',
            'inputImage.image'=>'File bạn upload không phải ảnh'
        ];
    } 
}
    
