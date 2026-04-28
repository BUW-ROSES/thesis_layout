# Build PDF and enable shell-escape (required by minted).
$pdf_mode = 1;
$pdflatex = 'pdflatex --shell-escape %O %S';

# Configuration for latexmk to use makeglossaries
# https://tex.stackexchange.com/questions/1226/how-to-make-latexmk-use-makeglossaries

add_cus_dep( 'acn', 'acr', 0, 'makeglossaries' );
add_cus_dep( 'glo', 'gls', 0, 'makeglossaries' );
$clean_ext .= " acr acn alg glo gls glg";

sub makeglossaries {
     my ($base_name, $path) = fileparse( $_[0] );
     my @args = ( "-d", $path, $base_name );
     if ($silent) { unshift @args, "-q"; }
     return system "makeglossaries", @args;
}