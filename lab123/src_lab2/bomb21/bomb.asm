
bomb:     file format elf32-i386


Disassembly of section .init:

08048710 <_init>:
 8048710:	55                   	push   %ebp
 8048711:	89 e5                	mov    %esp,%ebp
 8048713:	83 ec 08             	sub    $0x8,%esp
 8048716:	e8 39 02 00 00       	call   8048954 <call_gmon_start>
 804871b:	e8 90 02 00 00       	call   80489b0 <frame_dummy>
 8048720:	e8 ab 10 00 00       	call   80497d0 <__do_global_ctors_aux>
 8048725:	c9                   	leave  
 8048726:	c3                   	ret    

Disassembly of section .plt:

08048728 <.plt>:
 8048728:	ff 35 e4 a0 04 08    	push   0x804a0e4
 804872e:	ff 25 e8 a0 04 08    	jmp    *0x804a0e8
 8048734:	00 00                	add    %al,(%eax)
	...

08048738 <close@plt>:
 8048738:	ff 25 ec a0 04 08    	jmp    *0x804a0ec
 804873e:	68 00 00 00 00       	push   $0x0
 8048743:	e9 e0 ff ff ff       	jmp    8048728 <.plt>

08048748 <fprintf@plt>:
 8048748:	ff 25 f0 a0 04 08    	jmp    *0x804a0f0
 804874e:	68 08 00 00 00       	push   $0x8
 8048753:	e9 d0 ff ff ff       	jmp    8048728 <.plt>

08048758 <tmpfile@plt>:
 8048758:	ff 25 f4 a0 04 08    	jmp    *0x804a0f4
 804875e:	68 10 00 00 00       	push   $0x10
 8048763:	e9 c0 ff ff ff       	jmp    8048728 <.plt>

08048768 <getenv@plt>:
 8048768:	ff 25 f8 a0 04 08    	jmp    *0x804a0f8
 804876e:	68 18 00 00 00       	push   $0x18
 8048773:	e9 b0 ff ff ff       	jmp    8048728 <.plt>

08048778 <signal@plt>:
 8048778:	ff 25 fc a0 04 08    	jmp    *0x804a0fc
 804877e:	68 20 00 00 00       	push   $0x20
 8048783:	e9 a0 ff ff ff       	jmp    8048728 <.plt>

08048788 <fflush@plt>:
 8048788:	ff 25 00 a1 04 08    	jmp    *0x804a100
 804878e:	68 28 00 00 00       	push   $0x28
 8048793:	e9 90 ff ff ff       	jmp    8048728 <.plt>

08048798 <bcopy@plt>:
 8048798:	ff 25 04 a1 04 08    	jmp    *0x804a104
 804879e:	68 30 00 00 00       	push   $0x30
 80487a3:	e9 80 ff ff ff       	jmp    8048728 <.plt>

080487a8 <rewind@plt>:
 80487a8:	ff 25 08 a1 04 08    	jmp    *0x804a108
 80487ae:	68 38 00 00 00       	push   $0x38
 80487b3:	e9 70 ff ff ff       	jmp    8048728 <.plt>

080487b8 <system@plt>:
 80487b8:	ff 25 0c a1 04 08    	jmp    *0x804a10c
 80487be:	68 40 00 00 00       	push   $0x40
 80487c3:	e9 60 ff ff ff       	jmp    8048728 <.plt>

080487c8 <puts@plt>:
 80487c8:	ff 25 10 a1 04 08    	jmp    *0x804a110
 80487ce:	68 48 00 00 00       	push   $0x48
 80487d3:	e9 50 ff ff ff       	jmp    8048728 <.plt>

080487d8 <fgets@plt>:
 80487d8:	ff 25 14 a1 04 08    	jmp    *0x804a114
 80487de:	68 50 00 00 00       	push   $0x50
 80487e3:	e9 40 ff ff ff       	jmp    8048728 <.plt>

080487e8 <sleep@plt>:
 80487e8:	ff 25 18 a1 04 08    	jmp    *0x804a118
 80487ee:	68 58 00 00 00       	push   $0x58
 80487f3:	e9 30 ff ff ff       	jmp    8048728 <.plt>

080487f8 <fputc@plt>:
 80487f8:	ff 25 1c a1 04 08    	jmp    *0x804a11c
 80487fe:	68 60 00 00 00       	push   $0x60
 8048803:	e9 20 ff ff ff       	jmp    8048728 <.plt>

08048808 <__libc_start_main@plt>:
 8048808:	ff 25 20 a1 04 08    	jmp    *0x804a120
 804880e:	68 68 00 00 00       	push   $0x68
 8048813:	e9 10 ff ff ff       	jmp    8048728 <.plt>

08048818 <printf@plt>:
 8048818:	ff 25 24 a1 04 08    	jmp    *0x804a124
 804881e:	68 70 00 00 00       	push   $0x70
 8048823:	e9 00 ff ff ff       	jmp    8048728 <.plt>

08048828 <fclose@plt>:
 8048828:	ff 25 28 a1 04 08    	jmp    *0x804a128
 804882e:	68 78 00 00 00       	push   $0x78
 8048833:	e9 f0 fe ff ff       	jmp    8048728 <.plt>

08048838 <gethostbyname@plt>:
 8048838:	ff 25 2c a1 04 08    	jmp    *0x804a12c
 804883e:	68 80 00 00 00       	push   $0x80
 8048843:	e9 e0 fe ff ff       	jmp    8048728 <.plt>

08048848 <exit@plt>:
 8048848:	ff 25 30 a1 04 08    	jmp    *0x804a130
 804884e:	68 88 00 00 00       	push   $0x88
 8048853:	e9 d0 fe ff ff       	jmp    8048728 <.plt>

08048858 <atoi@plt>:
 8048858:	ff 25 34 a1 04 08    	jmp    *0x804a134
 804885e:	68 90 00 00 00       	push   $0x90
 8048863:	e9 c0 fe ff ff       	jmp    8048728 <.plt>

08048868 <sscanf@plt>:
 8048868:	ff 25 38 a1 04 08    	jmp    *0x804a138
 804886e:	68 98 00 00 00       	push   $0x98
 8048873:	e9 b0 fe ff ff       	jmp    8048728 <.plt>

08048878 <htons@plt>:
 8048878:	ff 25 3c a1 04 08    	jmp    *0x804a13c
 804887e:	68 a0 00 00 00       	push   $0xa0
 8048883:	e9 a0 fe ff ff       	jmp    8048728 <.plt>

08048888 <connect@plt>:
 8048888:	ff 25 40 a1 04 08    	jmp    *0x804a140
 804888e:	68 a8 00 00 00       	push   $0xa8
 8048893:	e9 90 fe ff ff       	jmp    8048728 <.plt>

08048898 <fopen@plt>:
 8048898:	ff 25 44 a1 04 08    	jmp    *0x804a144
 804889e:	68 b0 00 00 00       	push   $0xb0
 80488a3:	e9 80 fe ff ff       	jmp    8048728 <.plt>

080488a8 <dup@plt>:
 80488a8:	ff 25 48 a1 04 08    	jmp    *0x804a148
 80488ae:	68 b8 00 00 00       	push   $0xb8
 80488b3:	e9 70 fe ff ff       	jmp    8048728 <.plt>

080488b8 <sprintf@plt>:
 80488b8:	ff 25 4c a1 04 08    	jmp    *0x804a14c
 80488be:	68 c0 00 00 00       	push   $0xc0
 80488c3:	e9 60 fe ff ff       	jmp    8048728 <.plt>

080488c8 <fwrite@plt>:
 80488c8:	ff 25 50 a1 04 08    	jmp    *0x804a150
 80488ce:	68 c8 00 00 00       	push   $0xc8
 80488d3:	e9 50 fe ff ff       	jmp    8048728 <.plt>

080488d8 <socket@plt>:
 80488d8:	ff 25 54 a1 04 08    	jmp    *0x804a154
 80488de:	68 d0 00 00 00       	push   $0xd0
 80488e3:	e9 40 fe ff ff       	jmp    8048728 <.plt>

080488e8 <__ctype_b_loc@plt>:
 80488e8:	ff 25 58 a1 04 08    	jmp    *0x804a158
 80488ee:	68 d8 00 00 00       	push   $0xd8
 80488f3:	e9 30 fe ff ff       	jmp    8048728 <.plt>

080488f8 <cuserid@plt>:
 80488f8:	ff 25 5c a1 04 08    	jmp    *0x804a15c
 80488fe:	68 e0 00 00 00       	push   $0xe0
 8048903:	e9 20 fe ff ff       	jmp    8048728 <.plt>

08048908 <__gmon_start__@plt>:
 8048908:	ff 25 60 a1 04 08    	jmp    *0x804a160
 804890e:	68 e8 00 00 00       	push   $0xe8
 8048913:	e9 10 fe ff ff       	jmp    8048728 <.plt>

08048918 <strcpy@plt>:
 8048918:	ff 25 64 a1 04 08    	jmp    *0x804a164
 804891e:	68 f0 00 00 00       	push   $0xf0
 8048923:	e9 00 fe ff ff       	jmp    8048728 <.plt>

Disassembly of section .text:

