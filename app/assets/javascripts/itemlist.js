$(function(){
  function appendHTML(categoryParent){
    var html = `<div class = 'categorySearch__parentitem'>
    <div class = 'categorySearch__parentitem__name'><a id = "${categoryParent.id}", class = "category_link">${categoryParent.name}</a></div>
    </div>`
    $('.categorySearch').append(html);
  }
  
  function appendHTML2nd(categoryChild){
    var html = `
        <div class = 'cateogrySearch__parentlist__childSearch__childitem'>
        <div class = 'categorySearch__parentitem__name'><a id = "${categoryChild.id}", class = "category_link">${categoryChild.name}</a></div>
      </div>`

    return html;
  }

  $(function(){
  $('.headerBox__main__bottom__select__category__categorySearch').on('mouseover',function(){
    $('.categorySearch').removeClass('noShow');
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
          $('.categorySearch').on("mouseenter", ".category_link", function(){
            var parentID =  $(this).attr('id')
            var selecteditem = $(this)
            $(".cateogrySearch__parentitem__childSearch").empty();
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
                insertHTML += appendHTML2nd(categoryChild)
              });
              $('.cateogrySearch__parentitem__childSearch').append(insertHTML);
            })
          })
        })
      $('.categorySearch__parentitem__name').on('mouseout',function(e){
        e.preventDefault()
        $('.categorySearch__parentitem__name').addClass('noShow');
    })
  })
})