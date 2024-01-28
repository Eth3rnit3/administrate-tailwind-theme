# administrate_tailwind_theme Gem

## Introduction
`administrate_tailwind_theme` is a custom theme gem for the [Administrate](https://github.com/thoughtbot/administrate) gem, utilizing the [Tailwind CSS](https://tailwindcss.com/) framework. This gem revamps all views to use Tailwind CSS classes, enhancing the visual aesthetics and responsiveness of your Administrate dashboard. It also introduces additional fields like BooleanEmoji and CountryEmoji for a richer admin interface.

### Features
- **Tailwind CSS Integration:** Complete rewrite of Administrate component classes to use Tailwind CSS.
- **Additional Fields:** Adds BooleanEmoji and CountryEmoji fields to your Administrate dashboard.
- **Easy Setup:** Automatic initializer creation and configuration.
- **Rails 7, Rails-Tailwind, and Administrate Compatibility:** Seamlessly works with the latest versions of these key gems.

## Installation
### Prerequisites
- Ruby version 2.6.0 or higher.
- Rails 7.1 or higher.
- Administrate 0.15 or higher.
- Tailwind CSS Rails 2.0 or higher.

### Setup
1. Add this line to your application's Gemfile:

   ```ruby
   gem 'administrate_tailwind_theme'
   ```

2. Execute:

   ```
   bundle install
   ```

3. After installing the gem, run the installer:

   ```
   rails generate administrate:tailwind:install
   ```

   This will create an initializer and modify your `tailwind.config.js` to ensure proper compilation of the gem's view styles.

## Usage

Once installed, `administrate_tailwind_theme` automatically overrides the default Administrate views. Your dashboard will now use Tailwind CSS styles. You can further customize the styles as per your application's needs.

### Custom Fields
- **Boolean Field:** Use it to display boolean values in a more intuitive way.
- **Country Emoji Field:** Show country codes with their corresponding emoji flags for a visual representation.

## Configuration

After installation, you can modify the initializer created by the `administrate-tailwind:install` generator to fine-tune the theme settings.

For modifying `tailwind.config.js`, we've followed the approach suggested in this [Stack Overflow comment](https://stackoverflow.com/a/74737193/8213274). Even though it might not be the most elegant solution, it's straightforward and works effectively.

Also, ensure your `tailwind.config.js` includes the styles from this gem for proper compilation.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or open issues on our [GitHub repository](https://github.com/eth3rnit3/administrate_tailwind_theme).

## License

This gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## About

This gem is maintained by Eth3rnit3. Feel free to contact at [eth3rnit3@gmail.com](mailto:eth3rnit3@gmail.com) for any queries or feedback.