# README

To migrate database to heroku:
> heroku run rails db:migrate

# Submission Details #
* Student Names: Clinton Pham (s3605044), Sean Tan (s3806690). 
* Contribution: 50/50
* Highest Level Attempted: 90+ Level
* Time Sheet:
* Heroku Demployment URL: https://rad2021-s3605044-s3806690.herokuapp.com/
* Git Repository: https://github.com/sean8900/RAD2021_s3605044_s3806690
* 
### Last Heroky Deployment Log ###
2021-05-23T05:07:10.262035+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/executor.rb:12:in `call'
2021-05-23T05:07:10.262036+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/static.rb:136:in `call'
2021-05-23T05:07:10.262036+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/sendfile.rb:110:in `call'
2021-05-23T05:07:10.262036+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/engine.rb:522:in `call'
2021-05-23T05:07:10.262037+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/configuration.rb:227:in `call'
2021-05-23T05:07:10.262037+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:706:in `handle_request'
2021-05-23T05:07:10.262037+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:476:in `process_client'
2021-05-23T05:07:10.262037+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:334:in `block in run'
2021-05-23T05:07:10.262038+00:00 app[web.1]: [0269dcb9-4753-4730-8cfa-b96cb97a5d51] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/thread_pool.rb:135:in `block in spawn_thread'
2021-05-23T05:07:10.839776+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=rad2021-s3605044-s3806690.herokuapp.com request_id=c07fccd4-a273-4f91-b2cd-62a627a885b4 fwd="121.200.4.125" dyno=web.1 connect=0ms service=1ms status=304 bytes=48 protocol=https
2021-05-23T05:10:11.746985+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=rad2021-s3605044-s3806690.herokuapp.com request_id=742d9bd7-7227-402f-8ccc-488880fb62dc fwd="121.200.4.125" dyno=web.1 connect=0ms service=1ms status=304 bytes=48 protocol=https
2021-05-23T05:10:18.812248+00:00 heroku[router]: at=info method=GET path="/seeAllProducts" host=rad2021-s3605044-s3806690.herokuapp.com request_id=0217954b-63fb-4547-b58e-dbf81fff1b12 fwd="121.200.4.125" dyno=web.1 connect=0ms service=18ms status=200 bytes=12522 protocol=https
2021-05-23T05:10:18.796779+00:00 app[web.1]: I, [2021-05-23T05:10:18.796679 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12] Started GET "/seeAllProducts" for 121.200.4.125 at 2021-05-23 05:10:18 +0000
2021-05-23T05:10:18.797770+00:00 app[web.1]: I, [2021-05-23T05:10:18.797690 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12] Processing by ProductsController#seeAllProducts as HTML
2021-05-23T05:10:18.798330+00:00 app[web.1]: I, [2021-05-23T05:10:18.798249 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12]   Rendering products/seeAllProducts.html.erb within layouts/application
2021-05-23T05:10:18.800262+00:00 app[web.1]: D, [2021-05-23T05:10:18.800176 #4] DEBUG -- : [0217954b-63fb-4547-b58e-dbf81fff1b12]   [1m[36mProduct Load (0.8ms)[0m  [1m[34mSELECT "products".* FROM "products"[0m
2021-05-23T05:10:18.804731+00:00 app[web.1]: I, [2021-05-23T05:10:18.804647 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12]   Rendered products/seeAllProducts.html.erb within layouts/application (6.3ms)
2021-05-23T05:10:18.807147+00:00 app[web.1]: D, [2021-05-23T05:10:18.806498 #4] DEBUG -- : [0217954b-63fb-4547-b58e-dbf81fff1b12]   [1m[36mAdmin Load (0.7ms)[0m  [1m[34mSELECT "admins".* FROM "admins"[0m
2021-05-23T05:10:18.807149+00:00 app[web.1]: I, [2021-05-23T05:10:18.807012 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12]   Rendered home/_header.html.erb (1.8ms)
2021-05-23T05:10:18.807603+00:00 app[web.1]: I, [2021-05-23T05:10:18.807518 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12]   Rendered home/_footer.html.erb (0.3ms)
2021-05-23T05:10:18.807929+00:00 app[web.1]: I, [2021-05-23T05:10:18.807841 #4]  INFO -- : [0217954b-63fb-4547-b58e-dbf81fff1b12] Completed 200 OK in 10ms (Views: 8.2ms | ActiveRecord: 1.5ms)
2021-05-23T05:10:20.120466+00:00 app[web.1]: I, [2021-05-23T05:10:20.120343 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1] Started GET "/filter" for 121.200.4.125 at 2021-05-23 05:10:20 +0000
2021-05-23T05:10:20.135347+00:00 app[web.1]: I, [2021-05-23T05:10:20.135236 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1] Processing by ProductsController#filter as HTML
2021-05-23T05:10:20.137791+00:00 app[web.1]: I, [2021-05-23T05:10:20.137710 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1]   Rendering products/filter.html.erb within layouts/application
2021-05-23T05:10:20.141319+00:00 app[web.1]: I, [2021-05-23T05:10:20.141228 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1]   Rendered products/filter.html.erb within layouts/application (1.6ms)
2021-05-23T05:10:20.149255+00:00 app[web.1]: D, [2021-05-23T05:10:20.149149 #4] DEBUG -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1]   [1m[36mAdmin Load (1.7ms)[0m  [1m[34mSELECT "admins".* FROM "admins"[0m
2021-05-23T05:10:20.149913+00:00 app[web.1]: I, [2021-05-23T05:10:20.149826 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1]   Rendered home/_header.html.erb (7.7ms)
2021-05-23T05:10:20.150811+00:00 app[web.1]: I, [2021-05-23T05:10:20.150723 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1]   Rendered home/_footer.html.erb (0.5ms)
2021-05-23T05:10:20.151156+00:00 app[web.1]: I, [2021-05-23T05:10:20.151079 #4]  INFO -- : [be810e4f-e0bb-414c-866a-b234c1a32cf1] Completed 200 OK in 15ms (Views: 11.9ms | ActiveRecord: 1.7ms)
2021-05-23T05:10:20.152490+00:00 heroku[router]: at=info method=GET path="/filter" host=rad2021-s3605044-s3806690.herokuapp.com request_id=be810e4f-e0bb-414c-866a-b234c1a32cf1 fwd="121.200.4.125" dyno=web.1 connect=0ms service=37ms status=200 bytes=12331 protocol=https
2021-05-23T05:10:23.742527+00:00 heroku[router]: at=info method=GET path="/seeAllProducts?utf8=%E2%9C%93&name%5B%5D=shirt&name%5B%5D=pants&name%5B%5D=shoe&name%5B%5D=hoodie&category%5B%5D=men&category%5B%5D=women&category%5B%5D=kids&color%5B%5D=red&color%5B%5D=blue&color%5B%5D=black&color%5B%5D=white&color%5B%5D=orange&color%5B%5D=green&commit=Filter" host=rad2021-s3605044-s3806690.herokuapp.com request_id=f781ff7b-1a22-4566-be50-e16d2e20cc1b fwd="121.200.4.125" dyno=web.1 connect=0ms service=20ms status=200 bytes=12513 protocol=https
2021-05-23T05:10:23.725595+00:00 app[web.1]: I, [2021-05-23T05:10:23.725483 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b] Started GET "/seeAllProducts?utf8=%E2%9C%93&name%5B%5D=shirt&name%5B%5D=pants&name%5B%5D=shoe&name%5B%5D=hoodie&category%5B%5D=men&category%5B%5D=women&category%5B%5D=kids&color%5B%5D=red&color%5B%5D=blue&color%5B%5D=black&color%5B%5D=white&color%5B%5D=orange&color%5B%5D=green&commit=Filter" for 121.200.4.125 at 2021-05-23 05:10:23 +0000
2021-05-23T05:10:23.727279+00:00 app[web.1]: I, [2021-05-23T05:10:23.727216 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b] Processing by ProductsController#seeAllProducts as HTML
2021-05-23T05:10:23.727436+00:00 app[web.1]: I, [2021-05-23T05:10:23.727379 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   Parameters: {"utf8"=>"✓", "name"=>["shirt", "pants", "shoe", "hoodie"], "category"=>["men", "women", "kids"], "color"=>["red", "blue", "black", "white", "orange", "green"], "commit"=>"Filter"}
2021-05-23T05:10:23.731759+00:00 app[web.1]: I, [2021-05-23T05:10:23.731698 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   Rendering products/seeAllProducts.html.erb within layouts/application
2021-05-23T05:10:23.733867+00:00 app[web.1]: D, [2021-05-23T05:10:23.733799 #4] DEBUG -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   [1m[36mProduct Load (1.4ms)[0m  [1m[34mSELECT "products".* FROM "products" WHERE ((((((((category LIKE '% men%') OR (category LIKE '% women%')) OR (category LIKE '% kids%')) AND (color LIKE '%red%') OR (color LIKE '%blue%')) OR (color LIKE '%black%')) OR (color LIKE '%white%')) OR (color LIKE '%orange%')) OR (color LIKE '%green%'))[0m
2021-05-23T05:10:23.738102+00:00 app[web.1]: I, [2021-05-23T05:10:23.738037 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   Rendered products/seeAllProducts.html.erb within layouts/application (6.2ms)
2021-05-23T05:10:23.739932+00:00 app[web.1]: D, [2021-05-23T05:10:23.739866 #4] DEBUG -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   [1m[36mAdmin Load (0.7ms)[0m  [1m[34mSELECT "admins".* FROM "admins"[0m
2021-05-23T05:10:23.740256+00:00 app[web.1]: I, [2021-05-23T05:10:23.740203 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   Rendered home/_header.html.erb (1.7ms)
2021-05-23T05:10:23.741741+00:00 app[web.1]: I, [2021-05-23T05:10:23.741680 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b]   Rendered home/_footer.html.erb (1.2ms)
2021-05-23T05:10:23.742040+00:00 app[web.1]: I, [2021-05-23T05:10:23.741983 #4]  INFO -- : [f781ff7b-1a22-4566-be50-e16d2e20cc1b] Completed 200 OK in 14ms (Views: 8.4ms | ActiveRecord: 2.1ms)
2021-05-23T05:10:24.261851+00:00 heroku[router]: at=info method=GET path="/search" host=rad2021-s3605044-s3806690.herokuapp.com request_id=4bc78a3e-ba9a-4044-867d-3544b9691ae4 fwd="121.200.4.125" dyno=web.1 connect=0ms service=9ms status=404 bytes=219 protocol=https
2021-05-23T05:10:24.256085+00:00 app[web.1]: I, [2021-05-23T05:10:24.255980 #4]  INFO -- : [4bc78a3e-ba9a-4044-867d-3544b9691ae4] Started GET "/search" for 121.200.4.125 at 2021-05-23 05:10:24 +0000
2021-05-23T05:10:24.262769+00:00 app[web.1]: F, [2021-05-23T05:10:24.262709 #4] FATAL -- : [4bc78a3e-ba9a-4044-867d-3544b9691ae4]   
2021-05-23T05:10:24.262859+00:00 app[web.1]: F, [2021-05-23T05:10:24.262811 #4] FATAL -- : [4bc78a3e-ba9a-4044-867d-3544b9691ae4] ActionController::RoutingError (uninitialized constant SearchController
2021-05-23T05:10:24.262860+00:00 app[web.1]: Did you mean?  UsersController):
2021-05-23T05:10:24.262979+00:00 app[web.1]: F, [2021-05-23T05:10:24.262906 #4] FATAL -- : [4bc78a3e-ba9a-4044-867d-3544b9691ae4]   
2021-05-23T05:10:24.263080+00:00 app[web.1]: F, [2021-05-23T05:10:24.263002 #4] FATAL -- : [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:268:in `const_get'
2021-05-23T05:10:24.263082+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:268:in `block in constantize'
2021-05-23T05:10:24.263082+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:266:in `each'
2021-05-23T05:10:24.263083+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:266:in `inject'
2021-05-23T05:10:24.263083+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:266:in `constantize'
2021-05-23T05:10:24.263090+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/dependencies.rb:584:in `get'
2021-05-23T05:10:24.263091+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/dependencies.rb:615:in `constantize'
2021-05-23T05:10:24.263091+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/http/request.rb:81:in `controller_class'
2021-05-23T05:10:24.263091+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/routing/route_set.rb:44:in `controller'
2021-05-23T05:10:24.263092+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/routing/route_set.rb:30:in `serve'
2021-05-23T05:10:24.263092+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/journey/router.rb:39:in `block in serve'
2021-05-23T05:10:24.263092+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/journey/router.rb:26:in `each'
2021-05-23T05:10:24.263093+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/journey/router.rb:26:in `serve'
2021-05-23T05:10:24.263093+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/routing/route_set.rb:727:in `call'
2021-05-23T05:10:24.263093+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/omniauth-2.0.4/lib/omniauth/strategy.rb:202:in `call!'
2021-05-23T05:10:24.263094+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/omniauth-2.0.4/lib/omniauth/strategy.rb:169:in `call'
2021-05-23T05:10:24.263094+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/omniauth-2.0.4/lib/omniauth/builder.rb:45:in `call'
2021-05-23T05:10:24.263097+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/etag.rb:27:in `call'
2021-05-23T05:10:24.263100+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/conditional_get.rb:27:in `call'
2021-05-23T05:10:24.263100+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/head.rb:12:in `call'
2021-05-23T05:10:24.263100+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/session/abstract/id.rb:266:in `context'
2021-05-23T05:10:24.263101+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/session/abstract/id.rb:260:in `call'
2021-05-23T05:10:24.263101+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/cookies.rb:613:in `call'
2021-05-23T05:10:24.263101+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/callbacks.rb:38:in `block in call'
2021-05-23T05:10:24.263102+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/callbacks.rb:97:in `__run_callbacks__'
2021-05-23T05:10:24.263102+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/callbacks.rb:750:in `_run_call_callbacks'
2021-05-23T05:10:24.263102+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/callbacks.rb:90:in `run_callbacks'
2021-05-23T05:10:24.263103+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/callbacks.rb:36:in `call'
2021-05-23T05:10:24.263103+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
2021-05-23T05:10:24.263110+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/debug_exceptions.rb:49:in `call'
2021-05-23T05:10:24.263110+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
2021-05-23T05:10:24.263111+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/rack/logger.rb:36:in `call_app'
2021-05-23T05:10:24.263111+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/rack/logger.rb:24:in `block in call'
2021-05-23T05:10:24.263112+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/tagged_logging.rb:69:in `block in tagged'
2021-05-23T05:10:24.263112+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/tagged_logging.rb:26:in `tagged'
2021-05-23T05:10:24.263112+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/tagged_logging.rb:69:in `tagged'
2021-05-23T05:10:24.263113+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/rack/logger.rb:24:in `call'
2021-05-23T05:10:24.263113+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/request_id.rb:24:in `call'
2021-05-23T05:10:24.263113+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/method_override.rb:24:in `call'
2021-05-23T05:10:24.263114+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/runtime.rb:22:in `call'
2021-05-23T05:10:24.263114+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/cache/strategy/local_cache_middleware.rb:28:in `call'
2021-05-23T05:10:24.263115+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/executor.rb:12:in `call'
2021-05-23T05:10:24.263115+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/static.rb:136:in `call'
2021-05-23T05:10:24.263115+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/sendfile.rb:110:in `call'
2021-05-23T05:10:24.263115+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/engine.rb:522:in `call'
2021-05-23T05:10:24.263116+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/configuration.rb:227:in `call'
2021-05-23T05:10:24.263116+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:706:in `handle_request'
2021-05-23T05:10:24.263116+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:476:in `process_client'
2021-05-23T05:10:24.263117+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:334:in `block in run'
2021-05-23T05:10:24.263117+00:00 app[web.1]: [4bc78a3e-ba9a-4044-867d-3544b9691ae4] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/thread_pool.rb:135:in `block in spawn_thread'
2021-05-23T05:10:25.529096+00:00 heroku[router]: at=info method=GET path="/filter" host=rad2021-s3605044-s3806690.herokuapp.com request_id=d40c0e40-f6ce-4656-9a39-11c9d6b78dc8 fwd="121.200.4.125" dyno=web.1 connect=0ms service=14ms status=200 bytes=12650 protocol=https
2021-05-23T05:10:25.519184+00:00 app[web.1]: I, [2021-05-23T05:10:25.519069 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8] Started GET "/filter" for 121.200.4.125 at 2021-05-23 05:10:25 +0000
2021-05-23T05:10:25.521191+00:00 app[web.1]: I, [2021-05-23T05:10:25.521109 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8] Processing by ProductsController#filter as HTML
2021-05-23T05:10:25.522200+00:00 app[web.1]: I, [2021-05-23T05:10:25.522114 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8]   Rendering products/filter.html.erb within layouts/application
2021-05-23T05:10:25.522906+00:00 app[web.1]: I, [2021-05-23T05:10:25.522826 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8]   Rendered products/filter.html.erb within layouts/application (0.6ms)
2021-05-23T05:10:25.526450+00:00 app[web.1]: D, [2021-05-23T05:10:25.526369 #4] DEBUG -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8]   [1m[36mAdmin Load (0.7ms)[0m  [1m[34mSELECT "admins".* FROM "admins"[0m
2021-05-23T05:10:25.527112+00:00 app[web.1]: I, [2021-05-23T05:10:25.527037 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8]   Rendered home/_header.html.erb (3.4ms)
2021-05-23T05:10:25.528050+00:00 app[web.1]: I, [2021-05-23T05:10:25.527971 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8]   Rendered home/_footer.html.erb (0.6ms)
2021-05-23T05:10:25.528411+00:00 app[web.1]: I, [2021-05-23T05:10:25.528332 #4]  INFO -- : [d40c0e40-f6ce-4656-9a39-11c9d6b78dc8] Completed 200 OK in 7ms (Views: 5.8ms | ActiveRecord: 0.7ms)
2021-05-23T05:10:27.425321+00:00 app[web.1]: I, [2021-05-23T05:10:27.425209 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9] Started GET "/seeAllProducts?utf8=%E2%9C%93&name%5B%5D=pants&commit=Filter" for 121.200.4.125 at 2021-05-23 05:10:27 +0000
2021-05-23T05:10:27.426503+00:00 app[web.1]: I, [2021-05-23T05:10:27.426432 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9] Processing by ProductsController#seeAllProducts as HTML
2021-05-23T05:10:27.426584+00:00 app[web.1]: I, [2021-05-23T05:10:27.426520 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   Parameters: {"utf8"=>"✓", "name"=>["pants"], "commit"=>"Filter"}
2021-05-23T05:10:27.429240+00:00 app[web.1]: I, [2021-05-23T05:10:27.429161 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   Rendering products/seeAllProducts.html.erb within layouts/application
2021-05-23T05:10:27.432154+00:00 app[web.1]: D, [2021-05-23T05:10:27.432089 #4] DEBUG -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   [1m[36mProduct Load (2.2ms)[0m  [1m[34mSELECT "products".* FROM "products" WHERE (lower(name) LIKE '%pants%')[0m
2021-05-23T05:10:27.433234+00:00 app[web.1]: I, [2021-05-23T05:10:27.433163 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   Rendered products/seeAllProducts.html.erb within layouts/application (3.8ms)
2021-05-23T05:10:27.437518+00:00 app[web.1]: D, [2021-05-23T05:10:27.437439 #4] DEBUG -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   [1m[36mAdmin Load (0.9ms)[0m  [1m[34mSELECT "admins".* FROM "admins"[0m
2021-05-23T05:10:27.437967+00:00 app[web.1]: I, [2021-05-23T05:10:27.437889 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   Rendered home/_header.html.erb (2.5ms)
2021-05-23T05:10:27.438498+00:00 app[web.1]: I, [2021-05-23T05:10:27.438430 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9]   Rendered home/_footer.html.erb (0.3ms)
2021-05-23T05:10:27.438743+00:00 app[web.1]: I, [2021-05-23T05:10:27.438667 #4]  INFO -- : [5ac8733d-19d9-4d9d-ad58-e9a08e4067d9] Completed 200 OK in 12ms (Views: 6.8ms | ActiveRecord: 3.1ms)
2021-05-23T05:10:27.438230+00:00 heroku[router]: at=info method=GET path="/seeAllProducts?utf8=%E2%9C%93&name%5B%5D=pants&commit=Filter" host=rad2021-s3605044-s3806690.herokuapp.com request_id=5ac8733d-19d9-4d9d-ad58-e9a08e4067d9 fwd="121.200.4.125" dyno=web.1 connect=1ms service=17ms status=200 bytes=7754 protocol=https
2021-05-23T05:10:27.833572+00:00 heroku[router]: at=info method=GET path="/search" host=rad2021-s3605044-s3806690.herokuapp.com request_id=7fb26b8f-1f7e-4bea-aea9-1dbbec908429 fwd="121.200.4.125" dyno=web.1 connect=0ms service=11ms status=404 bytes=219 protocol=https
2021-05-23T05:10:27.824991+00:00 app[web.1]: I, [2021-05-23T05:10:27.824887 #4]  INFO -- : [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] Started GET "/search" for 121.200.4.125 at 2021-05-23 05:10:27 +0000
2021-05-23T05:10:27.834281+00:00 app[web.1]: F, [2021-05-23T05:10:27.834208 #4] FATAL -- : [7fb26b8f-1f7e-4bea-aea9-1dbbec908429]   
2021-05-23T05:10:27.834347+00:00 app[web.1]: F, [2021-05-23T05:10:27.834286 #4] FATAL -- : [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] ActionController::RoutingError (uninitialized constant SearchController
2021-05-23T05:10:27.834348+00:00 app[web.1]: Did you mean?  UsersController):
2021-05-23T05:10:27.834404+00:00 app[web.1]: F, [2021-05-23T05:10:27.834347 #4] FATAL -- : [7fb26b8f-1f7e-4bea-aea9-1dbbec908429]   
2021-05-23T05:10:27.834488+00:00 app[web.1]: F, [2021-05-23T05:10:27.834426 #4] FATAL -- : [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:268:in `const_get'
2021-05-23T05:10:27.834489+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:268:in `block in constantize'
2021-05-23T05:10:27.834489+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:266:in `each'
2021-05-23T05:10:27.834490+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:266:in `inject'
2021-05-23T05:10:27.834490+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/inflector/methods.rb:266:in `constantize'
2021-05-23T05:10:27.834491+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/dependencies.rb:584:in `get'
2021-05-23T05:10:27.834491+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/dependencies.rb:615:in `constantize'
2021-05-23T05:10:27.834492+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/http/request.rb:81:in `controller_class'
2021-05-23T05:10:27.834492+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/routing/route_set.rb:44:in `controller'
2021-05-23T05:10:27.834493+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/routing/route_set.rb:30:in `serve'
2021-05-23T05:10:27.834493+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/journey/router.rb:39:in `block in serve'
2021-05-23T05:10:27.834494+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/journey/router.rb:26:in `each'
2021-05-23T05:10:27.834494+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/journey/router.rb:26:in `serve'
2021-05-23T05:10:27.834494+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/routing/route_set.rb:727:in `call'
2021-05-23T05:10:27.834495+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/omniauth-2.0.4/lib/omniauth/strategy.rb:202:in `call!'
2021-05-23T05:10:27.834495+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/omniauth-2.0.4/lib/omniauth/strategy.rb:169:in `call'
2021-05-23T05:10:27.834496+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/omniauth-2.0.4/lib/omniauth/builder.rb:45:in `call'
2021-05-23T05:10:27.834496+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/etag.rb:27:in `call'
2021-05-23T05:10:27.834497+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/conditional_get.rb:27:in `call'
2021-05-23T05:10:27.834497+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/head.rb:12:in `call'
2021-05-23T05:10:27.834498+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/session/abstract/id.rb:266:in `context'
2021-05-23T05:10:27.834498+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/session/abstract/id.rb:260:in `call'
2021-05-23T05:10:27.834498+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/cookies.rb:613:in `call'
2021-05-23T05:10:27.834499+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/callbacks.rb:38:in `block in call'
2021-05-23T05:10:27.834499+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/callbacks.rb:97:in `__run_callbacks__'
2021-05-23T05:10:27.834500+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/callbacks.rb:750:in `_run_call_callbacks'
2021-05-23T05:10:27.834500+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/callbacks.rb:90:in `run_callbacks'
2021-05-23T05:10:27.834501+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/callbacks.rb:36:in `call'
2021-05-23T05:10:27.834501+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/remote_ip.rb:79:in `call'
2021-05-23T05:10:27.834506+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/debug_exceptions.rb:49:in `call'
2021-05-23T05:10:27.834507+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/show_exceptions.rb:31:in `call'
2021-05-23T05:10:27.834507+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/rack/logger.rb:36:in `call_app'
2021-05-23T05:10:27.834508+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/rack/logger.rb:24:in `block in call'
2021-05-23T05:10:27.834508+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/tagged_logging.rb:69:in `block in tagged'
2021-05-23T05:10:27.834509+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/tagged_logging.rb:26:in `tagged'
2021-05-23T05:10:27.834509+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/tagged_logging.rb:69:in `tagged'
2021-05-23T05:10:27.834509+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/rack/logger.rb:24:in `call'
2021-05-23T05:10:27.834510+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/request_id.rb:24:in `call'
2021-05-23T05:10:27.834510+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/method_override.rb:24:in `call'
2021-05-23T05:10:27.834511+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/runtime.rb:22:in `call'
2021-05-23T05:10:27.834511+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/activesupport-5.0.7.2/lib/active_support/cache/strategy/local_cache_middleware.rb:28:in `call'
2021-05-23T05:10:27.834512+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/executor.rb:12:in `call'
2021-05-23T05:10:27.834512+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/actionpack-5.0.7.2/lib/action_dispatch/middleware/static.rb:136:in `call'
2021-05-23T05:10:27.834512+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/rack-2.2.3/lib/rack/sendfile.rb:110:in `call'
2021-05-23T05:10:27.834513+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/railties-5.0.7.2/lib/rails/engine.rb:522:in `call'
2021-05-23T05:10:27.834513+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/configuration.rb:227:in `call'
2021-05-23T05:10:27.834514+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:706:in `handle_request'
2021-05-23T05:10:27.834514+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:476:in `process_client'
2021-05-23T05:10:27.834514+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/server.rb:334:in `block in run'
2021-05-23T05:10:27.834515+00:00 app[web.1]: [7fb26b8f-1f7e-4bea-aea9-1dbbec908429] vendor/bundle/ruby/2.6.0/gems/puma-3.12.6/lib/puma/thread_pool.rb:135:in `block in spawn_thread'