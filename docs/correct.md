# 正誤表
現在わかっている正誤情報です

- p.65　リスト7.1の`init_led`関数内の`write_volitile`の引数（DIRレジスタのアドレス）が間違っている。
    - 誤：`0x4100_8020`

    - 正：`0x4100_8008`

- p.36 リスト4.5 `APP_STACK[0]`となっているが、`APP_STACK.0.as_ptr()`の間違い。このレポジトリのコードは正しいです。
    - 誤：`APP_STACK[0]`

    - 正：`APP_STACK.0.as_ptr()`

- p.39 実行結果の例に"Kernel"と表示されている箇所があるが、実際には出力されない

- p.39 リスト4.12 `asm_execute_process(ptr)`の実行のあとに`loop {}`となっているが、実際は`systick::init()`の呼び出しを`loop {}`の前に移動する必要がある
    - なお、サンプルコードも間違えていました。現在は修正済みなので最新版をpullしてください