# SweatXml

Report a problem since we bumped to Elixir 1.4.0

## Installation

```
mix deps.get
```

## Run

A `test.sh` script exists, it assumes you use [asdf](https://github.com/asdf-vm/asdf) to manage your Erlang and Elixir
versions.

The script will run the same code over different versions of Erlang and Elixir.

Here the result we have:

```
START TEST
---- VERSIONS
erlang 19.0
elixir 1.3.2
---- RUN SCRIPT:
==> sweet_xml
Compiling 1 file (.ex)
Generated sweet_xml app
==> sweat_xml
Compiling 1 file (.ex)
Generated sweat_xml app
{:xmlElement, :ipsum, :ipsum, [], {:xmlNamespace, [], []}, [lorem: 1], 2, [],
 [{:xmlText, [ipsum: 2, lorem: 1], 1, [], 'dolor sit amet', :text}], [],
 '/Users/kdisneur/Desktop/sweat_xml', :undeclared}



START TEST
---- VERSIONS
erlang 19.2
elixir 1.3.2
---- RUN SCRIPT:
==> sweet_xml
Compiling 1 file (.ex)
Generated sweet_xml app
==> sweat_xml
Compiling 1 file (.ex)
Generated sweat_xml app
{:xmlElement, :ipsum, :ipsum, [], {:xmlNamespace, [], []}, [lorem: 1], 2, [],
 [{:xmlText, [ipsum: 2, lorem: 1], 1, [], 'dolor sit amet', :text}], [],
 '/Users/kdisneur/Desktop/sweat_xml', :undeclared}



START TEST
---- VERSIONS
erlang 19.0
elixir 1.4.0
---- RUN SCRIPT:
==> sweet_xml
Compiling 1 file (.ex)
Generated sweet_xml app
==> sweat_xml
Compiling 1 file (.ex)
Generated sweat_xml app
{:xmlElement, :ipsum, :ipsum, [], {:xmlNamespace, [], []}, [lorem: 1], 2, [],
 [{:xmlText, [ipsum: 2, lorem: 1], 1, [], 'dolor sit amet', :text}], [],
 '/Users/kdisneur/Desktop/sweat_xml', :undeclared}

11:49:02.182 [error] Process #PID<0.210.0> raised an exception
** (CaseClauseError) no case clause matching: {:halted, []}
    (sweet_xml) lib/sweet_xml.ex:582: anonymous fn/4 in SweetXml.continuation_opts/2
    (xmerl) xmerl_scan.erl:822: :xmerl_scan.scan_misc/4
    (xmerl) xmerl_scan.erl:575: :xmerl_scan.scan_document/2
    (xmerl) xmerl_scan.erl:288: :xmerl_scan.string/2



START TEST
---- VERSIONS
erlang 19.2
elixir 1.4.0
---- RUN SCRIPT:
==> sweet_xml
Compiling 1 file (.ex)
Generated sweet_xml app
==> sweat_xml
Compiling 1 file (.ex)
Generated sweat_xml app
{:xmlElement, :ipsum, :ipsum, [], {:xmlNamespace, [], []}, [lorem: 1], 2, [],
 [{:xmlText, [ipsum: 2, lorem: 1], 1, [], 'dolor sit amet', :text}], [],
 '/Users/kdisneur/Desktop/sweat_xml', :undeclared}

11:49:03.365 [error] Process #PID<0.212.0> raised an exception
** (CaseClauseError) no case clause matching: {:halted, []}
    (sweet_xml) lib/sweet_xml.ex:582: anonymous fn/4 in SweetXml.continuation_opts/2
    (xmerl) xmerl_scan.erl:825: :xmerl_scan.scan_misc/4
    (xmerl) xmerl_scan.erl:578: :xmerl_scan.scan_document/2
    (xmerl) xmerl_scan.erl:291: :xmerl_scan.string/2
```
