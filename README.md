# Picocss::Gem

`picocss-gem` is a **Ruby gem** that integrates [PicoCSS](https://picocss.com) into Ruby applications.
It works with **Rails**, **Bridgetown**, and **Sinatra**, providing:

* Automatic inclusion of PicoCSS assets
* Rails generators (base + theme + login template)
* Multi-framework support for Ruby apps

> Documentation also available in Portuguese: [Português](./README.pt-BR.md)

---

## 🌟 Features

* ✅ Rails, Sinatra, and Bridgetown support
* ✅ PicoCSS included and ready for production
* ✅ Easy setup and integration
* ✅ Generators for Rails (`bin/rails generate picocss:install`)
* ✅ Theme generators (`bin/rails generate picocss:install_<theme>`)
* ✅ Login template generator (`bin/rails generate picocss:template_login`)

---

## 💾 Installation

Add to your **Gemfile**:

```ruby
gem "picocss-gem", "~> 0.1.0"
```

Then run:

```bash
bundle install
```

Or install directly:

```bash
gem install picocss-gem
```

---

## 🛠️ Usage

### Rails

#### Default PicoCSS

1. Add PicoCSS to your layout:

```erb
<%= stylesheet_link_tag "pico.min", media: "all" %>
```

2. Copy the CSS to your project:

```bash
bin/rails generate picocss:install
```

3. Restart your server:

```bash
rails server
```

---

#### 🎨 Install a Theme

```bash
bin/rails generate picocss:install_<color>
```

| Theme   | Color                                                                                                       |
| ------- | ----------------------------------------------------------------------------------------------------------- |
| red     | <span style="background-color:red; color:white; padding:2px 6px; border-radius:4px;">__</span>             |
| pink    | <span style="background-color:pink; color:black; padding:2px 6px; border-radius:4px;">__</span>           |
| fuchsia | <span style="background-color:fuchsia; color:white; padding:2px 6px; border-radius:4px;">__</span>     |
| purple  | <span style="background-color:purple; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| violet  | <span style="background-color:violet; color:black; padding:2px 6px; border-radius:4px;">__</span>       |
| indigo  | <span style="background-color:indigo; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| blue    | <span style="background-color:blue; color:white; padding:2px 6px; border-radius:4px;">__</span>           |
| cyan    | <span style="background-color:cyan; color:black; padding:2px 6px; border-radius:4px;">__</span>           |
| jade    | <span style="background-color:mediumseagreen; color:white; padding:2px 6px; border-radius:4px;">__</span> |
| green   | <span style="background-color:green; color:white; padding:2px 6px; border-radius:4px;">__</span>         |
| lime    | <span style="background-color:lime; color:black; padding:2px 6px; border-radius:4px;">__</span>           |
| yellow  | <span style="background-color:yellow; color:black; padding:2px 6px; border-radius:4px;">__</span>       |
| pumpkin | <span style="background-color:darkorange; color:white; padding:2px 6px; border-radius:4px;">__</span>  |
| orange  | <span style="background-color:orange; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| sand    | <span style="background-color:sandybrown; color:black; padding:2px 6px; border-radius:4px;">__</span>     |
| grey    | <span style="background-color:grey; color:white; padding:2px 6px; border-radius:4px;">__</span>           |
| zinc    | <span style="background-color:darkgray; color:white; padding:2px 6px; border-radius:4px;">__</span>       |
| slate   | <span style="background-color:slategray; color:white; padding:2px 6px; border-radius:4px;">__</span>     |

Example:

```bash
bin/rails generate picocss:install_blue
```

---

#### 👤 Login Template Generator

```bash
bin/rails generate picocss:template_login
```

This will copy the login template to:

```
app/views/sessions/new.html.erb
```

Template highlights:

* Centered form with vertical alignment
* Fields: Email, Password, "Remember me" checkbox
* Dark background with contrasting buttons
* Fully responsive container

```erb
<main class="container" style="background-color:#111; height:100vh; display:flex; justify-content:center; align-items:center;">
  <form method="post" action="/login" style="width:300px;">
    <h1 style="color:white;">Login</h1>
    <label>Email</label>
    <input type="email" required>
    <label>Password</label>
    <input type="password" required>
    <div>
      <input type="checkbox">
      <label>Remember me</label>
    </div>
    <button type="submit">Login</button>
  </form>
</main>
```

---

### Sinatra

```ruby
require "sinatra"
require "picocss"

register Picocss::Sinatra
```

```html
<link rel="stylesheet" href="/assets/stylesheets/pico.min.css" />
```

```bash
ruby app.rb
```

---

### Bridgetown

```ruby
gem "picocss-gem", "~> 0.1.0"
```

CSS Copy automatically to:

```
output/assets/css/pico.min.css
```

Include in layout:

```html
<link rel="stylesheet" href="/assets/css/pico.min.css" />
```

Build and serve:

```bash
bridgetown build
bridgetown serve
```

---

## ⚡ Generators Summary

| Command                                      | Description                                    |
| -------------------------------------------- | ---------------------------------------------- |
| `bin/rails generate picocss:install`         | Copy `pico.min.css`                          |
| `bin/rails generate picocss:install_<theme>` | Copy a themed CSS (e.g. `pico.blue.min.css`) |
| `bin/rails generate picocss:template_login`  | Copy login template                          |

---

## 🧪 Development

```bash
bin/setup
rake spec
bin/console
bundle exec rake install
bundle exec rake release
```

---

## 📝 License

MIT License. See [LICENSE](./LICENSE.txt)