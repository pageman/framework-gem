use Rack::Session::Cookie,  key: 'my_app_key',
                            path: '/',
                            expire_after: 1209600, # 2 weeks, in seconds
                            secret: 'P@ssw0rd'