08048930 <_start>:
 8048930:	31 ed                	xor    %ebp,%ebp
 8048932:	5e                   	pop    %esi
 8048933:	89 e1                	mov    %esp,%ecx
 8048935:	83 e4 f0             	and    $0xfffffff0,%esp
 8048938:	50                   	push   %eax
 8048939:	54                   	push   %esp
 804893a:	52                   	push   %edx
 804893b:	68 20 97 04 08       	push   $0x8049720
 8048940:	68 70 97 04 08       	push   $0x8049770
 8048945:	51                   	push   %ecx
 8048946:	56                   	push   %esi
 8048947:	68 d4 89 04 08       	push   $0x80489d4
 804894c:	e8 b7 fe ff ff       	call   8048808 <__libc_start_main@plt>
 8048951:	f4                   	hlt    
 8048952:	90                   	nop
 8048953:	90                   	nop

08048954 <call_gmon_start>:
 8048954:	55                   	push   %ebp
 8048955:	89 e5                	mov    %esp,%ebp
 8048957:	53                   	push   %ebx
 8048958:	83 ec 04             	sub    $0x4,%esp
 804895b:	e8 00 00 00 00       	call   8048960 <call_gmon_start+0xc>
 8048960:	5b                   	pop    %ebx
 8048961:	81 c3 80 17 00 00    	add    $0x1780,%ebx
 8048967:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804896d:	85 d2                	test   %edx,%edx
 804896f:	74 05                	je     8048976 <call_gmon_start+0x22>
 8048971:	e8 92 ff ff ff       	call   8048908 <__gmon_start__@plt>
 8048976:	58                   	pop    %eax
 8048977:	5b                   	pop    %ebx
 8048978:	c9                   	leave  
 8048979:	c3                   	ret    
 804897a:	90                   	nop
 804897b:	90                   	nop
 804897c:	90                   	nop
 804897d:	90                   	nop
 804897e:	90                   	nop
 804897f:	90                   	nop

08048980 <__do_global_dtors_aux>:
 8048980:	55                   	push   %ebp
 8048981:	89 e5                	mov    %esp,%ebp
 8048983:	83 ec 08             	sub    $0x8,%esp
 8048986:	80 3d 28 a8 04 08 00 	cmpb   $0x0,0x804a828
 804898d:	74 0c                	je     804899b <__do_global_dtors_aux+0x1b>
 804898f:	eb 1c                	jmp    80489ad <__do_global_dtors_aux+0x2d>
 8048991:	83 c0 04             	add    $0x4,%eax
 8048994:	a3 88 a1 04 08       	mov    %eax,0x804a188
 8048999:	ff d2                	call   *%edx
 804899b:	a1 88 a1 04 08       	mov    0x804a188,%eax
 80489a0:	8b 10                	mov    (%eax),%edx
 80489a2:	85 d2                	test   %edx,%edx
 80489a4:	75 eb                	jne    8048991 <__do_global_dtors_aux+0x11>
 80489a6:	c6 05 28 a8 04 08 01 	movb   $0x1,0x804a828
 80489ad:	c9                   	leave  
 80489ae:	c3                   	ret    
 80489af:	90                   	nop

080489b0 <frame_dummy>:
 80489b0:	55                   	push   %ebp
 80489b1:	89 e5                	mov    %esp,%ebp
 80489b3:	83 ec 08             	sub    $0x8,%esp
 80489b6:	a1 10 a0 04 08       	mov    0x804a010,%eax
 80489bb:	85 c0                	test   %eax,%eax
 80489bd:	74 12                	je     80489d1 <frame_dummy+0x21>
 80489bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80489c4:	85 c0                	test   %eax,%eax
 80489c6:	74 09                	je     80489d1 <frame_dummy+0x21>
 80489c8:	c7 04 24 10 a0 04 08 	movl   $0x804a010,(%esp)
 80489cf:	ff d0                	call   *%eax
 80489d1:	c9                   	leave  
 80489d2:	c3                   	ret    
 80489d3:	90                   	nop

080489d4 <main>:
 80489d4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80489d8:	83 e4 f0             	and    $0xfffffff0,%esp
 80489db:	ff 71 fc             	push   -0x4(%ecx)
 80489de:	55                   	push   %ebp
 80489df:	89 e5                	mov    %esp,%ebp
 80489e1:	51                   	push   %ecx
 80489e2:	83 ec 24             	sub    $0x24,%esp
 80489e5:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 80489e8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80489eb:	83 38 01             	cmpl   $0x1,(%eax)
 80489ee:	75 0f                	jne    80489ff <main+0x2b>
 80489f0:	a1 24 a8 04 08       	mov    0x804a824,%eax
 80489f5:	a3 30 a8 04 08       	mov    %eax,0x804a830
 80489fa:	e9 88 00 00 00       	jmp    8048a87 <main+0xb3>
 80489ff:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a02:	83 3a 02             	cmpl   $0x2,(%edx)
 8048a05:	75 5c                	jne    8048a63 <main+0x8f>
 8048a07:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 8048a0a:	8b 41 04             	mov    0x4(%ecx),%eax
 8048a0d:	83 c0 04             	add    $0x4,%eax
 8048a10:	8b 00                	mov    (%eax),%eax
 8048a12:	c7 44 24 04 28 98 04 	movl   $0x8049828,0x4(%esp)
 8048a19:	08 
 8048a1a:	89 04 24             	mov    %eax,(%esp)
 8048a1d:	e8 76 fe ff ff       	call   8048898 <fopen@plt>
 8048a22:	a3 30 a8 04 08       	mov    %eax,0x804a830
 8048a27:	a1 30 a8 04 08       	mov    0x804a830,%eax
 8048a2c:	85 c0                	test   %eax,%eax
 8048a2e:	75 57                	jne    8048a87 <main+0xb3>
 8048a30:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a33:	8b 42 04             	mov    0x4(%edx),%eax
 8048a36:	83 c0 04             	add    $0x4,%eax
 8048a39:	8b 10                	mov    (%eax),%edx
 8048a3b:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 8048a3e:	8b 41 04             	mov    0x4(%ecx),%eax
 8048a41:	8b 00                	mov    (%eax),%eax
 8048a43:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048a47:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a4b:	c7 04 24 2a 98 04 08 	movl   $0x804982a,(%esp)
 8048a52:	e8 c1 fd ff ff       	call   8048818 <printf@plt>
 8048a57:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a5e:	e8 e5 fd ff ff       	call   8048848 <exit@plt>
 8048a63:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a66:	8b 42 04             	mov    0x4(%edx),%eax
 8048a69:	8b 00                	mov    (%eax),%eax
 8048a6b:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a6f:	c7 04 24 47 98 04 08 	movl   $0x8049847,(%esp)
 8048a76:	e8 9d fd ff ff       	call   8048818 <printf@plt>
 8048a7b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a82:	e8 c1 fd ff ff       	call   8048848 <exit@plt>
 8048a87:	e8 97 07 00 00       	call   8049223 <initialize_bomb>
 8048a8c:	c7 04 24 64 98 04 08 	movl   $0x8049864,(%esp)
 8048a93:	e8 30 fd ff ff       	call   80487c8 <puts@plt>
 8048a98:	c7 04 24 a0 98 04 08 	movl   $0x80498a0,(%esp)
 8048a9f:	e8 24 fd ff ff       	call   80487c8 <puts@plt>
 8048aa4:	e8 39 08 00 00       	call   80492e2 <read_line>
 8048aa9:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048aac:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048aaf:	89 04 24             	mov    %eax,(%esp)
 8048ab2:	e8 c9 00 00 00       	call   8048b80 <phase_1>
 8048ab7:	e8 dc 0b 00 00       	call   8049698 <phase_defused>
 8048abc:	c7 04 24 cc 98 04 08 	movl   $0x80498cc,(%esp)
 8048ac3:	e8 00 fd ff ff       	call   80487c8 <puts@plt>
 8048ac8:	e8 15 08 00 00       	call   80492e2 <read_line>
 8048acd:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048ad0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048ad3:	89 04 24             	mov    %eax,(%esp)
 8048ad6:	e8 c9 00 00 00       	call   8048ba4 <phase_2>
 8048adb:	e8 b8 0b 00 00       	call   8049698 <phase_defused>
 8048ae0:	c7 04 24 f5 98 04 08 	movl   $0x80498f5,(%esp)
 8048ae7:	e8 dc fc ff ff       	call   80487c8 <puts@plt>
 8048aec:	e8 f1 07 00 00       	call   80492e2 <read_line>
 8048af1:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048af4:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048af7:	89 04 24             	mov    %eax,(%esp)
 8048afa:	e8 ec 00 00 00       	call   8048beb <phase_3>
 8048aff:	e8 94 0b 00 00       	call   8049698 <phase_defused>
 8048b04:	c7 04 24 13 99 04 08 	movl   $0x8049913,(%esp)
 8048b0b:	e8 b8 fc ff ff       	call   80487c8 <puts@plt>
 8048b10:	e8 cd 07 00 00       	call   80492e2 <read_line>
 8048b15:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048b18:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048b1b:	89 04 24             	mov    %eax,(%esp)
 8048b1e:	e8 aa 01 00 00       	call   8048ccd <phase_4>
 8048b23:	e8 70 0b 00 00       	call   8049698 <phase_defused>
 8048b28:	c7 04 24 24 99 04 08 	movl   $0x8049924,(%esp)
 8048b2f:	e8 94 fc ff ff       	call   80487c8 <puts@plt>
 8048b34:	e8 a9 07 00 00       	call   80492e2 <read_line>
 8048b39:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048b3c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048b3f:	89 04 24             	mov    %eax,(%esp)
 8048b42:	e8 d9 01 00 00       	call   8048d20 <phase_5>
 8048b47:	e8 4c 0b 00 00       	call   8049698 <phase_defused>
 8048b4c:	c7 04 24 48 99 04 08 	movl   $0x8049948,(%esp)
 8048b53:	e8 70 fc ff ff       	call   80487c8 <puts@plt>
 8048b58:	e8 85 07 00 00       	call   80492e2 <read_line>
 8048b5d:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048b60:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048b63:	89 04 24             	mov    %eax,(%esp)
 8048b66:	e8 25 02 00 00       	call   8048d90 <phase_6>
 8048b6b:	e8 28 0b 00 00       	call   8049698 <phase_defused>
 8048b70:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b75:	83 c4 24             	add    $0x24,%esp
 8048b78:	59                   	pop    %ecx
 8048b79:	5d                   	pop    %ebp
 8048b7a:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048b7d:	c3                   	ret    
 8048b7e:	90                   	nop
 8048b7f:	90                   	nop

