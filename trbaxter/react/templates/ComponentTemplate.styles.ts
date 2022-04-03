import { makeStyles, Theme } from '@truxweb/ux';

export const useStyles = makeStyles<Theme>((theme: Theme) => ({
  title: {
    lineHeight: `${theme.spacing(2)}px`,
  },
}));

