import {InteriorHeader} from '..';
import React from 'react';
import { useStyles } from './__TEMPLATE__.styles';
import { useTranslation } from 'next-i18next';

const REQUIRED_NAMESPACES = ['common'];

type T__TEMPLATE__Props = {
  content: string;
}

export const __TEMPLATE__ = ({content}: T__TEMPLATE__Props): JSX.Element => {
  const classes = useStyles();
  const { t } = useTranslation(REQUIRED_NAMESPACES);
  return <InteriorHeader className={classes.title}>{t(`common:${content}`)}</InteriorHeader>
}
