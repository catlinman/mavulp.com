{
	title: "Site Launch"
	description: "We finally have an official website for Mavulp and its projects!"

	members: {
	  {id: "catlinman", name: "Catlinman", website: "https://twitter.catlinman.com"}
	}
}

# So, why the website? #

I've been working on the site over the last few days after it has been sitting on my todo list for about a month now. The main idea was to simply put have a place where projects and other development related and collaborative work could be easily showcased and maintained without the hassle of having a huge server setup or spinning up any extra resources. The site itself is managed entirely from the server side of things meaning there is no real outside access. Members of Mavulp have access to the remote backend so an open connection is not needed to do any work or maintenance on the site.

The way the site works is that there are a set of pages that are written by myself that give the base layout. Using input files in form of simple Markdown (.md) files, members can add new content with ease which is then filled into the base layouts. Currently the system still requires editing the base site script but I'm planning on making a workaround to keep things even easier to maintain. At the same time the index page could still use some extra helpers to make adding members and pages easier but I'll get on that when I have time. Right now I am just happy that the site is up and looks as I wanted it to.

If you want to look into the possibilities that can be thrown into posts and content here then I suggest checking out the formatting [guide page]($root/pages/formatting-guide) for more information. You can also find the source code for the entire page in the [Mavulp.com GitHub Repository](https://github.com/catlinman/mavulp.com).

One big point as with most websites that I personally write is to keep them rather lightweight. This always strongly depends on the system as to the degree that this is done but it is of course good practice to just keep file sizes small in general and cache images and such wherever possible. Since this site as of writing this post runs a Raspberry Pi in a local network with a limited upload speed I had to make sure to keep things optimized without degrading the visual quality of the page. This meant cutting a few corners here and there and relying on newer CSS filtering for some elements but in general the page should display rather well on a large range of devices and settings.

If you are wondering: the site depends on [Sitegen](https://github.com/leafo/sitegen/) which is required to build the pages. Additionally [Less.js](http://lesscss.org/), [CoffeeScript](http://coffeescript.org/) and [Pygments](http://pygments.org/) are used in development. Pretty neat!

The site is done in my opinion in terms that it is ready to be used. That's what really matters at this point. We might expand a feature or two later on when it is needed but for now the page is functional and ready to go!

That's it from me for now! Hope you keep an eye on Mavulp and it's projects! We're excited to see where we will take things!

*I'll see you on the internet!*
