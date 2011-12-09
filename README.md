Vesper is still in alpha, so you'll have to build it from source.

[Download the repo](https://github.com/jarrodtaylor/vesper/downloads), uncompress and cd into your new directory.

Install the gem from souce:

    sudo rake install

Create a new Vesper web app:

    cd ~/Sites
    vesper create MyApp && cd MyApp

Run your new web app:

    rackup

[Visit your web app locally.](http://localhost:9292)

Don't forget to periodically pull updates and reinstall to get the latest version.