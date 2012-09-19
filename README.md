# TKH Inline Editor

A simple, good inline HTML editor for Rails apps running Twitter Bootstrap.

History

I looked long and hard to find a very simple inline HTML editor enabling me to allow very few options but to easily add the tags/sections I really want. While building the tkh_cms gem suite my philosophy has been, whenever possible, to prefer my own imperfect and poorly tested gems which I understand fully rather that top class gems which I don't understand and which I can't hack at will. Unfortunately I don't have yet the chops to create my own editor yet so I had to do some research.

The one that fit my needs best was wysihtml5. Since I use twitter bootstrap in most of my projects I then looked at bootstrap-wysihtml5. Since my tkh_cms gem suite is built for Rails 3.2 and later, with its assets pipeline, I then looked at bootstrap-wysihtml5-rails. This one is wonderful but I still can't figure out how to build the toolbar exactly the way I want without touching the hard-coded sections.

I therefore cloned that latter gem and customized it to my exact needs. It would have been easier to just run a specific branch of the existing gem off github but unfortunately I need to incorporate the editor in my own gems and it's therefore impossible.

Primarily developed and customized for Ten Thousand Hours but we are happy to share if anybody finds it useful. It's meant primarily to be used with the tkh_cms gem suite but over time we want it to be used individually as well. The latter implementation will be accelerated if some issues and pull requests come in, denoting some interest out there.


## Installation

Add this line to your application's Gemfile:

    gem 'tkh_inline_editor', '~> 0.0'

Add it to your bundle:

    $ bundle

Bootstrap is not included, you need to add this yourself.


## Configuration

app/assets/stylesheets/application.css

``` css
*= require bootstrap-wysihtml5
```

Bootstrap-wysihtml5 depends on jquery and bootstrap-button. Make sure to require it in the manifest file.

``` javascript
//= require jquery            # Not included
//= require bootstrap-button  # Not included
```

Add necessary javascript(s) files to app/assets/javascripts/application.js

```javascript
//= require wysihtml5
//= require bootstrap-wysihtml5

or

//= require bootstrap-wysihtml5-all
```

You may need to restart your rails server.

## Using bootstrap-wysihtml5-rails

Just call wysihtml5() with any selector.

```html
<textarea id="some-textarea" placeholder="Enter text ..."></textarea>
	
<script type="text/javascript">
	$('#some-textarea').wysihtml5();
</script>
```


## Contributing

Pull requests for new features and bug fixes are welcome.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Create your failing tests based on the Test Unit framework.
4. Create your code which makes the tests pass.
5. Commit your changes (`git commit -am 'Added some feature'`)
6. Push to the branch (`git push origin my-new-feature`)
7. Create new Pull Request