08048b80 <phase_1>:
 8048b80:	55                   	push   %ebp
 8048b81:	89 e5                	mov    %esp,%ebp
 8048b83:	83 ec 08             	sub    $0x8,%esp
 8048b86:	c7 44 24 04 68 99 04 	movl   $0x8049968,0x4(%esp)
 8048b8d:	08 
 8048b8e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b91:	89 04 24             	mov    %eax,(%esp)
 8048b94:	e8 0e 05 00 00       	call   80490a7 <strings_not_equal>
 8048b99:	85 c0                	test   %eax,%eax
 8048b9b:	74 05                	je     8048ba2 <phase_1+0x22>
 8048b9d:	e8 cc 0a 00 00       	call   804966e <explode_bomb>
 8048ba2:	c9                   	leave  
 8048ba3:	c3                   	ret    

08048ba4 <phase_2>:
 8048ba4:	55                   	push   %ebp
 8048ba5:	89 e5                	mov    %esp,%ebp
 8048ba7:	83 ec 28             	sub    $0x28,%esp
 8048baa:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8048bad:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048bb1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bb4:	89 04 24             	mov    %eax,(%esp)
 8048bb7:	e8 58 04 00 00       	call   8049014 <read_six_numbers>
 8048bbc:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048bc3:	eb 1e                	jmp    8048be3 <phase_2+0x3f>
 8048bc5:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bc8:	8b 54 85 e4          	mov    -0x1c(%ebp,%eax,4),%edx
 8048bcc:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bcf:	48                   	dec    %eax
 8048bd0:	8b 44 85 e4          	mov    -0x1c(%ebp,%eax,4),%eax
 8048bd4:	83 c0 05             	add    $0x5,%eax
 8048bd7:	39 c2                	cmp    %eax,%edx
 8048bd9:	74 05                	je     8048be0 <phase_2+0x3c>
 8048bdb:	e8 8e 0a 00 00       	call   804966e <explode_bomb>
 8048be0:	ff 45 fc             	incl   -0x4(%ebp)
 8048be3:	83 7d fc 05          	cmpl   $0x5,-0x4(%ebp)
 8048be7:	7e dc                	jle    8048bc5 <phase_2+0x21>
 8048be9:	c9                   	leave  
 8048bea:	c3                   	ret    

08048beb <phase_3>:
 8048beb:	55                   	push   %ebp
 8048bec:	89 e5                	mov    %esp,%ebp
 8048bee:	83 ec 28             	sub    $0x28,%esp
 8048bf1:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048bf8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048bff:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048c02:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048c06:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048c09:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c0d:	c7 44 24 04 86 99 04 	movl   $0x8049986,0x4(%esp)
 8048c14:	08 
 8048c15:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c18:	89 04 24             	mov    %eax,(%esp)
 8048c1b:	e8 48 fc ff ff       	call   8048868 <sscanf@plt>
 8048c20:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048c23:	83 7d fc 01          	cmpl   $0x1,-0x4(%ebp)
 8048c27:	7f 05                	jg     8048c2e <phase_3+0x43>
 8048c29:	e8 40 0a 00 00       	call   804966e <explode_bomb>
 8048c2e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c31:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048c34:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
 8048c38:	77 43                	ja     8048c7d <phase_3+0x92>
 8048c3a:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8048c3d:	8b 04 95 8c 99 04 08 	mov    0x804998c(,%edx,4),%eax
 8048c44:	ff e0                	jmp    *%eax
 8048c46:	81 45 f8 82 03 00 00 	addl   $0x382,-0x8(%ebp)
 8048c4d:	83 6d f8 49          	subl   $0x49,-0x8(%ebp)
 8048c51:	81 45 f8 88 00 00 00 	addl   $0x88,-0x8(%ebp)
 8048c58:	81 6d f8 93 01 00 00 	subl   $0x193,-0x8(%ebp)
 8048c5f:	81 45 f8 d1 00 00 00 	addl   $0xd1,-0x8(%ebp)
 8048c66:	81 6d f8 be 03 00 00 	subl   $0x3be,-0x8(%ebp)
 8048c6d:	81 45 f8 be 03 00 00 	addl   $0x3be,-0x8(%ebp)
 8048c74:	81 6d f8 0b 03 00 00 	subl   $0x30b,-0x8(%ebp)
 8048c7b:	eb 05                	jmp    8048c82 <phase_3+0x97>
 8048c7d:	e8 ec 09 00 00       	call   804966e <explode_bomb>
 8048c82:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c85:	83 f8 05             	cmp    $0x5,%eax
 8048c88:	7f 08                	jg     8048c92 <phase_3+0xa7>
 8048c8a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048c8d:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 8048c90:	74 05                	je     8048c97 <phase_3+0xac>
 8048c92:	e8 d7 09 00 00       	call   804966e <explode_bomb>
 8048c97:	c9                   	leave  
 8048c98:	c3                   	ret    

08048c99 <func4>:
 8048c99:	55                   	push   %ebp
 8048c9a:	89 e5                	mov    %esp,%ebp
 8048c9c:	83 ec 08             	sub    $0x8,%esp
 8048c9f:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048ca3:	7f 09                	jg     8048cae <func4+0x15>
 8048ca5:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048cac:	eb 1a                	jmp    8048cc8 <func4+0x2f>
 8048cae:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cb1:	48                   	dec    %eax
 8048cb2:	89 04 24             	mov    %eax,(%esp)
 8048cb5:	e8 df ff ff ff       	call   8048c99 <func4>
 8048cba:	89 c2                	mov    %eax,%edx
 8048cbc:	89 d0                	mov    %edx,%eax
 8048cbe:	c1 e0 03             	shl    $0x3,%eax
 8048cc1:	89 c1                	mov    %eax,%ecx
 8048cc3:	29 d1                	sub    %edx,%ecx
 8048cc5:	89 4d fc             	mov    %ecx,-0x4(%ebp)
 8048cc8:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048ccb:	c9                   	leave  
 8048ccc:	c3                   	ret    

08048ccd <phase_4>:
 8048ccd:	55                   	push   %ebp
 8048cce:	89 e5                	mov    %esp,%ebp
 8048cd0:	83 ec 28             	sub    $0x28,%esp
 8048cd3:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048cd6:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cda:	c7 44 24 04 ac 99 04 	movl   $0x80499ac,0x4(%esp)
 8048ce1:	08 
 8048ce2:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ce5:	89 04 24             	mov    %eax,(%esp)
 8048ce8:	e8 7b fb ff ff       	call   8048868 <sscanf@plt>
 8048ced:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048cf0:	83 7d fc 01          	cmpl   $0x1,-0x4(%ebp)
 8048cf4:	75 07                	jne    8048cfd <phase_4+0x30>
 8048cf6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048cf9:	85 c0                	test   %eax,%eax
 8048cfb:	7f 05                	jg     8048d02 <phase_4+0x35>
 8048cfd:	e8 6c 09 00 00       	call   804966e <explode_bomb>
 8048d02:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d05:	89 04 24             	mov    %eax,(%esp)
 8048d08:	e8 8c ff ff ff       	call   8048c99 <func4>
 8048d0d:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048d10:	81 7d f8 61 09 00 00 	cmpl   $0x961,-0x8(%ebp)
 8048d17:	74 05                	je     8048d1e <phase_4+0x51>
 8048d19:	e8 50 09 00 00       	call   804966e <explode_bomb>
 8048d1e:	c9                   	leave  
 8048d1f:	c3                   	ret    

