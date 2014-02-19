# WARNING: THIS IS AN EXPERIMENTAL GEM.
### *and still a work-in-progress...*
--

### To use the gem, you must set the following environment variables:
```
VSTRUCT_API_URL
VSTRUCTAPI_HTTP_USER
VSTRUCTAPI_HTTP_PASSWORD
```
e.g. 
```
$ export VSTRUCTAPI_URL='http://localhost:3000'
$ export VSTRUCTAPI_HTTP_USER='foo'
$ export VSTRUCTAPI_HTTP_PASSWORD='bar'
```

### The following is a sample irb session with the majority of the output omitted.

```
dl-thor:~/dl/dev/vstructapi-client(master) $ irb
2.0.0-p353 :001 > require 'vstructapi/client'
 => true 
 2.0.0-p353 :002 > Vstructapi::Client::Vstruct.all
 2.0.0-p353 :003 > vs = Vstructapi::Client::Vstruct.find('b966d2f2-f7c7-4eca-b41f-6015328d8a04')
 2.0.0-p353 :004 > vc = vs.vclips
 2.0.0-p353 :005 > vc = vs.vclips[0]
 2.0.0-p353 :006 > vc.label = 'blah_1'
 2.0.0-p353 :007 > vc.save
 2.0.0-p353 :008 > vc.reload
	    => #<Vstructapi::Client::Vclip:0x00000100a31848 @attributes={"id"=>"ba19c27f-d9df-4875-a213-1f6f11753265", "vstruct_id"=>"b966d2f2-f7c7-4eca-b41f-6015328d8a04", "time_in"=>"03:32:23.134", "time_out"=>"03:53:13.104", "label"=>"blah_1", "clip_type"=>nil, "clip_order"=>2, "lock_version"=>3, "created_at"=>"2014-02-13T15:29:43.643Z", "updated_at"=>"2014-02-19T03:41:07.555Z"}, @prefix_options={}, @persisted=true, @remote_errors=nil, @validation_context=nil, @errors=#<ActiveResource::Errors:0x00000100a7ae58 @base=#<Vstructapi::Client::Vclip:0x00000100a31848 ...>, @messages={}>> 
 2.0.0-p353 :009 > 
```		
--
