import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      enableTime: true,
      mode: "range",
      minDate: "today",
      dateFormat: "d-m-Y",

    });

    flatpickr(this.element,{
      "plugins": [new rangePlugin({ input: "#secondRangeInput"})]
    });

  }
}
