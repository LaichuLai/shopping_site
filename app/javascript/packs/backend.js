
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"

import "styles/backend"
import "styles/shared"

import "scripts/backend"
import "scripts/shared"
require("trix")
require("@rails/actiontext")