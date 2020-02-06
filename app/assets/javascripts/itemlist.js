$(function(){
  function appendHTML(categoryParent){
    var html = `<div class = 'categorySearch__parentitem'>
    <a href= "/items/search/${categoryParent.id}", id = "${categoryParent.id}", class = "category_link">${categoryParent.name}</a>
    </div>`
    $('.categorySearch').append(html);
  }
  
  function appendHTML2nd(categoryChild){
    var html = `
        <div class = 'cateogrySearch__parentlist__childSearch__childitem'>
        <a href= "/items/search/${categoryChild.id}", id = "${categoryChild.id}", class = "category_link">${categoryChild.name}</a>
      </div>`

    return html;
  };
  function appendHTML3nd(categorygrandChild){
    var html = `
        <div class = 'cateogrySearch__parentlist__grandchildSearch__childitem'>
        <a href= "/items/search/${categorygrandChild.id}", id = "${categorygrandChild.id}", class = "category_link">${categorygrandChild.name}</a>
      </div>`

    return html;
  }


  $(function(){
  $('.headerBox__main__bottom__select__category__categorySearch').on('mouseenter',function(){
    $('.category_menu').removeClass('noShow');
    $('.categorySearch').removeClass('noShow');
    $('.categorySearch').css('height','520px');
    var url = '/items'
    $.ajax({
      type: "GET",
      url: url,
      dataType: 'json',
    })
    .done(function(categoryParent){
        categoryParent.forEach(function(categoryParent){
          appendHTML(categoryParent)
          });
        });
      })
      $('.categorySearch').on("mouseenter", ".category_link", function(){
        var parentID = '';
        parentID = $(this).attr('id')
        console.log(parentID)
        $('.categorySearch__parentitem__childSearch').css('height','525px');
        $('.background-red').removeClass('background-red');
        $('#'+ parentID).addClass('background-red');
        $(".cateogrySearch__parentlist__childSearch__childitem").remove();
        $(".categorySearch__parentitem__grandchildSearch").empty();
        var url = ' /items/linklist'
          $.ajax({
            type: "GET",
            url: url,
            data: {id: parentID},
            dataType: 'json',
          })
          .done(function(categoryChild){
            insertHTML = '';
            categoryChild.forEach(function(categoryChild){
              insertHTML += appendHTML2nd(categoryChild);
              $('.categorySearch__parentitem__grandchildSearch').css('height','');
            });
            $('.categorySearch__parentitem__childSearch').append(insertHTML);
          })
        })
      $('.categorySearch__parentitem__childSearch').on('mouseenter', ".category_link", function(){
        var childID = $(this).attr('id')
        $(".categorySearch__parentitem__grandchildSearch").empty();
        $('.categorySearch__parentitem__grandchildSearch').css('height','530px');
        
        $('.background-gray').removeClass('background-gray');
        $('#'+ childID).addClass('background-gray');
        var url = '/items/get_category_grandchildren'
          $.ajax({
            type:'GET',
            url:url,
            data:{id: childID},
            dataType: 'json',
            })
          .done(function(categorygrandChild){
            insertHTML = '';
            categorygrandChild.forEach(function(categorygrandChild){
              insertHTML += appendHTML3nd(categorygrandChild)
            });
          $('.categorySearch__parentitem__grandchildSearch').append(insertHTML);

        })
      })
      $('.categorySearch__parentitem__grandchildSearch').on('mouseenter', ".category_link", function(){
        var grandchildID = $(this).attr('id');
        $('.background-silver').removeClass('background-silver');
        $('#' + grandchildID).parent('div').addClass('background-silver');
      })
    $('.category_menu').on('mouseleave',function(){
      $('.category_menu').addClass('noShow');
      $('.categorySearch__parentitem').remove();
      $('.cateogrySearch__parentlist__childSearch__childitem').remove();
      $('.categorySearch__parentitem__childSearch').css('height','');
      $('.cateogrySearch__parentlist__grandchildSearch__childitem').remove();
      $('.categorySearch__parentitem__grandchildSearch').css('height','')
      $('.category_menu').off('change');
    })
  })
})