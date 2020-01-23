$(function(){
  function appendOption(child){
    var html = `<option value="${child.id}">${child.name}</option>`;
    return html;
  }

  function appendChildBox(insertHTML){
    var childSelectHtml = '';
    childSelectHtml = `
    <div id = 'child_categorybox' class='main__contents__item__bottom__box__head__form__goods__detail__group__add__select__box'>
      <div class='main__contents__item__bottom__box__head__form__goods__detail__group__add__select__box__bottom'>
      </div>
      <select id="child_category" name="item[category_id]"><option value="">---</option>
      ${insertHTML}
  </div>`
  $('.main__contents__item__bottom__box__head__form__goods__detail__group__add__select').append(childSelectHtml);
  }

  function appendGrandchildBox(insertHTML){
    var grandchildSelectHtml = '';
    grandchildSelectHtml = `
    <div id = 'grandchild_categorybox' class='main__contents__item__bottom__box__head__form__goods__detail__group__add__select__box'>
      <div class='main__contents__item__bottom__box__head__form__goods__detail__group__add__select__box__bottom'>
      </div>
      <select id="grandchild_category" name="item[category_id]"><option value="">---</option>
      ${insertHTML}
  </div>`
  $('.main__contents__item__bottom__box__head__form__goods__detail__group__add__select').append(grandchildSelectHtml);
  }

  $(function(){
    $('#parent_category').on('change', function(e){
      e.preventDefault()
      var parentCategory = document.getElementById('parent_category').value;
      var url = '/items/get_category_children'
      $.ajax({
        type: "GET",
        url: url,
        data: {id: parentCategory},
        dataType: 'json',
      })

      .done(function(child){
        $('#child_categorybox').remove();
        $('#grandchild_categorybox').remove();
        insertHTML = '';
        child.forEach(function(child){
          insertHTML += appendOption(child);
        });
        appendChildBox(insertHTML);
      })
    });
  });
})