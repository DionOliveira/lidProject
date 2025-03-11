$("#modalCSellChar").on("show.bs.modal", function (event) {
  var button = $(event.relatedTarget);
  var accountid = button.data("whateveraccountid");
  var typeproc = button.data("whatevertypeproc");
  var accname = button.data("whatevername");
  var modal = $(this);
  modal.find("#accname").val(accname);
  modal.find("#typeproc").val(typeproc);
  modal.find("#accountid").val(accountid);
});
$("#modalBuyChar").on("show.bs.modal", function (event) {
  var button = $(event.relatedTarget);
  var accountid = button.data("whateveraccountid");
  var value = button.data("whatevervalue");
  var accname = button.data("whatevername");
  var modal = $(this);
  modal.find("#accname").val(accname);
  modal.find("#value").val(value);
  modal.find("#accountid").val(accountid);
});

$("#modalSellChar").on("show.bs.modal", function (event) {
  var button = $(event.relatedTarget);
  var accountid = button.data("whateveraccountid");
  var typeproc = button.data("whatevertypeproc");
  var accname = button.data("whatevername");
  var modal = $(this);
  modal.find("#accname").val(accname);
  modal.find("#accountid").val(accountid);
  modal.find("#typeproc").val(typeproc);
});
