import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "template", "link" ]

  add_stock(event) {
    event.preventDefault();

    let content = this.templateTarget.innerHTML.replace(/ADD_STOCK/g, new Date().getTime());
    this.linkTarget.insertAdjacentHTML('beforebegin', content);
  }

  connect() {
  }
}
