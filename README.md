# FAST and LCSH Subjects for EPrints

FAST and LCSH subject fields and autocompletion scripts

Plcae this in the EPrints workflow

```
    <component type="Field::Multi">
      <title>FAST subjects</title>
      <field ref="fast_subjects" input_lookup_url="{$config{perl_url}}/users/loookup/fast"/>
    </component>
    <component type="Field::Multi">
      <title>LCSH subjects</title>
      <field ref="lcsh_subjects" input_lookup_url="{$config{perl_url}}/users/lookup/lcsh"/>
    </component>

```