08048d20 <phase_5>:
 8048d20:	55                   	push   %ebp
 8048d21:	89 e5                	mov    %esp,%ebp
 8048d23:	83 ec 18             	sub    $0x18,%esp
 8048d26:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d29:	89 04 24             	mov    %eax,(%esp)
 8048d2c:	e8 4c 03 00 00       	call   804907d <string_length>
 8048d31:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048d34:	83 7d fc 06          	cmpl   $0x6,-0x4(%ebp)
 8048d38:	74 05                	je     8048d3f <phase_5+0x1f>
 8048d3a:	e8 2f 09 00 00       	call   804966e <explode_bomb>
 8048d3f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048d46:	eb 20                	jmp    8048d68 <phase_5+0x48>
 8048d48:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048d4b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048d4e:	03 45 08             	add    0x8(%ebp),%eax
 8048d51:	0f b6 00             	movzbl (%eax),%eax
 8048d54:	0f be c0             	movsbl %al,%eax
 8048d57:	83 e0 0f             	and    $0xf,%eax
 8048d5a:	0f b6 80 c0 a5 04 08 	movzbl 0x804a5c0(%eax),%eax
 8048d61:	88 44 15 f1          	mov    %al,-0xf(%ebp,%edx,1)
 8048d65:	ff 45 f8             	incl   -0x8(%ebp)
 8048d68:	83 7d f8 05          	cmpl   $0x5,-0x8(%ebp)
 8048d6c:	7e da                	jle    8048d48 <phase_5+0x28>
 8048d6e:	c6 45 f7 00          	movb   $0x0,-0x9(%ebp)
 8048d72:	c7 44 24 04 af 99 04 	movl   $0x80499af,0x4(%esp)
 8048d79:	08 
 8048d7a:	8d 45 f1             	lea    -0xf(%ebp),%eax
 8048d7d:	89 04 24             	mov    %eax,(%esp)
 8048d80:	e8 22 03 00 00       	call   80490a7 <strings_not_equal>
 8048d85:	85 c0                	test   %eax,%eax
 8048d87:	74 05                	je     8048d8e <phase_5+0x6e>
 8048d89:	e8 e0 08 00 00       	call   804966e <explode_bomb>
 8048d8e:	c9                   	leave  
 8048d8f:	c3                   	ret    

08048d90 <phase_6>:
 8048d90:	55                   	push   %ebp
 8048d91:	89 e5                	mov    %esp,%ebp
 8048d93:	83 ec 48             	sub    $0x48,%esp
 8048d96:	c7 45 f0 0c a6 04 08 	movl   $0x804a60c,-0x10(%ebp)
 8048d9d:	8d 45 d8             	lea    -0x28(%ebp),%eax
 8048da0:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048da4:	8b 45 08             	mov    0x8(%ebp),%eax
 8048da7:	89 04 24             	mov    %eax,(%esp)
 8048daa:	e8 65 02 00 00       	call   8049014 <read_six_numbers>
 8048daf:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048db6:	eb 48                	jmp    8048e00 <phase_6+0x70>
 8048db8:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048dbb:	8b 44 85 d8          	mov    -0x28(%ebp,%eax,4),%eax
 8048dbf:	85 c0                	test   %eax,%eax
 8048dc1:	7e 0c                	jle    8048dcf <phase_6+0x3f>
 8048dc3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048dc6:	8b 44 85 d8          	mov    -0x28(%ebp,%eax,4),%eax
 8048dca:	83 f8 06             	cmp    $0x6,%eax
 8048dcd:	7e 05                	jle    8048dd4 <phase_6+0x44>
 8048dcf:	e8 9a 08 00 00       	call   804966e <explode_bomb>
 8048dd4:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048dd7:	40                   	inc    %eax
 8048dd8:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048ddb:	eb 1a                	jmp    8048df7 <phase_6+0x67>
 8048ddd:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048de0:	8b 54 85 d8          	mov    -0x28(%ebp,%eax,4),%edx
 8048de4:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048de7:	8b 44 85 d8          	mov    -0x28(%ebp,%eax,4),%eax
 8048deb:	39 c2                	cmp    %eax,%edx
 8048ded:	75 05                	jne    8048df4 <phase_6+0x64>
 8048def:	e8 7a 08 00 00       	call   804966e <explode_bomb>
 8048df4:	ff 45 fc             	incl   -0x4(%ebp)
 8048df7:	83 7d fc 05          	cmpl   $0x5,-0x4(%ebp)
 8048dfb:	7e e0                	jle    8048ddd <phase_6+0x4d>
 8048dfd:	ff 45 f8             	incl   -0x8(%ebp)
 8048e00:	83 7d f8 05          	cmpl   $0x5,-0x8(%ebp)
 8048e04:	7e b2                	jle    8048db8 <phase_6+0x28>
 8048e06:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048e0d:	eb 34                	jmp    8048e43 <phase_6+0xb3>
 8048e0f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e12:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e15:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048e1c:	eb 0c                	jmp    8048e2a <phase_6+0x9a>
 8048e1e:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e21:	8b 40 08             	mov    0x8(%eax),%eax
 8048e24:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e27:	ff 45 fc             	incl   -0x4(%ebp)
 8048e2a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e2d:	8b 44 85 d8          	mov    -0x28(%ebp,%eax,4),%eax
 8048e31:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8048e34:	7f e8                	jg     8048e1e <phase_6+0x8e>
 8048e36:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048e39:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e3c:	89 44 95 c0          	mov    %eax,-0x40(%ebp,%edx,4)
 8048e40:	ff 45 f8             	incl   -0x8(%ebp)
 8048e43:	83 7d f8 05          	cmpl   $0x5,-0x8(%ebp)
 8048e47:	7e c6                	jle    8048e0f <phase_6+0x7f>
 8048e49:	8b 45 c0             	mov    -0x40(%ebp),%eax
 8048e4c:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e4f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e52:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e55:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%ebp)
 8048e5c:	eb 19                	jmp    8048e77 <phase_6+0xe7>
 8048e5e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e61:	8b 54 85 c0          	mov    -0x40(%ebp,%eax,4),%edx
 8048e65:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e68:	89 50 08             	mov    %edx,0x8(%eax)
 8048e6b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e6e:	8b 40 08             	mov    0x8(%eax),%eax
 8048e71:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e74:	ff 45 f8             	incl   -0x8(%ebp)
 8048e77:	83 7d f8 05          	cmpl   $0x5,-0x8(%ebp)
 8048e7b:	7e e1                	jle    8048e5e <phase_6+0xce>
 8048e7d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e80:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048e87:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e8a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e8d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048e94:	eb 22                	jmp    8048eb8 <phase_6+0x128>
 8048e96:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e99:	8b 10                	mov    (%eax),%edx
 8048e9b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e9e:	8b 40 08             	mov    0x8(%eax),%eax
 8048ea1:	8b 00                	mov    (%eax),%eax
 8048ea3:	39 c2                	cmp    %eax,%edx
 8048ea5:	7d 05                	jge    8048eac <phase_6+0x11c>
 8048ea7:	e8 c2 07 00 00       	call   804966e <explode_bomb>
 8048eac:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048eaf:	8b 40 08             	mov    0x8(%eax),%eax
 8048eb2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048eb5:	ff 45 f8             	incl   -0x8(%ebp)
 8048eb8:	83 7d f8 04          	cmpl   $0x4,-0x8(%ebp)
 8048ebc:	7e d8                	jle    8048e96 <phase_6+0x106>
 8048ebe:	c9                   	leave  
 8048ebf:	c3                   	ret    

08048ec0 <fun7>:
 8048ec0:	55                   	push   %ebp
 8048ec1:	89 e5                	mov    %esp,%ebp
 8048ec3:	83 ec 0c             	sub    $0xc,%esp
 8048ec6:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048eca:	75 09                	jne    8048ed5 <fun7+0x15>
 8048ecc:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
 8048ed3:	eb 54                	jmp    8048f29 <fun7+0x69>
 8048ed5:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ed8:	8b 00                	mov    (%eax),%eax
 8048eda:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048edd:	7e 1c                	jle    8048efb <fun7+0x3b>
 8048edf:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ee2:	8b 50 04             	mov    0x4(%eax),%edx
 8048ee5:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048ee8:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048eec:	89 14 24             	mov    %edx,(%esp)
 8048eef:	e8 cc ff ff ff       	call   8048ec0 <fun7>
 8048ef4:	01 c0                	add    %eax,%eax
 8048ef6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048ef9:	eb 2e                	jmp    8048f29 <fun7+0x69>
 8048efb:	8b 45 08             	mov    0x8(%ebp),%eax
 8048efe:	8b 00                	mov    (%eax),%eax
 8048f00:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048f03:	75 09                	jne    8048f0e <fun7+0x4e>
 8048f05:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048f0c:	eb 1b                	jmp    8048f29 <fun7+0x69>
 8048f0e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f11:	8b 50 08             	mov    0x8(%eax),%edx
 8048f14:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f17:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f1b:	89 14 24             	mov    %edx,(%esp)
 8048f1e:	e8 9d ff ff ff       	call   8048ec0 <fun7>
 8048f23:	01 c0                	add    %eax,%eax
 8048f25:	40                   	inc    %eax
 8048f26:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048f29:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048f2c:	c9                   	leave  
 8048f2d:	c3                   	ret    

08048f2e <secret_phase>:
 8048f2e:	55                   	push   %ebp
 8048f2f:	89 e5                	mov    %esp,%ebp
 8048f31:	83 ec 18             	sub    $0x18,%esp
 8048f34:	e8 a9 03 00 00       	call   80492e2 <read_line>
 8048f39:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f3c:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f3f:	89 04 24             	mov    %eax,(%esp)
 8048f42:	e8 11 f9 ff ff       	call   8048858 <atoi@plt>
 8048f47:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048f4a:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8048f4e:	7e 09                	jle    8048f59 <secret_phase+0x2b>
 8048f50:	81 7d f8 e9 03 00 00 	cmpl   $0x3e9,-0x8(%ebp)
 8048f57:	7e 05                	jle    8048f5e <secret_phase+0x30>
 8048f59:	e8 10 07 00 00       	call   804966e <explode_bomb>
 8048f5e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048f61:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f65:	c7 04 24 c0 a6 04 08 	movl   $0x804a6c0,(%esp)
 8048f6c:	e8 4f ff ff ff       	call   8048ec0 <fun7>
 8048f71:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048f74:	83 7d fc 06          	cmpl   $0x6,-0x4(%ebp)
 8048f78:	74 05                	je     8048f7f <secret_phase+0x51>
 8048f7a:	e8 ef 06 00 00       	call   804966e <explode_bomb>
 8048f7f:	c7 04 24 b8 99 04 08 	movl   $0x80499b8,(%esp)
 8048f86:	e8 3d f8 ff ff       	call   80487c8 <puts@plt>
 8048f8b:	e8 08 07 00 00       	call   8049698 <phase_defused>
 8048f90:	c9                   	leave  
 8048f91:	c3                   	ret    
 8048f92:	90                   	nop
 8048f93:	90                   	nop

