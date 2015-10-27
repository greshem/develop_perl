#!/usr/bin/perl
foreach (<DATA>)
{
	print $_;
}
__DATA__
    * CONSTRUCTOR AND STARTUP  
          o new()
          o $mech->agent_alias( $alias )
          o known_agent_aliases()
    * PAGE-FETCHING METHODS  
          o $mech->get( $uri )
          o $mech->put( $uri, content => $content )
          o $mech->reload()
          o $mech->back()
    * STATUS METHODS  
          o $mech->success()
          o $mech->uri()
          o $mech->response() / $mech->res()
          o $mech->status()
          o $mech->ct() / $mech->content_type()
          o $mech->base()
          o $mech->forms()
          o $mech->current_form()
          o $mech->links()
          o $mech->is_html()
          o $mech->title()
    * CONTENT-HANDLING METHODS  
          o $mech->content(...)
    * LINK METHODS  
          o $mech->links
          o $mech->follow_link(...)
          o $mech->find_link( ... )
          o $mech->find_all_links( ... )
          o $mech->find_all_inputs( ... criteria ... )
          o $mech->find_all_submits( ... criteria ... )
    * IMAGE METHODS  
          o $mech->images
          o $mech->find_image()
          o $mech->find_all_images( ... )
    * FORM METHODS  
          o $mech->forms
          o $mech->form_number($number)
          o $mech->form_name( $name )
          o $mech->form_id( $name )
          o $mech->form_with_fields( @fields )
    * FIELD METHODS  
          o $mech->field( $name, $value, $number )
          o $mech->field( $name, \@values, $number )
          o $mech->select($name, $value)
          o $mech->select($name, \@values)
          o $mech->set_fields( $name => $value ... )
          o $mech->set_visible( @criteria )
          o $mech->tick( $name, $value [, $set] )
          o $mech->untick($name, $value)
          o $mech->value( $name, $number )
          o $mech->click( $button [, $x, $y] )
          o $mech->click_button( ... )
          o $mech->submit()
          o $mech->submit_form( ... )
    * MISCELLANEOUS METHODS  
          o $mech->add_header( name => $value [, name => $value... ] )
          o $mech->delete_header( name [, name ... ] )
          o $mech->quiet(true/false)
          o $mech->stack_depth( $max_depth )
          o $mech->save_content( $filename )
          o $mech->dump_links( [[$fh], $absolute] )
          o $mech->dump_images( [[$fh], $absolute] )
          o $mech->dump_forms( [$fh] )
          o $mech->dump_all( [[$fh], $absolute] )
    * OVERRIDDEN LWP::UserAgent METHODS  
          o $mech->clone()
          o $mech->redirect_ok()
          o $mech->request( $request [, $arg [, $size]])
          o $mech->update_html( $html )
          o $mech->credentials( $username, $password )
          o $mech->get_basic_credentials( $realm, $uri, $isproxy )
          o $mech->clear_credentials()
    * INTERNAL-ONLY METHODS  
          o $mech->_update_page($request, $response)
          o $mech->_modify_request( $req )
          o $mech->_make_request()
          o $mech->_reset_page()
          o $mech->_extract_links()
          o $mech->_push_page_stack()
          o warn( @messages )
          o die( @messages )
