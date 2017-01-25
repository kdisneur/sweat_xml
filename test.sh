run_test() {
  erlang_version=$1
  elixir_version=$2
  echo "erlang ${erlang_version}" > .tool-versions
  echo "elixir ${elixir_version}" >> .tool-versions

  echo "START TEST"
  echo "---- VERSIONS"
  cat .tool-versions
  echo "---- RUN SCRIPT:"
  rm -r _build
  mix run -e "SweatXml.lets_do_it('priv/dummy.xml')"
  echo
  echo
  echo
}

run_test 19.0 1.3.2
run_test 19.2 1.3.2
run_test 19.0 1.4.0
run_test 19.2 1.4.0