08048f94 <sig_handler>:
 8048f94:	55                   	push   %ebp
 8048f95:	89 e5                	mov    %esp,%ebp
 8048f97:	83 ec 08             	sub    $0x8,%esp
 8048f9a:	c7 04 24 30 9c 04 08 	movl   $0x8049c30,(%esp)
 8048fa1:	e8 22 f8 ff ff       	call   80487c8 <puts@plt>
 8048fa6:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048fad:	e8 36 f8 ff ff       	call   80487e8 <sleep@plt>
 8048fb2:	c7 04 24 68 9c 04 08 	movl   $0x8049c68,(%esp)
 8048fb9:	e8 5a f8 ff ff       	call   8048818 <printf@plt>
 8048fbe:	a1 20 a8 04 08       	mov    0x804a820,%eax
 8048fc3:	89 04 24             	mov    %eax,(%esp)
 8048fc6:	e8 bd f7 ff ff       	call   8048788 <fflush@plt>
 8048fcb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fd2:	e8 11 f8 ff ff       	call   80487e8 <sleep@plt>
 8048fd7:	c7 04 24 70 9c 04 08 	movl   $0x8049c70,(%esp)
 8048fde:	e8 e5 f7 ff ff       	call   80487c8 <puts@plt>
 8048fe3:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048fea:	e8 59 f8 ff ff       	call   8048848 <exit@plt>

08048fef <invalid_phase>:
 8048fef:	55                   	push   %ebp
 8048ff0:	89 e5                	mov    %esp,%ebp
 8048ff2:	83 ec 08             	sub    $0x8,%esp
 8048ff5:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ff8:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048ffc:	c7 04 24 78 9c 04 08 	movl   $0x8049c78,(%esp)
 8049003:	e8 10 f8 ff ff       	call   8048818 <printf@plt>
 8049008:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804900f:	e8 34 f8 ff ff       	call   8048848 <exit@plt>

08049014 <read_six_numbers>:
 8049014:	55                   	push   %ebp
 8049015:	89 e5                	mov    %esp,%ebp
 8049017:	56                   	push   %esi
 8049018:	53                   	push   %ebx
 8049019:	83 ec 30             	sub    $0x30,%esp
 804901c:	8b 45 0c             	mov    0xc(%ebp),%eax
 804901f:	83 c0 14             	add    $0x14,%eax
 8049022:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049025:	83 c2 10             	add    $0x10,%edx
 8049028:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804902b:	83 c1 0c             	add    $0xc,%ecx
 804902e:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8049031:	83 c3 08             	add    $0x8,%ebx
 8049034:	8b 75 0c             	mov    0xc(%ebp),%esi
 8049037:	83 c6 04             	add    $0x4,%esi
 804903a:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 804903e:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049042:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 8049046:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 804904a:	89 74 24 0c          	mov    %esi,0xc(%esp)
 804904e:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049051:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049055:	c7 44 24 04 89 9c 04 	movl   $0x8049c89,0x4(%esp)
 804905c:	08 
 804905d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049060:	89 04 24             	mov    %eax,(%esp)
 8049063:	e8 00 f8 ff ff       	call   8048868 <sscanf@plt>
 8049068:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804906b:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 804906f:	7f 05                	jg     8049076 <read_six_numbers+0x62>
 8049071:	e8 f8 05 00 00       	call   804966e <explode_bomb>
 8049076:	83 c4 30             	add    $0x30,%esp
 8049079:	5b                   	pop    %ebx
 804907a:	5e                   	pop    %esi
 804907b:	5d                   	pop    %ebp
 804907c:	c3                   	ret    

0804907d <string_length>:
 804907d:	55                   	push   %ebp
 804907e:	89 e5                	mov    %esp,%ebp
 8049080:	83 ec 10             	sub    $0x10,%esp
 8049083:	8b 45 08             	mov    0x8(%ebp),%eax
 8049086:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8049089:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8049090:	eb 06                	jmp    8049098 <string_length+0x1b>
 8049092:	ff 45 fc             	incl   -0x4(%ebp)
 8049095:	ff 45 f8             	incl   -0x8(%ebp)
 8049098:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804909b:	0f b6 00             	movzbl (%eax),%eax
 804909e:	84 c0                	test   %al,%al
 80490a0:	75 f0                	jne    8049092 <string_length+0x15>
 80490a2:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80490a5:	c9                   	leave  
 80490a6:	c3                   	ret    

080490a7 <strings_not_equal>:
 80490a7:	55                   	push   %ebp
 80490a8:	89 e5                	mov    %esp,%ebp
 80490aa:	53                   	push   %ebx
 80490ab:	83 ec 18             	sub    $0x18,%esp
 80490ae:	8b 45 08             	mov    0x8(%ebp),%eax
 80490b1:	89 04 24             	mov    %eax,(%esp)
 80490b4:	e8 c4 ff ff ff       	call   804907d <string_length>
 80490b9:	89 c3                	mov    %eax,%ebx
 80490bb:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490be:	89 04 24             	mov    %eax,(%esp)
 80490c1:	e8 b7 ff ff ff       	call   804907d <string_length>
 80490c6:	39 c3                	cmp    %eax,%ebx
 80490c8:	74 09                	je     80490d3 <strings_not_equal+0x2c>
 80490ca:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 80490d1:	eb 3e                	jmp    8049111 <strings_not_equal+0x6a>
 80490d3:	8b 45 08             	mov    0x8(%ebp),%eax
 80490d6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490d9:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490dc:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80490df:	eb 1f                	jmp    8049100 <strings_not_equal+0x59>
 80490e1:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490e4:	0f b6 10             	movzbl (%eax),%edx
 80490e7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80490ea:	0f b6 00             	movzbl (%eax),%eax
 80490ed:	38 c2                	cmp    %al,%dl
 80490ef:	74 09                	je     80490fa <strings_not_equal+0x53>
 80490f1:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 80490f8:	eb 17                	jmp    8049111 <strings_not_equal+0x6a>
 80490fa:	ff 45 f4             	incl   -0xc(%ebp)
 80490fd:	ff 45 f8             	incl   -0x8(%ebp)
 8049100:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049103:	0f b6 00             	movzbl (%eax),%eax
 8049106:	84 c0                	test   %al,%al
 8049108:	75 d7                	jne    80490e1 <strings_not_equal+0x3a>
 804910a:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049111:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049114:	83 c4 18             	add    $0x18,%esp
 8049117:	5b                   	pop    %ebx
 8049118:	5d                   	pop    %ebp
 8049119:	c3                   	ret    

0804911a <open_clientfd>:
 804911a:	55                   	push   %ebp
 804911b:	89 e5                	mov    %esp,%ebp
 804911d:	83 ec 38             	sub    $0x38,%esp
 8049120:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049127:	00 
 8049128:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804912f:	00 
 8049130:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049137:	e8 9c f7 ff ff       	call   80488d8 <socket@plt>
 804913c:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804913f:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8049143:	79 18                	jns    804915d <open_clientfd+0x43>
 8049145:	c7 04 24 9b 9c 04 08 	movl   $0x8049c9b,(%esp)
 804914c:	e8 77 f6 ff ff       	call   80487c8 <puts@plt>
 8049151:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049158:	e8 eb f6 ff ff       	call   8048848 <exit@plt>
 804915d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049160:	89 04 24             	mov    %eax,(%esp)
 8049163:	e8 d0 f6 ff ff       	call   8048838 <gethostbyname@plt>
 8049168:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804916b:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 804916f:	75 18                	jne    8049189 <open_clientfd+0x6f>
 8049171:	c7 04 24 a9 9c 04 08 	movl   $0x8049ca9,(%esp)
 8049178:	e8 4b f6 ff ff       	call   80487c8 <puts@plt>
 804917d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049184:	e8 bf f6 ff ff       	call   8048848 <exit@plt>
 8049189:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804918c:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049192:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 8049199:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 80491a0:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 80491a7:	66 c7 45 e8 02 00    	movw   $0x2,-0x18(%ebp)
 80491ad:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80491b0:	8b 40 0c             	mov    0xc(%eax),%eax
 80491b3:	89 c1                	mov    %eax,%ecx
 80491b5:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80491b8:	8d 50 04             	lea    0x4(%eax),%edx
 80491bb:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80491be:	8b 40 10             	mov    0x10(%eax),%eax
 80491c1:	8b 00                	mov    (%eax),%eax
 80491c3:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80491c7:	89 54 24 04          	mov    %edx,0x4(%esp)
 80491cb:	89 04 24             	mov    %eax,(%esp)
 80491ce:	e8 c5 f5 ff ff       	call   8048798 <bcopy@plt>
 80491d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 80491d6:	0f b7 c0             	movzwl %ax,%eax
 80491d9:	89 04 24             	mov    %eax,(%esp)
 80491dc:	e8 97 f6 ff ff       	call   8048878 <htons@plt>
 80491e1:	0f b7 c0             	movzwl %ax,%eax
 80491e4:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
 80491e8:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80491eb:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 80491f2:	00 
 80491f3:	89 44 24 04          	mov    %eax,0x4(%esp)
 80491f7:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80491fa:	89 04 24             	mov    %eax,(%esp)
 80491fd:	e8 86 f6 ff ff       	call   8048888 <connect@plt>
 8049202:	85 c0                	test   %eax,%eax
 8049204:	79 18                	jns    804921e <open_clientfd+0x104>
 8049206:	c7 04 24 b7 9c 04 08 	movl   $0x8049cb7,(%esp)
 804920d:	e8 b6 f5 ff ff       	call   80487c8 <puts@plt>
 8049212:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049219:	e8 2a f6 ff ff       	call   8048848 <exit@plt>
 804921e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049221:	c9                   	leave  
 8049222:	c3                   	ret    

