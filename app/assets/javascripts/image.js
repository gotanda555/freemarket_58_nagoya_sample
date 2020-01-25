// $(function(){
//   var dataBox = new DataTransfer();
//   var file_field = document.querySelector('input[type=file]')
//   $('#img-file').change(function(){
//     var files = $('input[type="file"]').prop('files')[0];
//     $.each(this.files, function(i, file){
//       var fileReader = new FileReader();
//       dataBox.items.add(file)
//       file_field.files = dataBox.files

//       var num = $('.item-image').length + 1 + i
//       fileReader.readAsDataURL(file);
//       if (num == 10){
//         $('#image-box__container').css('display', 'none')   
//       }
//       fileReader.onloadend = function() {
//         var src = fileReader.result
//         var html= `<li class='item-image' data-image="${file.name}">
//                     <div class=' item-image__content'>
//                       <div class='item-image__content--icon'>
//                         <img src=${src} width="114" height="120" >
//                       </div>
//                     </div>
//                     <div class='item-image__operetion'>
//                       <div class='item-image__operetion__edit'>編集</div>
//                       <div class='item-image__operetion__delete'>削除</div>
//                     </div>
//                   </li>`
//         $('#image-box__container').before(html);
//       };
//       $('#image-box__container').attr('class', `item-num-${num}`)
//     });
//   });
//   $(document).on("click", '.item-image__operetion--delete', function(){
//     var target_image = $(this).parent().parent()
//     var target_name = $(target_image).data('image')
//     if(file_field.files.length==1){
//       $('input[type=file]').val(null)
//       dataBox.clearData();
//     }else{
//       $.each(file_field.files, function(i,input){
//         if(input.name==target_name){
//           dataBox.items.remove(i) 
//         }
//       })
//       file_field.files = dataBox.files
//     }
//     target_image.remove()
//     var num = $('.item-image').length
//     $('#image-box__container').show()
//     $('#image-box__container').attr('class', `item-num-${num}`)
//   })

// var dropArea = document.getElementById("image-box-1");

// window.onload = function(e){
//   dropArea.addEventListener("dragover", function(e){
//     e.preventDefault();
//     $(this).children('#image-box__container').css({'border': '1px solid rgb(204, 204, 204)','box-shadow': '0px 0px 4px'})
//   },false);
//   dropArea.addEventListener("dragleave", function(e){
//     e.preventDefault();
//     $(this).children('#image-box__container').css({'border': '1px dashed rgb(204, 204, 204)','box-shadow': '0px 0px 0px'})      
//   },false);
//   dropArea.addEventListener("drop", function(e) {
//     e.preventDefault();
//     $(this).children('#image-box__container').css({'border': '1px dashed rgb(204, 204, 204)','box-shadow': '0px 0px 0px'});
//     var files = e.dataTransfer.files;
//     $.each(files, function(i,file){
//       var fileReader = new FileReader();
//       dataBox.items.add(file)
//       file_field.files = dataBox.files
//       var num = $('.item-image').length + i + 1
//       fileReader.readAsDataURL(file);
//       if (num==10){
//         $('#image-box__container').css('display', 'none')   
//       }
//       fileReader.onload = function() {
//         var src = fileReader.result
//         var html = `<li class='item-image' data-image="${file.name}">
//         <div class=' item-image__content'>
//           <div class='item-image__content--icon'>
//             <img src=${src} width="114" height="120" >
//           </div>
//         </div>
//         <div class='item-image__operetion'>
//           <div class='item-image__operetion--edit'>編集</div>
//           <div class='item-image__operetion--delete'>削除</div>
//         </div>
//       </li>`
//       $('#image-box__container').before(html);
//       };
//       $('#image-box__container').attr('class', `item-num-${num}`)
//     })
//   })
// }
//   });

$(function(){
  function buildHTML(count) {
    var html = `<div class="preview-box" id="preview-box__${count}">
                  <div class="upper-box">
                    <img src="" alt="preview">
                  </div>
                  <div class="lower-box">
                    <div class="update-box">
                      <label class="edit_btn">編集</label>
                    </div>
                    <div class="delete-box" id="delete_btn_${count}">
                      <span>削除</span>
                    </div>
                  </div>
                </div>`
    return html;
  }
  if (window.location.href.match(/\/items\/\d+\/edit/)){
    var prevContent = $('.label-content').prev();
    labelWidth = (620 - $(prevContent).css('width').replace(/[^0-9]/g, ''));
    $('.label-content').css('width', labelWidth);
    $('.preview-box').each(function(index, box){
      $(box).attr('id', `preview-box__${index}`);
    })
    $('.delete-box').each(function(index, box){
      $(box).attr('id', `delete_btn_${index}`);
    })
    var count = $('.preview-box').length;
    if (count == 5) {
      $('.label-content').hide();
    }
  }
function setLabel(){
  var prevContent = $('.label-content').prev();
  labelWidth = (620 - $(prevContent).css('width').replace(/[^0-9]/g, ''));
  $('.label-content').css('width', labelWidth);
}

$(document).on('change', '.hidden-field', function(){
  setLabel();
  var id = $(this).attr('id').replace(/[^0-9]/g, '');
  $('.label-box').attr({id: `label-box--${id}`, for: `item_images_attributes_${id}_image`});
  var file = this.files[0];
  console.log(this.files)
  var reader = new FileReader();
  reader.readAsDataURL(file);
  reader.onload = function(){
    var image = this.result;
    if($(`#preview-box__${id}`).length == 0){
      var count = $('.preview-box').length;
      var html = buildHTML(id);
      var prevContent = $('.label-content').prev();
      $(prevContent).append(html);
    }
    $(`#preview-box__${id} img`).attr('src', `${image}`);
    var count = $('.preview-box').length;
    if(count == 5){
      $('.label-content').hide();
    }
    if ($(`#item_images_attributes_${id}__destroy`)){
      $(`#item_images_attributes_${id}__destroy`).prop('checked',false);
    } 
    setLabel();
    if(count < 5){
      $('.label-box').attr({id: `label-box--${count}`, for: `item_images_attributes_${count}_image`});
    }
  }
});
$(document).on('click', '.delete-box', function() {
  var count = $('.preview-box').length;
  setLabel(count);
  var id = $(this).attr('id').replace(/[^0-9]/g, '');
  $(`#preview-box__${id}`).remove();

  if ($(`#item_images_attributes_${id}__destroy`).length == 0) {
    $(`#item_images_attributes_${id}_image`).val("");
    var count = $('.preview-box').length;
    if (count == 4) {
      $('.label-content').show();
    }
    setLabel(count);
    if(id < 5){
      $('.label-box').attr({id: `label-box--${id}`,for: `item_images_attributes_${id}_image`});

    }
  } else {

    $(`#item_images_attributes_${id}__destroy`).prop('checked',true);
    if (count == 4) {
      $('.label-content').show();
    }

    setLabel();
    if(id < 5){
      $('.label-box').attr({id: `label-box--${id}`,for: `item_images_attributes_${id}_image`});
    }
  }
});
});


