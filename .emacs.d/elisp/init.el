;; load-path を追加する関数を定義
    (defun add-to-load-path (&rest paths)
      (let (path)
        (dolist (path paths paths)
          (let ((default-directory (expand-file-name (concat user-emacs-directory path))))
    	(add-to-list 'load-path default-directory)
    	(if (fboundp 'normal-top-level-add-subdir-to-load-path)
    	    (normal-top-level-add-subdirs-to-load-path))))))

    ;; load-pathに追加
    (add-to-load-path "elisp")

    ;; auto-install.el 
    (when (require 'auto-install nil t)
      ;; インストールディレクトリを設定
      (setq auto-install-directory "~/.emacs.d/elisp")
      ;; EmacsWikiに登録されているelispの名前を取得
      (auto-install-update-emacswiki-package-name t)
      ;; install-elispの関数を利用可能にする
      (auto-install-compatibility-setup))
	    
    ;; emacsclientを使えるようにする
    (server-start)