08049223 <initialize_bomb>:
 8049223:	55                   	push   %ebp
 8049224:	89 e5                	mov    %esp,%ebp
 8049226:	83 ec 08             	sub    $0x8,%esp
 8049229:	c7 44 24 04 94 8f 04 	movl   $0x8048f94,0x4(%esp)
 8049230:	08 
 8049231:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049238:	e8 3b f5 ff ff       	call   8048778 <signal@plt>
 804923d:	c9                   	leave  
 804923e:	c3                   	ret    

0804923f <blank_line>:
 804923f:	55                   	push   %ebp
 8049240:	89 e5                	mov    %esp,%ebp
 8049242:	83 ec 08             	sub    $0x8,%esp
 8049245:	eb 32                	jmp    8049279 <blank_line+0x3a>
 8049247:	e8 9c f6 ff ff       	call   80488e8 <__ctype_b_loc@plt>
 804924c:	8b 10                	mov    (%eax),%edx
 804924e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049251:	0f b6 00             	movzbl (%eax),%eax
 8049254:	0f be c0             	movsbl %al,%eax
 8049257:	01 c0                	add    %eax,%eax
 8049259:	8d 04 02             	lea    (%edx,%eax,1),%eax
 804925c:	0f b7 00             	movzwl (%eax),%eax
 804925f:	25 00 20 00 00       	and    $0x2000,%eax
 8049264:	85 c0                	test   %eax,%eax
 8049266:	0f 94 c0             	sete   %al
 8049269:	ff 45 08             	incl   0x8(%ebp)
 804926c:	84 c0                	test   %al,%al
 804926e:	74 09                	je     8049279 <blank_line+0x3a>
 8049270:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049277:	eb 11                	jmp    804928a <blank_line+0x4b>
 8049279:	8b 45 08             	mov    0x8(%ebp),%eax
 804927c:	0f b6 00             	movzbl (%eax),%eax
 804927f:	84 c0                	test   %al,%al
 8049281:	75 c4                	jne    8049247 <blank_line+0x8>
 8049283:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 804928a:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804928d:	c9                   	leave  
 804928e:	c3                   	ret    

0804928f <skip>:
 804928f:	55                   	push   %ebp
 8049290:	89 e5                	mov    %esp,%ebp
 8049292:	83 ec 28             	sub    $0x28,%esp
 8049295:	8b 0d 30 a8 04 08    	mov    0x804a830,%ecx
 804929b:	a1 2c a8 04 08       	mov    0x804a82c,%eax
 80492a0:	89 c2                	mov    %eax,%edx
 80492a2:	89 d0                	mov    %edx,%eax
 80492a4:	c1 e0 02             	shl    $0x2,%eax
 80492a7:	01 d0                	add    %edx,%eax
 80492a9:	c1 e0 04             	shl    $0x4,%eax
 80492ac:	05 40 a8 04 08       	add    $0x804a840,%eax
 80492b1:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80492b5:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 80492bc:	00 
 80492bd:	89 04 24             	mov    %eax,(%esp)
 80492c0:	e8 13 f5 ff ff       	call   80487d8 <fgets@plt>
 80492c5:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80492c8:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 80492cc:	74 0f                	je     80492dd <skip+0x4e>
 80492ce:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80492d1:	89 04 24             	mov    %eax,(%esp)
 80492d4:	e8 66 ff ff ff       	call   804923f <blank_line>
 80492d9:	85 c0                	test   %eax,%eax
 80492db:	75 b8                	jne    8049295 <skip+0x6>
 80492dd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80492e0:	c9                   	leave  
 80492e1:	c3                   	ret    

080492e2 <read_line>:
 80492e2:	55                   	push   %ebp
 80492e3:	89 e5                	mov    %esp,%ebp
 80492e5:	57                   	push   %edi
 80492e6:	83 ec 24             	sub    $0x24,%esp
 80492e9:	e8 a1 ff ff ff       	call   804928f <skip>
 80492ee:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80492f1:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 80492f5:	75 67                	jne    804935e <read_line+0x7c>
 80492f7:	8b 15 30 a8 04 08    	mov    0x804a830,%edx
 80492fd:	a1 24 a8 04 08       	mov    0x804a824,%eax
 8049302:	39 c2                	cmp    %eax,%edx
 8049304:	75 13                	jne    8049319 <read_line+0x37>
 8049306:	c7 04 24 c5 9c 04 08 	movl   $0x8049cc5,(%esp)
 804930d:	e8 b6 f4 ff ff       	call   80487c8 <puts@plt>
 8049312:	e8 57 03 00 00       	call   804966e <explode_bomb>
 8049317:	eb 45                	jmp    804935e <read_line+0x7c>
 8049319:	c7 04 24 e3 9c 04 08 	movl   $0x8049ce3,(%esp)
 8049320:	e8 43 f4 ff ff       	call   8048768 <getenv@plt>
 8049325:	85 c0                	test   %eax,%eax
 8049327:	74 0c                	je     8049335 <read_line+0x53>
 8049329:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049330:	e8 13 f5 ff ff       	call   8048848 <exit@plt>
 8049335:	a1 24 a8 04 08       	mov    0x804a824,%eax
 804933a:	a3 30 a8 04 08       	mov    %eax,0x804a830
 804933f:	e8 4b ff ff ff       	call   804928f <skip>
 8049344:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049347:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 804934b:	75 11                	jne    804935e <read_line+0x7c>
 804934d:	c7 04 24 c5 9c 04 08 	movl   $0x8049cc5,(%esp)
 8049354:	e8 6f f4 ff ff       	call   80487c8 <puts@plt>
 8049359:	e8 10 03 00 00       	call   804966e <explode_bomb>
 804935e:	a1 2c a8 04 08       	mov    0x804a82c,%eax
 8049363:	89 c2                	mov    %eax,%edx
 8049365:	89 d0                	mov    %edx,%eax
 8049367:	c1 e0 02             	shl    $0x2,%eax
 804936a:	01 d0                	add    %edx,%eax
 804936c:	c1 e0 04             	shl    $0x4,%eax
 804936f:	05 40 a8 04 08       	add    $0x804a840,%eax
 8049374:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049379:	89 45 e8             	mov    %eax,-0x18(%ebp)
 804937c:	b0 00                	mov    $0x0,%al
 804937e:	fc                   	cld    
 804937f:	8b 7d e8             	mov    -0x18(%ebp),%edi
 8049382:	f2 ae                	repnz scas %es:(%edi),%al
 8049384:	89 c8                	mov    %ecx,%eax
 8049386:	f7 d0                	not    %eax
 8049388:	48                   	dec    %eax
 8049389:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804938c:	83 7d f4 4f          	cmpl   $0x4f,-0xc(%ebp)
 8049390:	75 11                	jne    80493a3 <read_line+0xc1>
 8049392:	c7 04 24 ee 9c 04 08 	movl   $0x8049cee,(%esp)
 8049399:	e8 2a f4 ff ff       	call   80487c8 <puts@plt>
 804939e:	e8 cb 02 00 00       	call   804966e <explode_bomb>
 80493a3:	8b 15 2c a8 04 08    	mov    0x804a82c,%edx
 80493a9:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 80493ac:	49                   	dec    %ecx
 80493ad:	89 d0                	mov    %edx,%eax
 80493af:	c1 e0 02             	shl    $0x2,%eax
 80493b2:	01 d0                	add    %edx,%eax
 80493b4:	c1 e0 04             	shl    $0x4,%eax
 80493b7:	01 c8                	add    %ecx,%eax
 80493b9:	05 40 a8 04 08       	add    $0x804a840,%eax
 80493be:	c6 00 00             	movb   $0x0,(%eax)
 80493c1:	8b 0d 2c a8 04 08    	mov    0x804a82c,%ecx
 80493c7:	89 ca                	mov    %ecx,%edx
 80493c9:	89 d0                	mov    %edx,%eax
 80493cb:	c1 e0 02             	shl    $0x2,%eax
 80493ce:	01 d0                	add    %edx,%eax
 80493d0:	c1 e0 04             	shl    $0x4,%eax
 80493d3:	05 40 a8 04 08       	add    $0x804a840,%eax
 80493d8:	89 c2                	mov    %eax,%edx
 80493da:	8d 41 01             	lea    0x1(%ecx),%eax
 80493dd:	a3 2c a8 04 08       	mov    %eax,0x804a82c
 80493e2:	89 d0                	mov    %edx,%eax
 80493e4:	83 c4 24             	add    $0x24,%esp
 80493e7:	5f                   	pop    %edi
 80493e8:	5d                   	pop    %ebp
 80493e9:	c3                   	ret    

