;;; tools/lsp/autoload/common.el -*- lexical-binding: t; -*-

;;;###autodef
(defun lsp! ()
  "Dispatch to call the currently used lsp client entrypoint"
  (interactive)
  (if (featurep! +eglot)
      (eglot-ensure)
    (lsp-deferred)))
