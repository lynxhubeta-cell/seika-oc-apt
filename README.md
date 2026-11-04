# seika-oc APT repository (Termux)

Install with:

```sh
curl -fsSL https://raw.githubusercontent.com/lynxhubeta-cell/seika-oc-apt/main/add-repo.sh | sh
```

Or manually:

```sh
echo "deb [trusted=yes] https://raw.githubusercontent.com/lynxhubeta-cell/seika-oc-apt/main ./" \
  > $PREFIX/etc/apt/sources.list.d/seika-oc.list
pkg update
pkg install seika-oc
```

Then run `oc`.

Note: if you previously installed the pip package, remove it first
(`pip uninstall -y seika-oc`) to avoid two copies of the `oc` launcher.
