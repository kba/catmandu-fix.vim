" syn match fixLine "^.*$" contains=fixKeyword,fixComment
syn match fixComment "#.*$" display contains=@Spell

" syn match fixName "^[^\(]\+" contained contains=fixBuiltin,fixKeyword,
syn region fixString start=/"/ end=/"/
syn region fixString start=/'/ end=/'/

syn match fixDelim '=>'
syn match fixDelim ','

syn keyword fixConstant _id _r
syn keyword fixInline $first $last $append $prepend *

syn keyword fixBind
	\ benchmark
	\ hashmap
	\ identity
	\ importer
	\ list
	\ marc_each
	\ maybe
	\ timeout
	\ visitor
	\ with

syn keyword fix
	\ add_field
	\ add_to_exporter
	\ add_to_store
	\ append
	\ aref_query
	\ array
	\ assoc
	\ capitalize
	\ clone
	\ code
	\ collapse
	\ copy_field
	\ count
	\ downcase
	\ expand
	\ expand_date
	\ filter
	\ flatten
	\ format
	\ from_json
	\ get_json
	\ hash
	\ import
	\ include
	\ join_field
	\ log
	\ lookup
	\ lookup_in_store
	\ mab_map
	\ marc_add
	\ marc_decode_dollar_subfields
	\ marc_in_json
	\ marc_map
	\ marc_remove
	\ marc_set
	\ marc_xml
	\ move_field
	\ nothing
	\ parse_text
	\ paste
	\ perlcode
	\ prepend
	\ rdf_ldf_statements
	\ reject
	\ remove_field
	\ replace_all
	\ retain
	\ retain_field
	\ reverse
	\ set_array
	\ set_field
	\ set_hash
	\ sleep
	\ sort_field
	\ split_field
	\ substring
	\ sum
	\ to_json
	\ trim
	\ uniq
	\ upcase
	\ uri_decode
	\ uri_encode
	\ vacuum
	\ wd_language
	\ wd_simple
	\ wd_simple_claims
	\ wd_simple_strings

syn keyword fixKeyword if unless do end
syn keyword fixCondition
	\ all_equal
	\ all_match
	\ any_equal
	\ any_match
	\ exists
	\ greater_than
	\ in
	\ is_false
	\ is_true
	\ less_than
	\ marc_match
	\ all_match
	\ any_match
	\ exists
	\ greater_than
	\ less_than
	\ marc_match

hi! def link fix Function
hi! def link fixBuiltin Type
hi! def link fixCondition PreCondit
hi! def link fixKeyword Statement
hi! def link fixDelim Delimiter
hi! def link fixConstant Constant
hi! def link fixString String
hi! def link fixInline Operator
hi! def link fixBind  PreCondit
