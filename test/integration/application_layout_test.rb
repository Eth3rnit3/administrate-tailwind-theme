require 'application_system_test_case'

class ApplicationLayoutTest < ApplicationSystemTestCase
  test 'tailwind css and js tags are present' do
    visit admin_root_path

    assert_selector "link[href*='tailwind']", visible: false, count: 2
    assert_selector "script[src*='tailwind']", visible: false, count: 1
  end

  test 'navigation sidebar uses Tailwind classes' do
    visit admin_root_path

    assert_selector 'nav.bg-white.shadow.w-64.py-6.px-4', count: 1
  end

  test 'header uses Tailwind classes' do
    visit admin_root_path

    assert_selector 'header.bg-white.shadow', count: 1
    assert_selector 'h1.text-3xl.font-bold.leading-tight.text-gray-900', text: 'Messages'
  end

  test 'search form uses Tailwind classes' do
    visit admin_root_path

    assert_selector 'form.relative', count: 1
    assert_selector 'input[type="search"]', count: 1
  end

  test 'messages table uses Tailwind classes' do
    visit admin_root_path

    assert_selector 'table', count: 1
    within 'thead' do
      assert_selector 'th', count: 6
    end
    within 'tbody' do
      assert_selector 'tr', minimum: 1
    end
  end

  test 'pagination uses Tailwind classes' do
    visit admin_root_path

    assert_selector 'nav.pagination', count: 1
    assert_selector 'a[rel="next"]', text: 'Next ›'
    assert_selector 'a[href*="_page=3"]', text: 'Last »'
  end
end
