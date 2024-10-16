#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�I�� �_��������������b���� @ 0 � `F��w��i}��޻ޫ�{ܧ�wT�V���;e=�/^v �@�
i��U ES���I"I��J{ҙ������$x�b�� z���5O(0@  E=&	�d��   d�        �h	ꄞ�5<��Q��           D��zM �hi��@�h �  �4Ѧ@��E"&�je=S�?4�ꍲI�$l�&�S��G���DhD����@J!�#)�d�Q3B<DmOA1m&LF�i��  ���b�]�<�˰���L+�9��E���HHt$���<�ϗf�,0�V�$Cu�x��ͳ�W����,%�q�] <E"[�W����K�L,Z'�`V۸������|S({���>]	��;<R�^�Ւ�6��)�`h���*LS\����	0�"̚�n�ȴ��PNxf(*��F# ��}�
�Z)'j�kx �q�r�]��a��;6�d�g^�W���$�G����:��qg�q���ڛ�,x���<�ĭ�;M�s_vs͸tM�ge��♧Gw��)~�l�H��l3J���U��\�X�� ��}�I�uB�i�J��ۿ-�d��Ӑ�v��Jt%��7���d-W)Ԫ�NS���Q���J�?�Vˣu0�C�ˇ�G��SC����I���ٍ˜��3��l�gT�"x'u��������w�:��p�mѐ=��R���kzf� FF
_@���Yb�M�X�eA�}��&;P�9{'�����S�x��zy]{���l/�bK_tǅu����_,�8�=��!�G{J�����'���e�>���+�o��m���V��zy��6>ĦCN��s&C�3����(Ȇ>M6|*r�_��R%S4�$I>=m���KV̰UY�RJ�F����қR�AjVR�%4�$&��-�jzd�O�ə�F&8�r� �V�(;`��0g|͵�O���%��d
�R
H��̮�s)U���~,^��>Tyfpi ��v��m�vc�AϙK���l�E�K�`pw�������sV���K��@�l�4��+��v���4s�u�iU����T��Xk��n�DL���z���Tsx��2�dzu�ܩ� �Hv�$I	|�����}I+!�%`=�K�/N��ED�A(m �9��+=���~=�W�����!8HuGD1v��nW��^�>�o6	�x����4C��D1@4o����9)�����ydD�d��J$�|	�i�P��1f��� Q��@H��ID���y��f���؛v�Po4/�W�L��@�B��2lO��8f.�[36ǂ�^Ÿ�:t��j2�l�xD���S���3�6�ЈQn�����4��[s���eċ�Q ��'PFm��buU���||�0B�w6"Vw�Q�
���q�'8�E�G^�>[��F!b,!�-K�^�� �$���X~S=��5v�T�<b�)�M�e�URA#Jr"�[R�}�kƨ�I$�$PDd�j�0�#�������
�kz���f	�46�����PB�D�L�����ZZE��0z6���>+,��
1`�FSh $�+�Ɛ�=��� RxԈD�8��m�S��������l���InI"��������΀2Ezb!�+�F��ra�׹�^��X�&�%B�t&3I��	�J|��O��,�O�*��ֺ�����	Qcn�t����I����&g�9��R�$%f�J�3K��2�VK5�qc ��;�����xD��A��HR �@)ϺW�H@�����	l�SmI{�xH_�h�+����9���H�T^e�&�Y��
Ua�5�A�BW5���dU5��q��FVi3A�����"�:&,"�i���h���nN�\�+Q����19:�����td�]+�#��<��ׯ�Fˮ+�Kq�����%.� ``VߧT��6�d��Cqy2c[�Gj���-�vB����o����$�J�@mf��.^�z��J��eDR�b��i{���yAz�|�0�����1֨%�w㿐�~��w��L3K���&����'�%F���eó���/ ~��]h?Q7��G�8�0P΅	����Hr)g��z������+�	O��-@���\�܀Qcͥ�GNEpO##�}�qe�8r"����3��h�j���h`�j��Ծ]{]���㮜������m�qNj,���[) �m��� �1�<����0ڲM�`R�� 4G0����O�e�|��
ʖ@뮚���z�-��jP���F`��1�h�D�`,PX��m·���& �NA��=���Ph���췠�g�q���̅�'�w7$VHF@������Fއ�ޱ`0�C�
�"#Lx{X������>}OӤ��F���.m�V6���9Tڽ�#:]M�M�[s>=\ӽj��p͈�*�T(�I#�-%�n��Y(�P�@w��uCr3~in�5������_c��:��O�3�S�!#�"�BhO�k�(5�!��ήtdک©YB�DD�y�C���b1�ؐ>�}��vq�Ca?9�~�/O��3qs�6�5���(�s�]��:�7`֛5��;`��C�P�9���s2_5{�u�n� SN��(sz�>�}��/C�IΜR����^E�z�l���"A�g�'=���"ё"P"7���PS�x�a���P=�Q)�[��u�
�X3�W�����6|�*n���+��2=GPh\_�/ǎ���ǜн��ǀ
S6�����/�^��vx2�iN��X`Wc`���Oŗ����[�N���"C�?����Ƅҥ\���4 �)]��o�޻*���V"s�5��8�P�?0�:7G��7m��~SdJ>=Q5"�.�+Ꙏ���:�Oߨ�h�盩Ֆ���$�sX��������ʰ�n:V���|�k��e*mT�г��oZ� Ƽ�
>�i���ikV���E��N�Vu�V����&�p�]8EF6H$UV�t�oӞ�襉�(��Ӵ>�w��P��nwb�:%v�x�+NjD�i��u�	�?.��erM���6DD*[$5�l��z�b�� 
�%�5�0aZ-�}�BS���:�6!R��4�Hp�Jđ}	D��G0�I��C���.��>�AQ4[h(=z�ʄ�_h�@�����r;�6����<cS��ﬤ�8��k�J.!)͠풐��14�w�&�����\�w�=�2t��0P6�s����rS�_Ңs�~'���kf���4�t[�W�u�QMh�U,P>��GΉ$9��9EB'�� =t�>h	'���x?i��d�1���E? q�z��=!�"���UD���T��8IL�1$,��v����>U�m�HN �njQO�a����@ 3�U��@(��+~f���Cp��vc�i��:s�N�P�%�}+��bv�֞q�&3�E�F�.̎�5��-L�#��@B��4����a!!#'�� ���t�M`C�H8(8>��	*J���{��XM�S�������g��kE��Aj�ƄF�����W��%�Pi��HXq,\���avu�V�s����|���3�G���A��:�+C�T=d@�C��lIH��:�;C�302��(	�4�eZ^7j��A�O0İh������t�9�SpQv
�R:�(R��fqlqD_۪�m��!�.� ���=DS ��'*���{\�@{�D$��<\TILTh5eOjS�:�$�PH��B���]W���d}��Rv�3�ZhĶ��r��v!bg��| ��|���+B-�ճp��V!V*�"�ڞJ[j���L�O����-_�v �{�.S��~rƼ�N��|p�7�A�4�	p�%��) ,�t�o�Rhq)��K�4���w��+�N��`�M����$׈9#T3���Ą�x��Y�KjT(Ѷ2�@�oh�=<�l�zFC2���
�5��M��'�Ѥ)uR����l\N��bv���k�􀤽�C�w�h��POe6����9�B�(X )ۘ	�[��ɠ���ip��`�t�3Z	�i,����*���.�	D� H��
��G�D�c���0�*�(<'4���s���Da�:��>bçk�8�6�	�7!l���������t\!(��(�R�a�x�dQ�
��ldg�L
�L��;c�|#¢�Q�}�%�����0F��C���GDS �3�NȰ�8§ns�_cfhC�^n�x�o�;���vwIIA�
$X�H��ʬH0	V��NjUwB��� w�`�e$�/�'3�w��%���h���u��%�ב~�U\�0	=�����F^@Q
}�7�kT+z-� ��h`7�j!y2�@�qHC�oJ����vt��p�UIdI5�=��,���2�ص`�E�H�B���J��I�X;I�K]8D����$��b9����/�A:���[�fq���H��� �������*H
}&@Z�@�Y��{��|�aϮ�JR.�Sh�ښi�u��`�(��ow��XZ\; �bD���a`������5�e^P�R�K�>^#p)C��1H�{Lp/�&�º�W�`\<��Nϊ�$�!BI'є��S�ѼMj7!��mȅ�!����x�-1&k[DP2.o��9�Jh�R���>������g=*��ɗ������i���J���`�J�o5��zЂ�8:+��DbA�rD~M�h�� �"�1
�u���U���d��5@�d3Cx�G4۽�]
�/@��T�����d9�(b��b�gjj���|�[�{=��z�L`�b�mT(@�J�l�n�Μ��n�!�3^�0�0�0�)����-UM���D����.��Z��eb,1ǜ��
�>R��b����2޳P�	MW�A������+dQ-�!�E��a�w�6�(�3G������q:HD��/u��T�����4��8%�dT�w�S-�x�^��!��r��gl�A��	p��_h�6 �(��zIى*lϰ��v����PS%?�M��Α��'��4C�oC�9�N�z�rD�hj�2m)�(���$�[^���l��i��������M���xj<�`w�=�Q|��WeØz�!����0kŠ�r%i@��7"G�����{��{��0I#�ufB`B8(���iFVx�1��ʎN�`xv��@���W��B $�b\��X(�R��T\�T ��E��
3�ұ�s��nv�-�&R��A��4�P�*#a�?f	BH�R$D��*�.����)�JLn