# MnemeRepro

Repro with:
```bash
mix deps.get
mix test
# Then press: `k y`
```

The test then fails because it generated `nil` as the pattern for `%DateTime{}`:

```
  1) test repro (MnemeReproTest)
     test/mneme_repro_test.exs:5
     match (=) failed
     code:  auto_assert(MnemeRepro.hello())
     left:  [%{started_at: nil, total_seconds: "1800"}]
     right: [%{started_at: #DateTime<2023-11-03 14:00:00-10:00 HST Pacific/Honolulu>, total_seconds: "1800"}]
     stacktrace:
       /mnt/arch_linux/home/jason/dev/tmp/mneme_repro/test/mneme_repro_test.exs:6: (file)
```
