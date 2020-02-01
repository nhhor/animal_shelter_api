# Application: **Animal Shelter API**

##### By Noah Horwitz

###### _First published 2019-01-31_

## Description:
This application was made as part of a coding project for Noah Horwitz, a student at _[Epicodus](http://www.epicodus.com)_, which is a vocational school for technology careers based in Portland, OR. The project is designed to create an Ruby on Rails API for an animal shelter. The API will list the available cats and dogs at the shelter.

## Setup/Installation instructions:
* Click the `Clone or download` button and copy the link.
* Open your terminal application (assuming **GIT Scripts** and **node.js** (with NPM), **psql**, **Ruby 2.5.7**, and **Rails 5.2.4** have been installed on your system) and type `git clone (link)`.
* In the terminal using the `cd`... command, navigate to the newly created repository and run `bundle install`.
* In the terminal type `rake db:create`
* Then the terminal type `rake db:seed`
* Next in the terminal run `rails s`
* Finally, in a browser navigate to `localhost:3000`

## Technologies Used
 * `Ruby`
  * -v 2.5.7
 * `Rails`
  * -v 5.2.4.1
 * `SQL`
  * `psql`


## Known Bugs
* None


## API DOCUMENTATION:
|Endpoint Title|URL|Method|Header Params|Body Params|Response|Notes|
|-|-|-|-|-|-|-|
|Show ALL Animals|/animals ####OR#### /|`GET`|*n/a*|*n/a*|Success = 200 / Failure = *Could not get any response* server likely down.|Rails route; root to: **animals#index**|
|Add an animal|/animals|`POST`|*n/a*|`:name`, `:animal_type`, `:breed`, `:sex`, `:color`, `:birthday`, `:notes`|Success = 201 *created* / Failure = 404 *Not Found*|Rails route: **animals#create** `:name` is required. `birthday` is required to be in the format: *YYYY-MM-DD*|
|Show an animal|/animals/`:id`|`GET`|`:id`|*n/a*|Success = 200 / Failure = 404 *Not Found*|Rails route: **animals#show**|
|Update an animal|/animals/`:id`|`put`|`:id`|**Options:** `:name`, `:animal_type`, `:breed`, `:sex`, `:color`, `:birthday`, `:notes`|Success = 200 / Failure = 404|Rails route: **animals#update** `birthday` is required to be in the format: *YYYY-MM-DD*|
|Remove an animal|/animals/`:id`|`delete`|`:id`|*n/a*|Success = 200 / Failure = 404 *Not Found*|Rails route: **animals#destroy**|

## References

## Support and contact details
Contact [example@sample.com](mailto:example@sample.com)

## License
_This This repository is copyright (C) 2020 by Noah Horwitz and licensed under the GNU General Public License v3.0 [gpl-3.0](https://www.gnu.org/licenses/gpl-3.0.en.html)_.
