for path in $(bundle show --paths); do
  ln -sf $path $1/$(basename $path);
done
