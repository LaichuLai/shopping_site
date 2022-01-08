import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "template", "link" ]

  add_stock(event) {
    event.preventDefault();

    let content = this.templateTarget.innerHTML.replace(/ADD_STOCK/g, new Date().getTime());
    this.linkTarget.insertAdjacentHTML('beforebegin', content);
  }

  delete_stock(event) {
    event.preventDefault();

    let inputColumn = event.target.closest('.nested-fields');
    if(inputColumn.dataset.newRecord == "true") {
      inputColumn.remove();
    } else {
      inputColumn.querySelector("input[name*='_destroy']").value = 1;
      inputColumn.style.display = 'none' ;
    }
  }
}
