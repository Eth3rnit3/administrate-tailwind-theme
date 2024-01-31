# How to Upgrade to Include Flowbite

Upgrading from a version prior to 0.0.4 to include Flowbite in your project involves several key steps. Follow this guide to ensure a smooth transition and to leverage the enhancements offered by Flowbite within your administrate-tailwind-theme setup.

## Step 1: Upgrade the Gem

First, ensure that you update the `administrate-tailwind-theme` gem to the latest version. Modify your Gemfile to specify the new version:

```ruby
gem 'administrate-tailwind-theme', '~> 0.4.0'
```

Then, run `bundle update administrate-tailwind-theme` to update the gem in your project.

## Step 2: Install Flowbite

Flowbite must be installed manually using npm to ensure it's properly integrated into your project. Navigate to the root of your project and run the following command:

```bash
npm install flowbite --save
```

This command adds Flowbite to your project's dependencies, ensuring you have the latest version compatible with the administrate-tailwind-theme.

## Step 3: Update Tailwind Configuration

Modify your `tailwind.config.js` file to include the necessary configurations for Flowbite. You should add Flowbite as a plugin in your Tailwind configuration. Here is an example modification:

```javascript
module.exports = {
  // Existing configuration...
  content: [
    // Other content...
    './node_modules/flowbite/**/*.js',
  ],
  plugins: [
    // Other plugins...
    require('flowbite/plugin')
  ],
};
```

Ensure you merge this snippet with your existing Tailwind configuration, paying special attention not to overwrite any existing settings.

## Step 4: Enable Flowbite in the Initializer

After installing the gem, an initializer file is generated for the administrate-tailwind-theme. You'll need to modify this initializer to enable Flowbite within your project. Open the initializer (typically found at `config/initializers/administrate_tailwind_theme.rb`) and add or modify the following line:

```ruby
AdministrateTailwindTheme.config.flowbite = true
```

This line ensures that Flowbite is enabled and that the administrate-tailwind-theme will utilize its components and styling.

## Final Steps
```shell
./bin/dev
```

After completing these steps, ensure that you test your application thoroughly to confirm that the upgrade has been successful and that Flowbite components are correctly integrated and functioning as expected.