080493ea <send_msg>:
 80493ea:	55                   	push   %ebp
 80493eb:	89 e5                	mov    %esp,%ebp
 80493ed:	81 ec 88 00 00 00    	sub    $0x88,%esp
 80493f3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80493fa:	e8 a9 f4 ff ff       	call   80488a8 <dup@plt>
 80493ff:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8049402:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%ebp)
 8049406:	75 18                	jne    8049420 <send_msg+0x36>
 8049408:	c7 04 24 09 9d 04 08 	movl   $0x8049d09,(%esp)
 804940f:	e8 b4 f3 ff ff       	call   80487c8 <puts@plt>
 8049414:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804941b:	e8 28 f4 ff ff       	call   8048848 <exit@plt>
 8049420:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049427:	e8 0c f3 ff ff       	call   8048738 <close@plt>
 804942c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804942f:	75 18                	jne    8049449 <send_msg+0x5f>
 8049431:	c7 04 24 1d 9d 04 08 	movl   $0x8049d1d,(%esp)
 8049438:	e8 8b f3 ff ff       	call   80487c8 <puts@plt>
 804943d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049444:	e8 ff f3 ff ff       	call   8048848 <exit@plt>
 8049449:	e8 0a f3 ff ff       	call   8048758 <tmpfile@plt>
 804944e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049451:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049455:	75 18                	jne    804946f <send_msg+0x85>
 8049457:	c7 04 24 30 9d 04 08 	movl   $0x8049d30,(%esp)
 804945e:	e8 65 f3 ff ff       	call   80487c8 <puts@plt>
 8049463:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804946a:	e8 d9 f3 ff ff       	call   8048848 <exit@plt>
 804946f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049472:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049476:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 804947d:	00 
 804947e:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049485:	00 
 8049486:	c7 04 24 45 9d 04 08 	movl   $0x8049d45,(%esp)
 804948d:	e8 36 f4 ff ff       	call   80488c8 <fwrite@plt>
 8049492:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049495:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049499:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80494a0:	e8 53 f3 ff ff       	call   80487f8 <fputc@plt>
 80494a5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80494ac:	e8 47 f4 ff ff       	call   80488f8 <cuserid@plt>
 80494b1:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80494b4:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 80494b8:	75 15                	jne    80494cf <send_msg+0xe5>
 80494ba:	8d 45 a0             	lea    -0x60(%ebp),%eax
 80494bd:	c7 00 6e 6f 62 6f    	movl   $0x6f626f6e,(%eax)
 80494c3:	66 c7 40 04 64 79    	movw   $0x7964,0x4(%eax)
 80494c9:	c6 40 06 00          	movb   $0x0,0x6(%eax)
 80494cd:	eb 12                	jmp    80494e1 <send_msg+0xf7>
 80494cf:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80494d2:	89 44 24 04          	mov    %eax,0x4(%esp)
 80494d6:	8d 45 a0             	lea    -0x60(%ebp),%eax
 80494d9:	89 04 24             	mov    %eax,(%esp)
 80494dc:	e8 37 f4 ff ff       	call   8048918 <strcpy@plt>
 80494e1:	a1 2c a8 04 08       	mov    0x804a82c,%eax
 80494e6:	89 45 98             	mov    %eax,-0x68(%ebp)
 80494e9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80494ed:	74 09                	je     80494f8 <send_msg+0x10e>
 80494ef:	c7 45 9c 61 9d 04 08 	movl   $0x8049d61,-0x64(%ebp)
 80494f6:	eb 07                	jmp    80494ff <send_msg+0x115>
 80494f8:	c7 45 9c 69 9d 04 08 	movl   $0x8049d69,-0x64(%ebp)
 80494ff:	a1 a0 a1 04 08       	mov    0x804a1a0,%eax
 8049504:	8b 55 98             	mov    -0x68(%ebp),%edx
 8049507:	89 54 24 18          	mov    %edx,0x18(%esp)
 804950b:	8b 55 9c             	mov    -0x64(%ebp),%edx
 804950e:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049512:	8d 55 a0             	lea    -0x60(%ebp),%edx
 8049515:	89 54 24 10          	mov    %edx,0x10(%esp)
 8049519:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804951d:	c7 44 24 08 c0 a1 04 	movl   $0x804a1c0,0x8(%esp)
 8049524:	08 
 8049525:	c7 44 24 04 72 9d 04 	movl   $0x8049d72,0x4(%esp)
 804952c:	08 
 804952d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049530:	89 04 24             	mov    %eax,(%esp)
 8049533:	e8 10 f2 ff ff       	call   8048748 <fprintf@plt>
 8049538:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804953f:	eb 4d                	jmp    804958e <send_msg+0x1a4>
 8049541:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049544:	89 d0                	mov    %edx,%eax
 8049546:	c1 e0 02             	shl    $0x2,%eax
 8049549:	01 d0                	add    %edx,%eax
 804954b:	c1 e0 04             	shl    $0x4,%eax
 804954e:	05 40 a8 04 08       	add    $0x804a840,%eax
 8049553:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049556:	42                   	inc    %edx
 8049557:	8b 0d a0 a1 04 08    	mov    0x804a1a0,%ecx
 804955d:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049561:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049565:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049568:	89 44 24 10          	mov    %eax,0x10(%esp)
 804956c:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049570:	c7 44 24 08 c0 a1 04 	movl   $0x804a1c0,0x8(%esp)
 8049577:	08 
 8049578:	c7 44 24 04 8e 9d 04 	movl   $0x8049d8e,0x4(%esp)
 804957f:	08 
 8049580:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049583:	89 04 24             	mov    %eax,(%esp)
 8049586:	e8 bd f1 ff ff       	call   8048748 <fprintf@plt>
 804958b:	ff 45 f4             	incl   -0xc(%ebp)
 804958e:	a1 2c a8 04 08       	mov    0x804a82c,%eax
 8049593:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8049596:	7c a9                	jl     8049541 <send_msg+0x157>
 8049598:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804959b:	89 04 24             	mov    %eax,(%esp)
 804959e:	e8 05 f2 ff ff       	call   80487a8 <rewind@plt>
 80495a3:	c7 44 24 10 f5 99 04 	movl   $0x80499f5,0x10(%esp)
 80495aa:	08 
 80495ab:	c7 44 24 0c aa 9d 04 	movl   $0x8049daa,0xc(%esp)
 80495b2:	08 
 80495b3:	c7 44 24 08 af 9d 04 	movl   $0x8049daf,0x8(%esp)
 80495ba:	08 
 80495bb:	c7 44 24 04 c6 9d 04 	movl   $0x8049dc6,0x4(%esp)
 80495c2:	08 
 80495c3:	c7 04 24 80 ae 04 08 	movl   $0x804ae80,(%esp)
 80495ca:	e8 e9 f2 ff ff       	call   80488b8 <sprintf@plt>
 80495cf:	c7 04 24 80 ae 04 08 	movl   $0x804ae80,(%esp)
 80495d6:	e8 dd f1 ff ff       	call   80487b8 <system@plt>
 80495db:	85 c0                	test   %eax,%eax
 80495dd:	74 18                	je     80495f7 <send_msg+0x20d>
 80495df:	c7 04 24 cf 9d 04 08 	movl   $0x8049dcf,(%esp)
 80495e6:	e8 dd f1 ff ff       	call   80487c8 <puts@plt>
 80495eb:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80495f2:	e8 51 f2 ff ff       	call   8048848 <exit@plt>
 80495f7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495fa:	89 04 24             	mov    %eax,(%esp)
 80495fd:	e8 26 f2 ff ff       	call   8048828 <fclose@plt>
 8049602:	85 c0                	test   %eax,%eax
 8049604:	74 18                	je     804961e <send_msg+0x234>
 8049606:	c7 04 24 e9 9d 04 08 	movl   $0x8049de9,(%esp)
 804960d:	e8 b6 f1 ff ff       	call   80487c8 <puts@plt>
 8049612:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049619:	e8 2a f2 ff ff       	call   8048848 <exit@plt>
 804961e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049621:	89 04 24             	mov    %eax,(%esp)
 8049624:	e8 7f f2 ff ff       	call   80488a8 <dup@plt>
 8049629:	85 c0                	test   %eax,%eax
 804962b:	74 18                	je     8049645 <send_msg+0x25b>
 804962d:	c7 04 24 02 9e 04 08 	movl   $0x8049e02,(%esp)
 8049634:	e8 8f f1 ff ff       	call   80487c8 <puts@plt>
 8049639:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049640:	e8 03 f2 ff ff       	call   8048848 <exit@plt>
 8049645:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049648:	89 04 24             	mov    %eax,(%esp)
 804964b:	e8 e8 f0 ff ff       	call   8048738 <close@plt>
 8049650:	85 c0                	test   %eax,%eax
 8049652:	74 18                	je     804966c <send_msg+0x282>
 8049654:	c7 04 24 1d 9e 04 08 	movl   $0x8049e1d,(%esp)
 804965b:	e8 68 f1 ff ff       	call   80487c8 <puts@plt>
 8049660:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049667:	e8 dc f1 ff ff       	call   8048848 <exit@plt>
 804966c:	c9                   	leave  
 804966d:	c3                   	ret    

