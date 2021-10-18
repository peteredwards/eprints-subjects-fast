push @{$c->{fields}->{eprint}},

{
	name => 'fast_subjects',
	type => 'compound',
	multiple => 1,
	render_value => 'render_fast_subject_term',
	fields => [
		{
			sub_name => 'term',
			type => 'text',
			input_cols => 30,
			allow_null => 0,
		},
		{
			sub_name => 'term_id',
			type => 'text',
			input_cols => 10,
			allow_null => 0,
		},
	],
	input_boxes => 1,
};

$c->{render_fast_subject_term} = sub
{
	my( $session , $field , $value ) = @_;

	my $list = $session->make_element( "dl" );
	foreach my $row ( @{$value} )
	{
		my $term = $session->make_element( "dt" );
		#$term->appendChild( $seesion->make_text( $row->{sub_name} ) );
		my $desc = $session->make_element( "dd" );
		$list->appendChild( $term );
		$list->appendChild( $desc );
	}
	return $list;
}
