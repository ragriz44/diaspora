Diaspora.widgets.add("ajax", function() {

  this.start = function(){
    this.CSRF = $("meta[name='csrf-token']").attr("content");
  };

  this.CSRF = false;
  this.setHeader = function(xhr){
    xhr.setRequestHeader("X-CSRF-Token", Diaspora.widgets.ajax.CSRF);
  };

});
