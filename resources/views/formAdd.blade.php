<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form SignUp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
</head>



<div class="space50">&nbsp;</div>
<div class="container beta-relative">
    <div class="pull-left">
        <h2>Add product</h2>
    </div>
    <div class="space50">&nbsp;</div>
    
    <div class="container">
    <form action="{{route('admin-add-form')}}" method="post" enctype="multipart/form-data">
        <!-- <form action="admin-add-form" method="post" enctype="multipart/form-data"> -->
            @csrf
            <div class="form-group">
                <label for='inputName'>Name</label>
                <input type="text" class="form-control" name="inputName" id="inputName" placeholder="Enter name" >
            </div>
            @error('inputName')
                        <span style="color: red">{{$message}}</span>
                @enderror
            <div class="form-group">
                <label for='inputPrice'>Price</label>
                <input type="number" min=1000 class="form-control" name="inputPrice" id="inputPrice" placeholder="Enter price" >
            </div>
            @error('inputPrice')
                        <span style="color: red">{{$message}}</span>
                @enderror
            <div class="form-group">
                <label for='inputPromotionPrice'>Promotion Price</label>
                <input type="number" min=1000 class="form-control" name="inputPromotionPrice" id="inputPromotionPrice" placeholder="Enter promotion price">
            </div>
            @error('inputPromotionPrice')
                        <span style="color: red">{{$message}}</span>
                @enderror
            <div class="form-group">
                <label for='inputImage'>Image file</label>
                <input type="file" class="form-control-file" name="inputImage" id="inputImage" >
            </div>
            @error('inputImage')
                        <span style="color: red">{{$message}}</span>
                @enderror
            <div class="form-group">
                <img id="preview-image-before-upload" src="https://www.riobeauty.co.uk/images/product_image_not_found.gif" alt="preview image" style="max-height: 250px;">
                <script type="text/javascript">
                    $(document).ready(function(e) {
                        $('#inputImage').change(function() {
                            let reader = new FileReader();
                            reader.onload = (e) => {
                                $('#preview-image-before-upload').attr('src', e.target.result);
                            }
                            reader.readAsDataURL(this.files[0]);
                        });
                    });
                </script>
            </div>

            <div class="form-group">
                <label for='inputDescription'>Description</label>
                <textarea name="inputDescription" ></textarea>
                <script>
                    CKEDITOR.replace('inputDescription');
                </script>
            </div>
            @error('inputDescription')
                        <span style="color: red">{{$message}}</span>
                @enderror
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    <div class="space50">&nbsp;</div>
</div>
</html>
<script src="source/assets/dest/js/jquery.js"></script>
    <script src="source/assets/dest/vendors/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="source/assets/dest/vendors/bxslider/jquery.bxslider.min.js"></script>
    <script src="source/assets/dest/vendors/colorbox/jquery.colorbox-min.js"></script>
    <script src="source/assets/dest/vendors/animo/Animo.js"></script>