0804966e <explode_bomb>:
 804966e:	55                   	push   %ebp
 804966f:	89 e5                	mov    %esp,%ebp
 8049671:	83 ec 08             	sub    $0x8,%esp
 8049674:	c7 04 24 34 9e 04 08 	movl   $0x8049e34,(%esp)
 804967b:	e8 48 f1 ff ff       	call   80487c8 <puts@plt>
 8049680:	c7 04 24 3d 9e 04 08 	movl   $0x8049e3d,(%esp)
 8049687:	e8 3c f1 ff ff       	call   80487c8 <puts@plt>
 804968c:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049693:	e8 b0 f1 ff ff       	call   8048848 <exit@plt>

08049698 <phase_defused>:
 8049698:	55                   	push   %ebp
 8049699:	89 e5                	mov    %esp,%ebp
 804969b:	83 ec 78             	sub    $0x78,%esp
 804969e:	a1 2c a8 04 08       	mov    0x804a82c,%eax
 80496a3:	83 f8 06             	cmp    $0x6,%eax
 80496a6:	75 6e                	jne    8049716 <phase_defused+0x7e>
 80496a8:	b8 30 a9 04 08       	mov    $0x804a930,%eax
 80496ad:	89 c2                	mov    %eax,%edx
 80496af:	8d 45 ac             	lea    -0x54(%ebp),%eax
 80496b2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80496b6:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80496b9:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496bd:	c7 44 24 04 54 9e 04 	movl   $0x8049e54,0x4(%esp)
 80496c4:	08 
 80496c5:	89 14 24             	mov    %edx,(%esp)
 80496c8:	e8 9b f1 ff ff       	call   8048868 <sscanf@plt>
 80496cd:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80496d0:	83 7d fc 02          	cmpl   $0x2,-0x4(%ebp)
 80496d4:	75 34                	jne    804970a <phase_defused+0x72>
 80496d6:	c7 44 24 04 5a 9e 04 	movl   $0x8049e5a,0x4(%esp)
 80496dd:	08 
 80496de:	8d 45 ac             	lea    -0x54(%ebp),%eax
 80496e1:	89 04 24             	mov    %eax,(%esp)
 80496e4:	e8 be f9 ff ff       	call   80490a7 <strings_not_equal>
 80496e9:	85 c0                	test   %eax,%eax
 80496eb:	75 1d                	jne    804970a <phase_defused+0x72>
 80496ed:	c7 04 24 68 9e 04 08 	movl   $0x8049e68,(%esp)
 80496f4:	e8 cf f0 ff ff       	call   80487c8 <puts@plt>
 80496f9:	c7 04 24 90 9e 04 08 	movl   $0x8049e90,(%esp)
 8049700:	e8 c3 f0 ff ff       	call   80487c8 <puts@plt>
 8049705:	e8 24 f8 ff ff       	call   8048f2e <secret_phase>
 804970a:	c7 04 24 c8 9e 04 08 	movl   $0x8049ec8,(%esp)
 8049711:	e8 b2 f0 ff ff       	call   80487c8 <puts@plt>
 8049716:	c9                   	leave  
 8049717:	c3                   	ret    
 8049718:	90                   	nop
 8049719:	90                   	nop
 804971a:	90                   	nop
 804971b:	90                   	nop
 804971c:	90                   	nop
 804971d:	90                   	nop
 804971e:	90                   	nop
 804971f:	90                   	nop

08049720 <__libc_csu_fini>:
 8049720:	55                   	push   %ebp
 8049721:	89 e5                	mov    %esp,%ebp
 8049723:	57                   	push   %edi
 8049724:	56                   	push   %esi
 8049725:	53                   	push   %ebx
 8049726:	e8 98 00 00 00       	call   80497c3 <__i686.get_pc_thunk.bx>
 804972b:	81 c3 b5 09 00 00    	add    $0x9b5,%ebx
 8049731:	83 ec 0c             	sub    $0xc,%esp
 8049734:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804973a:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 8049740:	29 f8                	sub    %edi,%eax
 8049742:	c1 f8 02             	sar    $0x2,%eax
 8049745:	8d 70 ff             	lea    -0x1(%eax),%esi
 8049748:	83 fe ff             	cmp    $0xffffffff,%esi
 804974b:	74 0c                	je     8049759 <__libc_csu_fini+0x39>
 804974d:	8d 76 00             	lea    0x0(%esi),%esi
 8049750:	ff 14 b7             	call   *(%edi,%esi,4)
 8049753:	4e                   	dec    %esi
 8049754:	83 fe ff             	cmp    $0xffffffff,%esi
 8049757:	75 f7                	jne    8049750 <__libc_csu_fini+0x30>
 8049759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049760:	e8 9f 00 00 00       	call   8049804 <_fini>
 8049765:	83 c4 0c             	add    $0xc,%esp
 8049768:	5b                   	pop    %ebx
 8049769:	5e                   	pop    %esi
 804976a:	5f                   	pop    %edi
 804976b:	5d                   	pop    %ebp
 804976c:	c3                   	ret    
 804976d:	8d 76 00             	lea    0x0(%esi),%esi

08049770 <__libc_csu_init>:
 8049770:	55                   	push   %ebp
 8049771:	89 e5                	mov    %esp,%ebp
 8049773:	57                   	push   %edi
 8049774:	56                   	push   %esi
 8049775:	53                   	push   %ebx
 8049776:	e8 48 00 00 00       	call   80497c3 <__i686.get_pc_thunk.bx>
 804977b:	81 c3 65 09 00 00    	add    $0x965,%ebx
 8049781:	83 ec 0c             	sub    $0xc,%esp
 8049784:	e8 87 ef ff ff       	call   8048710 <_init>
 8049789:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804978f:	8d 93 20 ff ff ff    	lea    -0xe0(%ebx),%edx
 8049795:	29 d0                	sub    %edx,%eax
 8049797:	c1 f8 02             	sar    $0x2,%eax
 804979a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804979d:	74 1c                	je     80497bb <__libc_csu_init+0x4b>
 804979f:	31 ff                	xor    %edi,%edi
 80497a1:	89 d6                	mov    %edx,%esi
 80497a3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80497a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80497b0:	47                   	inc    %edi
 80497b1:	ff 16                	call   *(%esi)
 80497b3:	83 c6 04             	add    $0x4,%esi
 80497b6:	39 7d f0             	cmp    %edi,-0x10(%ebp)
 80497b9:	75 f5                	jne    80497b0 <__libc_csu_init+0x40>
 80497bb:	83 c4 0c             	add    $0xc,%esp
 80497be:	5b                   	pop    %ebx
 80497bf:	5e                   	pop    %esi
 80497c0:	5f                   	pop    %edi
 80497c1:	5d                   	pop    %ebp
 80497c2:	c3                   	ret    

080497c3 <__i686.get_pc_thunk.bx>:
 80497c3:	8b 1c 24             	mov    (%esp),%ebx
 80497c6:	c3                   	ret    
 80497c7:	90                   	nop
 80497c8:	90                   	nop
 80497c9:	90                   	nop
 80497ca:	90                   	nop
 80497cb:	90                   	nop
 80497cc:	90                   	nop
 80497cd:	90                   	nop
 80497ce:	90                   	nop
 80497cf:	90                   	nop

080497d0 <__do_global_ctors_aux>:
 80497d0:	55                   	push   %ebp
 80497d1:	89 e5                	mov    %esp,%ebp
 80497d3:	53                   	push   %ebx
 80497d4:	bb 00 a0 04 08       	mov    $0x804a000,%ebx
 80497d9:	83 ec 04             	sub    $0x4,%esp
 80497dc:	a1 00 a0 04 08       	mov    0x804a000,%eax
 80497e1:	83 f8 ff             	cmp    $0xffffffff,%eax
 80497e4:	74 16                	je     80497fc <__do_global_ctors_aux+0x2c>
 80497e6:	8d 76 00             	lea    0x0(%esi),%esi
 80497e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80497f0:	83 eb 04             	sub    $0x4,%ebx
 80497f3:	ff d0                	call   *%eax
 80497f5:	8b 03                	mov    (%ebx),%eax
 80497f7:	83 f8 ff             	cmp    $0xffffffff,%eax
 80497fa:	75 f4                	jne    80497f0 <__do_global_ctors_aux+0x20>
 80497fc:	58                   	pop    %eax
 80497fd:	5b                   	pop    %ebx
 80497fe:	5d                   	pop    %ebp
 80497ff:	90                   	nop
 8049800:	c3                   	ret    
 8049801:	90                   	nop
 8049802:	90                   	nop
 8049803:	90                   	nop

Disassembly of section .fini:

08049804 <_fini>:
 8049804:	55                   	push   %ebp
 8049805:	89 e5                	mov    %esp,%ebp
 8049807:	53                   	push   %ebx
 8049808:	83 ec 04             	sub    $0x4,%esp
 804980b:	e8 00 00 00 00       	call   8049810 <_fini+0xc>
 8049810:	5b                   	pop    %ebx
 8049811:	81 c3 d0 08 00 00    	add    $0x8d0,%ebx
 8049817:	e8 64 f1 ff ff       	call   8048980 <__do_global_dtors_aux>
 804981c:	59                   	pop    %ecx
 804981d:	5b                   	pop    %ebx
 804981e:	c9                   	leave  
 804981f:	c3                   	ret    
