
open-normal:     file format elf32-i386


Disassembly of section .text:

080480a0 <main>:
 80480a0:	55                   	push   %ebp
 80480a1:	89 e5                	mov    %esp,%ebp
 80480a3:	83 e4 f0             	and    $0xfffffff0,%esp
 80480a6:	83 ec 20             	sub    $0x20,%esp
 80480a9:	c7 04 24 d2 9f 04 08 	movl   $0x8049fd2,(%esp)
 80480b0:	e8 d7 00 00 00       	call   804818c <open>
 80480b5:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
 80480bc:	00 
 80480bd:	8d 54 24 16          	lea    0x16(%esp),%edx
 80480c1:	89 54 24 04          	mov    %edx,0x4(%esp)
 80480c5:	89 04 24             	mov    %eax,(%esp)
 80480c8:	e8 d7 00 00 00       	call   80481a4 <read>
 80480cd:	c9                   	leave  
 80480ce:	c3                   	ret    

080480cf <_start>:
 80480cf:	83 ec 1c             	sub    $0x1c,%esp
 80480d2:	8b 44 24 24          	mov    0x24(%esp),%eax
 80480d6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80480da:	8b 44 24 20          	mov    0x20(%esp),%eax
 80480de:	89 04 24             	mov    %eax,(%esp)
 80480e1:	e8 ba ff ff ff       	call   80480a0 <main>
 80480e6:	89 04 24             	mov    %eax,(%esp)
 80480e9:	e8 2e 00 00 00       	call   804811c <exit>

080480ee <halt>:
 80480ee:	83 ec 1c             	sub    $0x1c,%esp
 80480f1:	6a 00                	push   $0x0
 80480f3:	cd 30                	int    $0x30
 80480f5:	83 c4 04             	add    $0x4,%esp
 80480f8:	c7 44 24 0c b4 a1 04 	movl   $0x804a1b4,0xc(%esp)
 80480ff:	08 
 8048100:	c7 44 24 08 85 9d 04 	movl   $0x8049d85,0x8(%esp)
 8048107:	08 
 8048108:	c7 44 24 04 44 00 00 	movl   $0x44,0x4(%esp)
 804810f:	00 
 8048110:	c7 04 24 dd 9f 04 08 	movl   $0x8049fdd,(%esp)
 8048117:	e8 98 01 00 00       	call   80482b4 <debug_panic>

0804811c <exit>:
 804811c:	83 ec 1c             	sub    $0x1c,%esp
 804811f:	ff 74 24 20          	pushl  0x20(%esp)
 8048123:	6a 01                	push   $0x1
 8048125:	cd 30                	int    $0x30
 8048127:	83 c4 08             	add    $0x8,%esp
 804812a:	c7 44 24 0c b4 a1 04 	movl   $0x804a1b4,0xc(%esp)
 8048131:	08 
 8048132:	c7 44 24 08 80 9d 04 	movl   $0x8049d80,0x8(%esp)
 8048139:	08 
 804813a:	c7 44 24 04 4b 00 00 	movl   $0x4b,0x4(%esp)
 8048141:	00 
 8048142:	c7 04 24 dd 9f 04 08 	movl   $0x8049fdd,(%esp)
 8048149:	e8 66 01 00 00       	call   80482b4 <debug_panic>

0804814e <exec>:
 804814e:	ff 74 24 04          	pushl  0x4(%esp)
 8048152:	6a 02                	push   $0x2
 8048154:	cd 30                	int    $0x30
 8048156:	83 c4 08             	add    $0x8,%esp
 8048159:	c3                   	ret    

0804815a <wait>:
 804815a:	ff 74 24 04          	pushl  0x4(%esp)
 804815e:	6a 03                	push   $0x3
 8048160:	cd 30                	int    $0x30
 8048162:	83 c4 08             	add    $0x8,%esp
 8048165:	c3                   	ret    

08048166 <create>:
 8048166:	ff 74 24 08          	pushl  0x8(%esp)
 804816a:	ff 74 24 04          	pushl  0x4(%esp)
 804816e:	6a 04                	push   $0x4
 8048170:	cd 30                	int    $0x30
 8048172:	83 c4 0c             	add    $0xc,%esp
 8048175:	85 c0                	test   %eax,%eax
 8048177:	0f 95 c0             	setne  %al
 804817a:	c3                   	ret    

0804817b <remove>:
 804817b:	ff 74 24 04          	pushl  0x4(%esp)
 804817f:	6a 05                	push   $0x5
 8048181:	cd 30                	int    $0x30
 8048183:	83 c4 08             	add    $0x8,%esp
 8048186:	85 c0                	test   %eax,%eax
 8048188:	0f 95 c0             	setne  %al
 804818b:	c3                   	ret    

0804818c <open>:
 804818c:	ff 74 24 04          	pushl  0x4(%esp)
 8048190:	6a 06                	push   $0x6
 8048192:	cd 30                	int    $0x30
 8048194:	83 c4 08             	add    $0x8,%esp
 8048197:	c3                   	ret    

08048198 <filesize>:
 8048198:	ff 74 24 04          	pushl  0x4(%esp)
 804819c:	6a 07                	push   $0x7
 804819e:	cd 30                	int    $0x30
 80481a0:	83 c4 08             	add    $0x8,%esp
 80481a3:	c3                   	ret    

080481a4 <read>:
 80481a4:	ff 74 24 0c          	pushl  0xc(%esp)
 80481a8:	ff 74 24 08          	pushl  0x8(%esp)
 80481ac:	ff 74 24 04          	pushl  0x4(%esp)
 80481b0:	6a 08                	push   $0x8
 80481b2:	cd 30                	int    $0x30
 80481b4:	83 c4 10             	add    $0x10,%esp
 80481b7:	c3                   	ret    

080481b8 <write>:
 80481b8:	ff 74 24 0c          	pushl  0xc(%esp)
 80481bc:	ff 74 24 08          	pushl  0x8(%esp)
 80481c0:	ff 74 24 04          	pushl  0x4(%esp)
 80481c4:	6a 09                	push   $0x9
 80481c6:	cd 30                	int    $0x30
 80481c8:	83 c4 10             	add    $0x10,%esp
 80481cb:	c3                   	ret    

080481cc <seek>:
 80481cc:	ff 74 24 08          	pushl  0x8(%esp)
 80481d0:	ff 74 24 04          	pushl  0x4(%esp)
 80481d4:	6a 0a                	push   $0xa
 80481d6:	cd 30                	int    $0x30
 80481d8:	83 c4 0c             	add    $0xc,%esp
 80481db:	c3                   	ret    

080481dc <tell>:
 80481dc:	ff 74 24 04          	pushl  0x4(%esp)
 80481e0:	6a 0b                	push   $0xb
 80481e2:	cd 30                	int    $0x30
 80481e4:	83 c4 08             	add    $0x8,%esp
 80481e7:	c3                   	ret    

080481e8 <close>:
 80481e8:	ff 74 24 04          	pushl  0x4(%esp)
 80481ec:	6a 0c                	push   $0xc
 80481ee:	cd 30                	int    $0x30
 80481f0:	83 c4 08             	add    $0x8,%esp
 80481f3:	c3                   	ret    

080481f4 <mmap>:
 80481f4:	ff 74 24 08          	pushl  0x8(%esp)
 80481f8:	ff 74 24 04          	pushl  0x4(%esp)
 80481fc:	6a 0d                	push   $0xd
 80481fe:	cd 30                	int    $0x30
 8048200:	83 c4 0c             	add    $0xc,%esp
 8048203:	c3                   	ret    

08048204 <munmap>:
 8048204:	ff 74 24 04          	pushl  0x4(%esp)
 8048208:	6a 0e                	push   $0xe
 804820a:	cd 30                	int    $0x30
 804820c:	83 c4 08             	add    $0x8,%esp
 804820f:	c3                   	ret    

08048210 <chdir>:
 8048210:	ff 74 24 04          	pushl  0x4(%esp)
 8048214:	6a 0f                	push   $0xf
 8048216:	cd 30                	int    $0x30
 8048218:	83 c4 08             	add    $0x8,%esp
 804821b:	85 c0                	test   %eax,%eax
 804821d:	0f 95 c0             	setne  %al
 8048220:	c3                   	ret    

08048221 <mkdir>:
 8048221:	ff 74 24 04          	pushl  0x4(%esp)
 8048225:	6a 10                	push   $0x10
 8048227:	cd 30                	int    $0x30
 8048229:	83 c4 08             	add    $0x8,%esp
 804822c:	85 c0                	test   %eax,%eax
 804822e:	0f 95 c0             	setne  %al
 8048231:	c3                   	ret    

08048232 <readdir>:
 8048232:	ff 74 24 08          	pushl  0x8(%esp)
 8048236:	ff 74 24 04          	pushl  0x4(%esp)
 804823a:	6a 11                	push   $0x11
 804823c:	cd 30                	int    $0x30
 804823e:	83 c4 0c             	add    $0xc,%esp
 8048241:	85 c0                	test   %eax,%eax
 8048243:	0f 95 c0             	setne  %al
 8048246:	c3                   	ret    

08048247 <isdir>:
 8048247:	ff 74 24 04          	pushl  0x4(%esp)
 804824b:	6a 12                	push   $0x12
 804824d:	cd 30                	int    $0x30
 804824f:	83 c4 08             	add    $0x8,%esp
 8048252:	85 c0                	test   %eax,%eax
 8048254:	0f 95 c0             	setne  %al
 8048257:	c3                   	ret    

08048258 <inumber>:
 8048258:	ff 74 24 04          	pushl  0x4(%esp)
 804825c:	6a 13                	push   $0x13
 804825e:	cd 30                	int    $0x30
 8048260:	83 c4 08             	add    $0x8,%esp
 8048263:	c3                   	ret    

08048264 <uthread_create>:
 8048264:	ff 74 24 08          	pushl  0x8(%esp)
 8048268:	ff 74 24 04          	pushl  0x4(%esp)
 804826c:	6a 16                	push   $0x16
 804826e:	cd 30                	int    $0x30
 8048270:	83 c4 0c             	add    $0xc,%esp
 8048273:	c3                   	ret    

08048274 <uthread_join>:
 8048274:	ff 74 24 08          	pushl  0x8(%esp)
 8048278:	ff 74 24 04          	pushl  0x4(%esp)
 804827c:	6a 17                	push   $0x17
 804827e:	cd 30                	int    $0x30
 8048280:	83 c4 0c             	add    $0xc,%esp
 8048283:	c3                   	ret    

08048284 <uthread_joinall>:
 8048284:	6a 18                	push   $0x18
 8048286:	cd 30                	int    $0x30
 8048288:	83 c4 04             	add    $0x4,%esp
 804828b:	c3                   	ret    

0804828c <uthread_exit>:
 804828c:	ff 74 24 04          	pushl  0x4(%esp)
 8048290:	6a 19                	push   $0x19
 8048292:	cd 30                	int    $0x30
 8048294:	83 c4 08             	add    $0x8,%esp
 8048297:	c3                   	ret    

08048298 <uthread_getpid>:
 8048298:	6a 14                	push   $0x14
 804829a:	cd 30                	int    $0x30
 804829c:	83 c4 04             	add    $0x4,%esp
 804829f:	c3                   	ret    

080482a0 <uthread_gettid>:
 80482a0:	6a 15                	push   $0x15
 80482a2:	cd 30                	int    $0x30
 80482a4:	83 c4 04             	add    $0x4,%esp
 80482a7:	c3                   	ret    

080482a8 <uthread_msleep>:
 80482a8:	ff 74 24 04          	pushl  0x4(%esp)
 80482ac:	6a 1a                	push   $0x1a
 80482ae:	cd 30                	int    $0x30
 80482b0:	83 c4 08             	add    $0x8,%esp
 80482b3:	c3                   	ret    

080482b4 <debug_panic>:
 80482b4:	83 ec 1c             	sub    $0x1c,%esp
 80482b7:	8b 44 24 28          	mov    0x28(%esp),%eax
 80482bb:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80482bf:	8b 44 24 24          	mov    0x24(%esp),%eax
 80482c3:	89 44 24 08          	mov    %eax,0x8(%esp)
 80482c7:	8b 44 24 20          	mov    0x20(%esp),%eax
 80482cb:	89 44 24 04          	mov    %eax,0x4(%esp)
 80482cf:	c7 04 24 d8 a1 04 08 	movl   $0x804a1d8,(%esp)
 80482d6:	e8 13 06 00 00       	call   80488ee <printf>
 80482db:	8d 44 24 30          	lea    0x30(%esp),%eax
 80482df:	89 44 24 04          	mov    %eax,0x4(%esp)
 80482e3:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80482e7:	89 04 24             	mov    %eax,(%esp)
 80482ea:	e8 36 01 00 00       	call   8048425 <vprintf>
 80482ef:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80482f6:	e8 6a 00 00 00       	call   8048365 <putchar>
 80482fb:	e8 6b 01 00 00       	call   804846b <debug_backtrace>
 8048300:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048307:	e8 10 fe ff ff       	call   804811c <exit>

0804830c <flush>:
 804830c:	53                   	push   %ebx
 804830d:	83 ec 18             	sub    $0x18,%esp
 8048310:	89 c3                	mov    %eax,%ebx
 8048312:	8b 40 40             	mov    0x40(%eax),%eax
 8048315:	39 d8                	cmp    %ebx,%eax
 8048317:	76 15                	jbe    804832e <flush+0x22>
 8048319:	29 d8                	sub    %ebx,%eax
 804831b:	89 44 24 08          	mov    %eax,0x8(%esp)
 804831f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8048323:	8b 43 48             	mov    0x48(%ebx),%eax
 8048326:	89 04 24             	mov    %eax,(%esp)
 8048329:	e8 8a fe ff ff       	call   80481b8 <write>
 804832e:	89 5b 40             	mov    %ebx,0x40(%ebx)
 8048331:	83 c4 18             	add    $0x18,%esp
 8048334:	5b                   	pop    %ebx
 8048335:	c3                   	ret    

08048336 <add_char>:
 8048336:	53                   	push   %ebx
 8048337:	83 ec 08             	sub    $0x8,%esp
 804833a:	8b 54 24 10          	mov    0x10(%esp),%edx
 804833e:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048342:	8b 43 40             	mov    0x40(%ebx),%eax
 8048345:	8d 48 01             	lea    0x1(%eax),%ecx
 8048348:	89 4b 40             	mov    %ecx,0x40(%ebx)
 804834b:	88 10                	mov    %dl,(%eax)
 804834d:	8d 43 40             	lea    0x40(%ebx),%eax
 8048350:	39 43 40             	cmp    %eax,0x40(%ebx)
 8048353:	72 07                	jb     804835c <add_char+0x26>
 8048355:	89 d8                	mov    %ebx,%eax
 8048357:	e8 b0 ff ff ff       	call   804830c <flush>
 804835c:	83 43 44 01          	addl   $0x1,0x44(%ebx)
 8048360:	83 c4 08             	add    $0x8,%esp
 8048363:	5b                   	pop    %ebx
 8048364:	c3                   	ret    

08048365 <putchar>:
 8048365:	53                   	push   %ebx
 8048366:	83 ec 28             	sub    $0x28,%esp
 8048369:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 804836d:	88 5c 24 1f          	mov    %bl,0x1f(%esp)
 8048371:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
 8048378:	00 
 8048379:	8d 44 24 1f          	lea    0x1f(%esp),%eax
 804837d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048381:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048388:	e8 2b fe ff ff       	call   80481b8 <write>
 804838d:	89 d8                	mov    %ebx,%eax
 804838f:	83 c4 28             	add    $0x28,%esp
 8048392:	5b                   	pop    %ebx
 8048393:	c3                   	ret    

08048394 <puts>:
 8048394:	57                   	push   %edi
 8048395:	83 ec 18             	sub    $0x18,%esp
 8048398:	8b 54 24 20          	mov    0x20(%esp),%edx
 804839c:	89 d7                	mov    %edx,%edi
 804839e:	b8 00 00 00 00       	mov    $0x0,%eax
 80483a3:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80483a8:	f2 ae                	repnz scas %es:(%edi),%al
 80483aa:	f7 d1                	not    %ecx
 80483ac:	83 e9 01             	sub    $0x1,%ecx
 80483af:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80483b3:	89 54 24 04          	mov    %edx,0x4(%esp)
 80483b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80483be:	e8 f5 fd ff ff       	call   80481b8 <write>
 80483c3:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80483ca:	e8 96 ff ff ff       	call   8048365 <putchar>
 80483cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80483d4:	83 c4 18             	add    $0x18,%esp
 80483d7:	5f                   	pop    %edi
 80483d8:	c3                   	ret    

080483d9 <vhprintf>:
 80483d9:	53                   	push   %ebx
 80483da:	83 ec 68             	sub    $0x68,%esp
 80483dd:	8d 5c 24 14          	lea    0x14(%esp),%ebx
 80483e1:	89 5c 24 54          	mov    %ebx,0x54(%esp)
 80483e5:	c7 44 24 58 00 00 00 	movl   $0x0,0x58(%esp)
 80483ec:	00 
 80483ed:	8b 44 24 70          	mov    0x70(%esp),%eax
 80483f1:	89 44 24 5c          	mov    %eax,0x5c(%esp)
 80483f5:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
 80483f9:	c7 44 24 08 36 83 04 	movl   $0x8048336,0x8(%esp)
 8048400:	08 
 8048401:	8b 44 24 78          	mov    0x78(%esp),%eax
 8048405:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048409:	8b 44 24 74          	mov    0x74(%esp),%eax
 804840d:	89 04 24             	mov    %eax,(%esp)
 8048410:	e8 1f 05 00 00       	call   8048934 <__vprintf>
 8048415:	89 d8                	mov    %ebx,%eax
 8048417:	e8 f0 fe ff ff       	call   804830c <flush>
 804841c:	8b 44 24 58          	mov    0x58(%esp),%eax
 8048420:	83 c4 68             	add    $0x68,%esp
 8048423:	5b                   	pop    %ebx
 8048424:	c3                   	ret    

08048425 <vprintf>:
 8048425:	83 ec 1c             	sub    $0x1c,%esp
 8048428:	8b 44 24 24          	mov    0x24(%esp),%eax
 804842c:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048430:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048434:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048438:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 804843f:	e8 95 ff ff ff       	call   80483d9 <vhprintf>
 8048444:	83 c4 1c             	add    $0x1c,%esp
 8048447:	c3                   	ret    

08048448 <hprintf>:
 8048448:	83 ec 1c             	sub    $0x1c,%esp
 804844b:	8d 44 24 28          	lea    0x28(%esp),%eax
 804844f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048453:	8b 44 24 24          	mov    0x24(%esp),%eax
 8048457:	89 44 24 04          	mov    %eax,0x4(%esp)
 804845b:	8b 44 24 20          	mov    0x20(%esp),%eax
 804845f:	89 04 24             	mov    %eax,(%esp)
 8048462:	e8 72 ff ff ff       	call   80483d9 <vhprintf>
 8048467:	83 c4 1c             	add    $0x1c,%esp
 804846a:	c3                   	ret    

0804846b <debug_backtrace>:
 804846b:	55                   	push   %ebp
 804846c:	89 e5                	mov    %esp,%ebp
 804846e:	53                   	push   %ebx
 804846f:	83 ec 14             	sub    $0x14,%esp
 8048472:	8b 45 04             	mov    0x4(%ebp),%eax
 8048475:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048479:	c7 04 24 f3 9f 04 08 	movl   $0x8049ff3,(%esp)
 8048480:	e8 69 04 00 00       	call   80488ee <printf>
 8048485:	8b 5d 00             	mov    0x0(%ebp),%ebx
 8048488:	81 fb ff 0f 00 00    	cmp    $0xfff,%ebx
 804848e:	76 27                	jbe    80484b7 <debug_backtrace+0x4c>
 8048490:	83 3b 00             	cmpl   $0x0,(%ebx)
 8048493:	74 22                	je     80484b7 <debug_backtrace+0x4c>
 8048495:	8b 43 04             	mov    0x4(%ebx),%eax
 8048498:	89 44 24 04          	mov    %eax,0x4(%esp)
 804849c:	c7 04 24 fe 9f 04 08 	movl   $0x8049ffe,(%esp)
 80484a3:	e8 46 04 00 00       	call   80488ee <printf>
 80484a8:	8b 1b                	mov    (%ebx),%ebx
 80484aa:	81 fb ff 0f 00 00    	cmp    $0xfff,%ebx
 80484b0:	76 05                	jbe    80484b7 <debug_backtrace+0x4c>
 80484b2:	83 3b 00             	cmpl   $0x0,(%ebx)
 80484b5:	75 de                	jne    8048495 <debug_backtrace+0x2a>
 80484b7:	c7 04 24 df a0 04 08 	movl   $0x804a0df,(%esp)
 80484be:	e8 d1 fe ff ff       	call   8048394 <puts>
 80484c3:	80 3d b4 b2 04 08 00 	cmpb   $0x0,0x804b2b4
 80484ca:	75 13                	jne    80484df <debug_backtrace+0x74>
 80484cc:	c6 05 b4 b2 04 08 01 	movb   $0x1,0x804b2b4
 80484d3:	c7 04 24 00 a2 04 08 	movl   $0x804a200,(%esp)
 80484da:	e8 b5 fe ff ff       	call   8048394 <puts>
 80484df:	83 c4 14             	add    $0x14,%esp
 80484e2:	5b                   	pop    %ebx
 80484e3:	5d                   	pop    %ebp
 80484e4:	c3                   	ret    
 80484e5:	90                   	nop
 80484e6:	90                   	nop
 80484e7:	90                   	nop
 80484e8:	90                   	nop
 80484e9:	90                   	nop
 80484ea:	90                   	nop
 80484eb:	90                   	nop
 80484ec:	90                   	nop
 80484ed:	90                   	nop
 80484ee:	90                   	nop
 80484ef:	90                   	nop

080484f0 <vsnprintf_helper>:
 80484f0:	53                   	push   %ebx
 80484f1:	8b 5c 24 08          	mov    0x8(%esp),%ebx
 80484f5:	8b 44 24 0c          	mov    0xc(%esp),%eax
 80484f9:	8b 50 04             	mov    0x4(%eax),%edx
 80484fc:	8d 4a 01             	lea    0x1(%edx),%ecx
 80484ff:	89 48 04             	mov    %ecx,0x4(%eax)
 8048502:	3b 50 08             	cmp    0x8(%eax),%edx
 8048505:	7d 09                	jge    8048510 <vsnprintf_helper+0x20>
 8048507:	8b 10                	mov    (%eax),%edx
 8048509:	8d 4a 01             	lea    0x1(%edx),%ecx
 804850c:	89 08                	mov    %ecx,(%eax)
 804850e:	88 1a                	mov    %bl,(%edx)
 8048510:	5b                   	pop    %ebx
 8048511:	c3                   	ret    

08048512 <output_dup>:
 8048512:	55                   	push   %ebp
 8048513:	57                   	push   %edi
 8048514:	56                   	push   %esi
 8048515:	53                   	push   %ebx
 8048516:	83 ec 1c             	sub    $0x1c,%esp
 8048519:	8b 7c 24 30          	mov    0x30(%esp),%edi
 804851d:	85 d2                	test   %edx,%edx
 804851f:	74 15                	je     8048536 <output_dup+0x24>
 8048521:	89 ce                	mov    %ecx,%esi
 8048523:	89 d3                	mov    %edx,%ebx
 8048525:	0f be e8             	movsbl %al,%ebp
 8048528:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804852c:	89 2c 24             	mov    %ebp,(%esp)
 804852f:	ff d6                	call   *%esi
 8048531:	83 eb 01             	sub    $0x1,%ebx
 8048534:	75 f2                	jne    8048528 <output_dup+0x16>
 8048536:	83 c4 1c             	add    $0x1c,%esp
 8048539:	5b                   	pop    %ebx
 804853a:	5e                   	pop    %esi
 804853b:	5f                   	pop    %edi
 804853c:	5d                   	pop    %ebp
 804853d:	c3                   	ret    

0804853e <format_integer>:
 804853e:	55                   	push   %ebp
 804853f:	57                   	push   %edi
 8048540:	56                   	push   %esi
 8048541:	53                   	push   %ebx
 8048542:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 8048548:	89 c6                	mov    %eax,%esi
 804854a:	89 d7                	mov    %edx,%edi
 804854c:	8b 84 24 a0 00 00 00 	mov    0xa0(%esp),%eax
 8048553:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 804855a:	00 
 804855b:	84 c9                	test   %cl,%cl
 804855d:	74 4c                	je     80485ab <format_integer+0x6d>
 804855f:	8b 8c 24 a8 00 00 00 	mov    0xa8(%esp),%ecx
 8048566:	8b 11                	mov    (%ecx),%edx
 8048568:	f6 c2 02             	test   $0x2,%dl
 804856b:	74 14                	je     8048581 <format_integer+0x43>
 804856d:	3c 01                	cmp    $0x1,%al
 804856f:	19 c0                	sbb    %eax,%eax
 8048571:	89 44 24 30          	mov    %eax,0x30(%esp)
 8048575:	83 64 24 30 fe       	andl   $0xfffffffe,0x30(%esp)
 804857a:	83 44 24 30 2d       	addl   $0x2d,0x30(%esp)
 804857f:	eb 2a                	jmp    80485ab <format_integer+0x6d>
 8048581:	f6 c2 04             	test   $0x4,%dl
 8048584:	74 14                	je     804859a <format_integer+0x5c>
 8048586:	3c 01                	cmp    $0x1,%al
 8048588:	19 c0                	sbb    %eax,%eax
 804858a:	89 44 24 30          	mov    %eax,0x30(%esp)
 804858e:	83 64 24 30 f3       	andl   $0xfffffff3,0x30(%esp)
 8048593:	83 44 24 30 2d       	addl   $0x2d,0x30(%esp)
 8048598:	eb 11                	jmp    80485ab <format_integer+0x6d>
 804859a:	3c 01                	cmp    $0x1,%al
 804859c:	19 c0                	sbb    %eax,%eax
 804859e:	89 44 24 30          	mov    %eax,0x30(%esp)
 80485a2:	f7 54 24 30          	notl   0x30(%esp)
 80485a6:	83 64 24 30 2d       	andl   $0x2d,0x30(%esp)
 80485ab:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 80485b2:	8b 00                	mov    (%eax),%eax
 80485b4:	89 44 24 38          	mov    %eax,0x38(%esp)
 80485b8:	83 e0 08             	and    $0x8,%eax
 80485bb:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 80485bf:	74 5c                	je     804861d <format_integer+0xdf>
 80485c1:	89 f8                	mov    %edi,%eax
 80485c3:	09 f0                	or     %esi,%eax
 80485c5:	0f 84 e9 00 00 00    	je     80486b4 <format_integer+0x176>
 80485cb:	8b 84 24 a4 00 00 00 	mov    0xa4(%esp),%eax
 80485d2:	8b 40 08             	mov    0x8(%eax),%eax
 80485d5:	89 44 24 34          	mov    %eax,0x34(%esp)
 80485d9:	eb 08                	jmp    80485e3 <format_integer+0xa5>
 80485db:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 80485e2:	00 
 80485e3:	8b 84 24 a4 00 00 00 	mov    0xa4(%esp),%eax
 80485ea:	8b 40 04             	mov    0x4(%eax),%eax
 80485ed:	89 44 24 28          	mov    %eax,0x28(%esp)
 80485f1:	8b 84 24 a4 00 00 00 	mov    0xa4(%esp),%eax
 80485f8:	8b 00                	mov    (%eax),%eax
 80485fa:	89 44 24 18          	mov    %eax,0x18(%esp)
 80485fe:	89 c1                	mov    %eax,%ecx
 8048600:	c1 f9 1f             	sar    $0x1f,%ecx
 8048603:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 8048607:	bb 00 00 00 00       	mov    $0x0,%ebx
 804860c:	8d 6c 24 40          	lea    0x40(%esp),%ebp
 8048610:	8b 44 24 38          	mov    0x38(%esp),%eax
 8048614:	83 e0 20             	and    $0x20,%eax
 8048617:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 804861b:	eb 17                	jmp    8048634 <format_integer+0xf6>
 804861d:	89 f8                	mov    %edi,%eax
 804861f:	09 f0                	or     %esi,%eax
 8048621:	75 b8                	jne    80485db <format_integer+0x9d>
 8048623:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 804862a:	00 
 804862b:	8d 5c 24 40          	lea    0x40(%esp),%ebx
 804862f:	e9 92 00 00 00       	jmp    80486c6 <format_integer+0x188>
 8048634:	83 7c 24 2c 00       	cmpl   $0x0,0x2c(%esp)
 8048639:	74 1c                	je     8048657 <format_integer+0x119>
 804863b:	85 db                	test   %ebx,%ebx
 804863d:	7e 18                	jle    8048657 <format_integer+0x119>
 804863f:	8b 8c 24 a4 00 00 00 	mov    0xa4(%esp),%ecx
 8048646:	89 d8                	mov    %ebx,%eax
 8048648:	99                   	cltd   
 8048649:	f7 79 0c             	idivl  0xc(%ecx)
 804864c:	85 d2                	test   %edx,%edx
 804864e:	75 07                	jne    8048657 <format_integer+0x119>
 8048650:	c6 45 00 2c          	movb   $0x2c,0x0(%ebp)
 8048654:	8d 6d 01             	lea    0x1(%ebp),%ebp
 8048657:	8d 45 01             	lea    0x1(%ebp),%eax
 804865a:	89 44 24 24          	mov    %eax,0x24(%esp)
 804865e:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048662:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8048666:	89 44 24 08          	mov    %eax,0x8(%esp)
 804866a:	89 54 24 0c          	mov    %edx,0xc(%esp)
 804866e:	89 34 24             	mov    %esi,(%esp)
 8048671:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8048675:	e8 d0 16 00 00       	call   8049d4a <__umoddi3>
 804867a:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 804867e:	0f b6 04 01          	movzbl (%ecx,%eax,1),%eax
 8048682:	88 45 00             	mov    %al,0x0(%ebp)
 8048685:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048689:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 804868d:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048691:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048695:	89 34 24             	mov    %esi,(%esp)
 8048698:	89 7c 24 04          	mov    %edi,0x4(%esp)
 804869c:	e8 86 16 00 00       	call   8049d27 <__udivdi3>
 80486a1:	89 c6                	mov    %eax,%esi
 80486a3:	89 d7                	mov    %edx,%edi
 80486a5:	83 c3 01             	add    $0x1,%ebx
 80486a8:	89 d1                	mov    %edx,%ecx
 80486aa:	09 c1                	or     %eax,%ecx
 80486ac:	74 14                	je     80486c2 <format_integer+0x184>
 80486ae:	8b 6c 24 24          	mov    0x24(%esp),%ebp
 80486b2:	eb 80                	jmp    8048634 <format_integer+0xf6>
 80486b4:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 80486bb:	00 
 80486bc:	8d 5c 24 40          	lea    0x40(%esp),%ebx
 80486c0:	eb 04                	jmp    80486c6 <format_integer+0x188>
 80486c2:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 80486c6:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 80486cd:	8b 50 08             	mov    0x8(%eax),%edx
 80486d0:	85 d2                	test   %edx,%edx
 80486d2:	b8 01 00 00 00       	mov    $0x1,%eax
 80486d7:	0f 48 d0             	cmovs  %eax,%edx
 80486da:	8d 7c 24 40          	lea    0x40(%esp),%edi
 80486de:	89 d8                	mov    %ebx,%eax
 80486e0:	29 f8                	sub    %edi,%eax
 80486e2:	39 c2                	cmp    %eax,%edx
 80486e4:	7e 1f                	jle    8048705 <format_integer+0x1c7>
 80486e6:	8d 44 24 7f          	lea    0x7f(%esp),%eax
 80486ea:	39 c3                	cmp    %eax,%ebx
 80486ec:	73 17                	jae    8048705 <format_integer+0x1c7>
 80486ee:	89 f9                	mov    %edi,%ecx
 80486f0:	89 c6                	mov    %eax,%esi
 80486f2:	83 c3 01             	add    $0x1,%ebx
 80486f5:	c6 43 ff 30          	movb   $0x30,-0x1(%ebx)
 80486f9:	89 d8                	mov    %ebx,%eax
 80486fb:	29 c8                	sub    %ecx,%eax
 80486fd:	39 c2                	cmp    %eax,%edx
 80486ff:	7e 04                	jle    8048705 <format_integer+0x1c7>
 8048701:	39 f3                	cmp    %esi,%ebx
 8048703:	75 ed                	jne    80486f2 <format_integer+0x1b4>
 8048705:	83 7c 24 3c 00       	cmpl   $0x0,0x3c(%esp)
 804870a:	74 20                	je     804872c <format_integer+0x1ee>
 804870c:	8b 84 24 a4 00 00 00 	mov    0xa4(%esp),%eax
 8048713:	83 38 08             	cmpl   $0x8,(%eax)
 8048716:	75 14                	jne    804872c <format_integer+0x1ee>
 8048718:	8d 44 24 40          	lea    0x40(%esp),%eax
 804871c:	39 c3                	cmp    %eax,%ebx
 804871e:	74 06                	je     8048726 <format_integer+0x1e8>
 8048720:	80 7b ff 30          	cmpb   $0x30,-0x1(%ebx)
 8048724:	74 06                	je     804872c <format_integer+0x1ee>
 8048726:	c6 03 30             	movb   $0x30,(%ebx)
 8048729:	8d 5b 01             	lea    0x1(%ebx),%ebx
 804872c:	29 df                	sub    %ebx,%edi
 804872e:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 8048735:	03 78 04             	add    0x4(%eax),%edi
 8048738:	83 7c 24 34 01       	cmpl   $0x1,0x34(%esp)
 804873d:	19 c0                	sbb    %eax,%eax
 804873f:	f7 d0                	not    %eax
 8048741:	83 e0 02             	and    $0x2,%eax
 8048744:	83 7c 24 30 00       	cmpl   $0x0,0x30(%esp)
 8048749:	0f 95 c1             	setne  %cl
 804874c:	89 ce                	mov    %ecx,%esi
 804874e:	29 c7                	sub    %eax,%edi
 8048750:	0f b6 c1             	movzbl %cl,%eax
 8048753:	29 c7                	sub    %eax,%edi
 8048755:	b8 00 00 00 00       	mov    $0x0,%eax
 804875a:	0f 48 f8             	cmovs  %eax,%edi
 804875d:	f6 44 24 38 11       	testb  $0x11,0x38(%esp)
 8048762:	75 1d                	jne    8048781 <format_integer+0x243>
 8048764:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 804876b:	89 04 24             	mov    %eax,(%esp)
 804876e:	8b 8c 24 ac 00 00 00 	mov    0xac(%esp),%ecx
 8048775:	89 fa                	mov    %edi,%edx
 8048777:	b8 20 00 00 00       	mov    $0x20,%eax
 804877c:	e8 91 fd ff ff       	call   8048512 <output_dup>
 8048781:	89 f0                	mov    %esi,%eax
 8048783:	84 c0                	test   %al,%al
 8048785:	74 19                	je     80487a0 <format_integer+0x262>
 8048787:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 804878e:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048792:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048796:	89 04 24             	mov    %eax,(%esp)
 8048799:	ff 94 24 ac 00 00 00 	call   *0xac(%esp)
 80487a0:	83 7c 24 34 00       	cmpl   $0x0,0x34(%esp)
 80487a5:	74 33                	je     80487da <format_integer+0x29c>
 80487a7:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 80487ae:	89 44 24 04          	mov    %eax,0x4(%esp)
 80487b2:	c7 04 24 30 00 00 00 	movl   $0x30,(%esp)
 80487b9:	ff 94 24 ac 00 00 00 	call   *0xac(%esp)
 80487c0:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 80487c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80487cb:	0f be 44 24 34       	movsbl 0x34(%esp),%eax
 80487d0:	89 04 24             	mov    %eax,(%esp)
 80487d3:	ff 94 24 ac 00 00 00 	call   *0xac(%esp)
 80487da:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 80487e1:	f6 00 10             	testb  $0x10,(%eax)
 80487e4:	74 1d                	je     8048803 <format_integer+0x2c5>
 80487e6:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 80487ed:	89 04 24             	mov    %eax,(%esp)
 80487f0:	8b 8c 24 ac 00 00 00 	mov    0xac(%esp),%ecx
 80487f7:	89 fa                	mov    %edi,%edx
 80487f9:	b8 30 00 00 00       	mov    $0x30,%eax
 80487fe:	e8 0f fd ff ff       	call   8048512 <output_dup>
 8048803:	8d 44 24 40          	lea    0x40(%esp),%eax
 8048807:	39 c3                	cmp    %eax,%ebx
 8048809:	76 2b                	jbe    8048836 <format_integer+0x2f8>
 804880b:	89 c6                	mov    %eax,%esi
 804880d:	89 7c 24 18          	mov    %edi,0x18(%esp)
 8048811:	8b bc 24 ac 00 00 00 	mov    0xac(%esp),%edi
 8048818:	8b ac 24 b0 00 00 00 	mov    0xb0(%esp),%ebp
 804881f:	83 eb 01             	sub    $0x1,%ebx
 8048822:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 8048826:	0f be 03             	movsbl (%ebx),%eax
 8048829:	89 04 24             	mov    %eax,(%esp)
 804882c:	ff d7                	call   *%edi
 804882e:	39 f3                	cmp    %esi,%ebx
 8048830:	75 ed                	jne    804881f <format_integer+0x2e1>
 8048832:	8b 7c 24 18          	mov    0x18(%esp),%edi
 8048836:	8b 84 24 a8 00 00 00 	mov    0xa8(%esp),%eax
 804883d:	f6 00 01             	testb  $0x1,(%eax)
 8048840:	74 1d                	je     804885f <format_integer+0x321>
 8048842:	8b 84 24 b0 00 00 00 	mov    0xb0(%esp),%eax
 8048849:	89 04 24             	mov    %eax,(%esp)
 804884c:	8b 8c 24 ac 00 00 00 	mov    0xac(%esp),%ecx
 8048853:	89 fa                	mov    %edi,%edx
 8048855:	b8 20 00 00 00       	mov    $0x20,%eax
 804885a:	e8 b3 fc ff ff       	call   8048512 <output_dup>
 804885f:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8048865:	5b                   	pop    %ebx
 8048866:	5e                   	pop    %esi
 8048867:	5f                   	pop    %edi
 8048868:	5d                   	pop    %ebp
 8048869:	c3                   	ret    

0804886a <format_string>:
 804886a:	55                   	push   %ebp
 804886b:	57                   	push   %edi
 804886c:	56                   	push   %esi
 804886d:	53                   	push   %ebx
 804886e:	83 ec 1c             	sub    $0x1c,%esp
 8048871:	89 c5                	mov    %eax,%ebp
 8048873:	89 d3                	mov    %edx,%ebx
 8048875:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048879:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 804887d:	8b 74 24 30          	mov    0x30(%esp),%esi
 8048881:	8b 7c 24 34          	mov    0x34(%esp),%edi
 8048885:	8b 51 04             	mov    0x4(%ecx),%edx
 8048888:	39 da                	cmp    %ebx,%edx
 804888a:	7e 16                	jle    80488a2 <format_string+0x38>
 804888c:	f6 01 01             	testb  $0x1,(%ecx)
 804888f:	75 11                	jne    80488a2 <format_string+0x38>
 8048891:	29 da                	sub    %ebx,%edx
 8048893:	89 3c 24             	mov    %edi,(%esp)
 8048896:	89 f1                	mov    %esi,%ecx
 8048898:	b8 20 00 00 00       	mov    $0x20,%eax
 804889d:	e8 70 fc ff ff       	call   8048512 <output_dup>
 80488a2:	8b 44 24 08          	mov    0x8(%esp),%eax
 80488a6:	85 c0                	test   %eax,%eax
 80488a8:	7e 17                	jle    80488c1 <format_string+0x57>
 80488aa:	89 eb                	mov    %ebp,%ebx
 80488ac:	01 c5                	add    %eax,%ebp
 80488ae:	89 7c 24 04          	mov    %edi,0x4(%esp)
 80488b2:	0f be 03             	movsbl (%ebx),%eax
 80488b5:	89 04 24             	mov    %eax,(%esp)
 80488b8:	ff d6                	call   *%esi
 80488ba:	83 c3 01             	add    $0x1,%ebx
 80488bd:	39 eb                	cmp    %ebp,%ebx
 80488bf:	75 ed                	jne    80488ae <format_string+0x44>
 80488c1:	8b 44 24 0c          	mov    0xc(%esp),%eax
 80488c5:	8b 50 04             	mov    0x4(%eax),%edx
 80488c8:	39 54 24 08          	cmp    %edx,0x8(%esp)
 80488cc:	7d 18                	jge    80488e6 <format_string+0x7c>
 80488ce:	f6 00 01             	testb  $0x1,(%eax)
 80488d1:	74 13                	je     80488e6 <format_string+0x7c>
 80488d3:	2b 54 24 08          	sub    0x8(%esp),%edx
 80488d7:	89 3c 24             	mov    %edi,(%esp)
 80488da:	89 f1                	mov    %esi,%ecx
 80488dc:	b8 20 00 00 00       	mov    $0x20,%eax
 80488e1:	e8 2c fc ff ff       	call   8048512 <output_dup>
 80488e6:	83 c4 1c             	add    $0x1c,%esp
 80488e9:	5b                   	pop    %ebx
 80488ea:	5e                   	pop    %esi
 80488eb:	5f                   	pop    %edi
 80488ec:	5d                   	pop    %ebp
 80488ed:	c3                   	ret    

080488ee <printf>:
 80488ee:	83 ec 1c             	sub    $0x1c,%esp
 80488f1:	8d 44 24 24          	lea    0x24(%esp),%eax
 80488f5:	89 44 24 04          	mov    %eax,0x4(%esp)
 80488f9:	8b 44 24 20          	mov    0x20(%esp),%eax
 80488fd:	89 04 24             	mov    %eax,(%esp)
 8048900:	e8 20 fb ff ff       	call   8048425 <vprintf>
 8048905:	83 c4 1c             	add    $0x1c,%esp
 8048908:	c3                   	ret    

08048909 <__printf>:
 8048909:	83 ec 1c             	sub    $0x1c,%esp
 804890c:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048910:	8b 54 24 28          	mov    0x28(%esp),%edx
 8048914:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8048918:	8b 54 24 24          	mov    0x24(%esp),%edx
 804891c:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048920:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048924:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048928:	89 04 24             	mov    %eax,(%esp)
 804892b:	e8 04 00 00 00       	call   8048934 <__vprintf>
 8048930:	83 c4 1c             	add    $0x1c,%esp
 8048933:	c3                   	ret    

08048934 <__vprintf>:
 8048934:	55                   	push   %ebp
 8048935:	57                   	push   %edi
 8048936:	56                   	push   %esi
 8048937:	53                   	push   %ebx
 8048938:	83 ec 5c             	sub    $0x5c,%esp
 804893b:	8b 7c 24 70          	mov    0x70(%esp),%edi
 804893f:	8b 6c 24 74          	mov    0x74(%esp),%ebp
 8048943:	0f b6 07             	movzbl (%edi),%eax
 8048946:	84 c0                	test   %al,%al
 8048948:	0f 84 1c 06 00 00    	je     8048f6a <__vprintf+0x636>
 804894e:	3c 25                	cmp    $0x25,%al
 8048950:	74 19                	je     804896b <__vprintf+0x37>
 8048952:	8b 5c 24 7c          	mov    0x7c(%esp),%ebx
 8048956:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804895a:	0f be c0             	movsbl %al,%eax
 804895d:	89 04 24             	mov    %eax,(%esp)
 8048960:	ff 54 24 78          	call   *0x78(%esp)
 8048964:	89 fb                	mov    %edi,%ebx
 8048966:	e9 d5 05 00 00       	jmp    8048f40 <__vprintf+0x60c>
 804896b:	8d 77 01             	lea    0x1(%edi),%esi
 804896e:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048973:	80 7f 01 25          	cmpb   $0x25,0x1(%edi)
 8048977:	75 1c                	jne    8048995 <__vprintf+0x61>
 8048979:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804897d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048981:	c7 04 24 25 00 00 00 	movl   $0x25,(%esp)
 8048988:	ff 54 24 78          	call   *0x78(%esp)
 804898c:	89 f3                	mov    %esi,%ebx
 804898e:	e9 ad 05 00 00       	jmp    8048f40 <__vprintf+0x60c>
 8048993:	89 d6                	mov    %edx,%esi
 8048995:	8d 56 01             	lea    0x1(%esi),%edx
 8048998:	0f b6 5a ff          	movzbl -0x1(%edx),%ebx
 804899c:	8d 43 e0             	lea    -0x20(%ebx),%eax
 804899f:	3c 10                	cmp    $0x10,%al
 80489a1:	77 29                	ja     80489cc <__vprintf+0x98>
 80489a3:	0f b6 c0             	movzbl %al,%eax
 80489a6:	ff 24 85 8c 9d 04 08 	jmp    *0x8049d8c(,%eax,4)
 80489ad:	83 c9 01             	or     $0x1,%ecx
 80489b0:	eb e1                	jmp    8048993 <__vprintf+0x5f>
 80489b2:	83 c9 02             	or     $0x2,%ecx
 80489b5:	eb dc                	jmp    8048993 <__vprintf+0x5f>
 80489b7:	83 c9 04             	or     $0x4,%ecx
 80489ba:	eb d7                	jmp    8048993 <__vprintf+0x5f>
 80489bc:	83 c9 08             	or     $0x8,%ecx
 80489bf:	90                   	nop
 80489c0:	eb d1                	jmp    8048993 <__vprintf+0x5f>
 80489c2:	83 c9 10             	or     $0x10,%ecx
 80489c5:	eb cc                	jmp    8048993 <__vprintf+0x5f>
 80489c7:	83 c9 20             	or     $0x20,%ecx
 80489ca:	eb c7                	jmp    8048993 <__vprintf+0x5f>
 80489cc:	89 f0                	mov    %esi,%eax
 80489ce:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 80489d2:	f6 c1 01             	test   $0x1,%cl
 80489d5:	74 07                	je     80489de <__vprintf+0xaa>
 80489d7:	83 e1 ef             	and    $0xffffffef,%ecx
 80489da:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 80489de:	8b 4c 24 40          	mov    0x40(%esp),%ecx
 80489e2:	f6 c1 02             	test   $0x2,%cl
 80489e5:	74 07                	je     80489ee <__vprintf+0xba>
 80489e7:	83 e1 fb             	and    $0xfffffffb,%ecx
 80489ea:	89 4c 24 40          	mov    %ecx,0x40(%esp)
 80489ee:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 80489f5:	00 
 80489f6:	80 fb 2a             	cmp    $0x2a,%bl
 80489f9:	74 15                	je     8048a10 <__vprintf+0xdc>
 80489fb:	0f b6 00             	movzbl (%eax),%eax
 80489fe:	0f be c8             	movsbl %al,%ecx
 8048a01:	83 e9 30             	sub    $0x30,%ecx
 8048a04:	ba 00 00 00 00       	mov    $0x0,%edx
 8048a09:	83 f9 09             	cmp    $0x9,%ecx
 8048a0c:	76 10                	jbe    8048a1e <__vprintf+0xea>
 8048a0e:	eb 40                	jmp    8048a50 <__vprintf+0x11c>
 8048a10:	8b 45 00             	mov    0x0(%ebp),%eax
 8048a13:	89 44 24 44          	mov    %eax,0x44(%esp)
 8048a17:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048a1a:	89 d6                	mov    %edx,%esi
 8048a1c:	eb 1f                	jmp    8048a3d <__vprintf+0x109>
 8048a1e:	8d 14 92             	lea    (%edx,%edx,4),%edx
 8048a21:	0f be c0             	movsbl %al,%eax
 8048a24:	8d 54 50 d0          	lea    -0x30(%eax,%edx,2),%edx
 8048a28:	83 c6 01             	add    $0x1,%esi
 8048a2b:	0f b6 06             	movzbl (%esi),%eax
 8048a2e:	0f be c8             	movsbl %al,%ecx
 8048a31:	83 e9 30             	sub    $0x30,%ecx
 8048a34:	83 f9 09             	cmp    $0x9,%ecx
 8048a37:	76 e5                	jbe    8048a1e <__vprintf+0xea>
 8048a39:	89 54 24 44          	mov    %edx,0x44(%esp)
 8048a3d:	8b 44 24 44          	mov    0x44(%esp),%eax
 8048a41:	85 c0                	test   %eax,%eax
 8048a43:	79 0b                	jns    8048a50 <__vprintf+0x11c>
 8048a45:	f7 d8                	neg    %eax
 8048a47:	89 44 24 44          	mov    %eax,0x44(%esp)
 8048a4b:	83 4c 24 40 01       	orl    $0x1,0x40(%esp)
 8048a50:	c7 44 24 48 ff ff ff 	movl   $0xffffffff,0x48(%esp)
 8048a57:	ff 
 8048a58:	80 3e 2e             	cmpb   $0x2e,(%esi)
 8048a5b:	0f 85 f0 04 00 00    	jne    8048f51 <__vprintf+0x61d>
 8048a61:	80 7e 01 2a          	cmpb   $0x2a,0x1(%esi)
 8048a65:	75 0f                	jne    8048a76 <__vprintf+0x142>
 8048a67:	83 c6 02             	add    $0x2,%esi
 8048a6a:	8b 45 00             	mov    0x0(%ebp),%eax
 8048a6d:	89 44 24 48          	mov    %eax,0x48(%esp)
 8048a71:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048a74:	eb 44                	jmp    8048aba <__vprintf+0x186>
 8048a76:	8d 56 01             	lea    0x1(%esi),%edx
 8048a79:	c7 44 24 48 00 00 00 	movl   $0x0,0x48(%esp)
 8048a80:	00 
 8048a81:	0f b6 46 01          	movzbl 0x1(%esi),%eax
 8048a85:	0f be c8             	movsbl %al,%ecx
 8048a88:	83 e9 30             	sub    $0x30,%ecx
 8048a8b:	83 f9 09             	cmp    $0x9,%ecx
 8048a8e:	0f 87 c6 04 00 00    	ja     8048f5a <__vprintf+0x626>
 8048a94:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048a99:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 8048a9c:	0f be c0             	movsbl %al,%eax
 8048a9f:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
 8048aa3:	83 c2 01             	add    $0x1,%edx
 8048aa6:	0f b6 02             	movzbl (%edx),%eax
 8048aa9:	0f be d8             	movsbl %al,%ebx
 8048aac:	83 eb 30             	sub    $0x30,%ebx
 8048aaf:	83 fb 09             	cmp    $0x9,%ebx
 8048ab2:	76 e5                	jbe    8048a99 <__vprintf+0x165>
 8048ab4:	89 4c 24 48          	mov    %ecx,0x48(%esp)
 8048ab8:	89 d6                	mov    %edx,%esi
 8048aba:	83 7c 24 48 00       	cmpl   $0x0,0x48(%esp)
 8048abf:	0f 89 97 04 00 00    	jns    8048f5c <__vprintf+0x628>
 8048ac5:	c7 44 24 48 ff ff ff 	movl   $0xffffffff,0x48(%esp)
 8048acc:	ff 
 8048acd:	e9 7f 04 00 00       	jmp    8048f51 <__vprintf+0x61d>
 8048ad2:	c7 44 24 4c 03 00 00 	movl   $0x3,0x4c(%esp)
 8048ad9:	00 
 8048ada:	8d 5e 01             	lea    0x1(%esi),%ebx
 8048add:	0f b6 3e             	movzbl (%esi),%edi
 8048ae0:	8d 57 98             	lea    -0x68(%edi),%edx
 8048ae3:	80 fa 12             	cmp    $0x12,%dl
 8048ae6:	77 62                	ja     8048b4a <__vprintf+0x216>
 8048ae8:	0f b6 d2             	movzbl %dl,%edx
 8048aeb:	ff 24 95 d0 9d 04 08 	jmp    *0x8049dd0(,%edx,4)
 8048af2:	80 7e 01 68          	cmpb   $0x68,0x1(%esi)
 8048af6:	75 0d                	jne    8048b05 <__vprintf+0x1d1>
 8048af8:	8d 5e 02             	lea    0x2(%esi),%ebx
 8048afb:	c7 44 24 4c 01 00 00 	movl   $0x1,0x4c(%esp)
 8048b02:	00 
 8048b03:	eb 47                	jmp    8048b4c <__vprintf+0x218>
 8048b05:	c7 44 24 4c 02 00 00 	movl   $0x2,0x4c(%esp)
 8048b0c:	00 
 8048b0d:	eb 3d                	jmp    8048b4c <__vprintf+0x218>
 8048b0f:	c7 44 24 4c 04 00 00 	movl   $0x4,0x4c(%esp)
 8048b16:	00 
 8048b17:	eb 33                	jmp    8048b4c <__vprintf+0x218>
 8048b19:	80 7e 01 6c          	cmpb   $0x6c,0x1(%esi)
 8048b1d:	75 0d                	jne    8048b2c <__vprintf+0x1f8>
 8048b1f:	8d 5e 02             	lea    0x2(%esi),%ebx
 8048b22:	c7 44 24 4c 06 00 00 	movl   $0x6,0x4c(%esp)
 8048b29:	00 
 8048b2a:	eb 20                	jmp    8048b4c <__vprintf+0x218>
 8048b2c:	c7 44 24 4c 05 00 00 	movl   $0x5,0x4c(%esp)
 8048b33:	00 
 8048b34:	eb 16                	jmp    8048b4c <__vprintf+0x218>
 8048b36:	c7 44 24 4c 07 00 00 	movl   $0x7,0x4c(%esp)
 8048b3d:	00 
 8048b3e:	eb 0c                	jmp    8048b4c <__vprintf+0x218>
 8048b40:	c7 44 24 4c 08 00 00 	movl   $0x8,0x4c(%esp)
 8048b47:	00 
 8048b48:	eb 02                	jmp    8048b4c <__vprintf+0x218>
 8048b4a:	89 f3                	mov    %esi,%ebx
 8048b4c:	0f b6 0b             	movzbl (%ebx),%ecx
 8048b4f:	8d 51 bb             	lea    -0x45(%ecx),%edx
 8048b52:	80 fa 33             	cmp    $0x33,%dl
 8048b55:	0f 87 c2 03 00 00    	ja     8048f1d <__vprintf+0x5e9>
 8048b5b:	0f b6 d2             	movzbl %dl,%edx
 8048b5e:	ff 24 95 1c 9e 04 08 	jmp    *0x8049e1c(,%edx,4)
 8048b65:	83 7c 24 4c 08       	cmpl   $0x8,0x4c(%esp)
 8048b6a:	0f 87 c9 00 00 00    	ja     8048c39 <__vprintf+0x305>
 8048b70:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 8048b74:	ff 24 85 ec 9e 04 08 	jmp    *0x8049eec(,%eax,4)
 8048b7b:	0f be 75 00          	movsbl 0x0(%ebp),%esi
 8048b7f:	89 f0                	mov    %esi,%eax
 8048b81:	99                   	cltd   
 8048b82:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048b86:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048b8a:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048b8d:	e9 cb 00 00 00       	jmp    8048c5d <__vprintf+0x329>
 8048b92:	0f bf 75 00          	movswl 0x0(%ebp),%esi
 8048b96:	89 f0                	mov    %esi,%eax
 8048b98:	99                   	cltd   
 8048b99:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048b9d:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048ba1:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048ba4:	e9 b4 00 00 00       	jmp    8048c5d <__vprintf+0x329>
 8048ba9:	8b 75 00             	mov    0x0(%ebp),%esi
 8048bac:	89 f0                	mov    %esi,%eax
 8048bae:	99                   	cltd   
 8048baf:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048bb3:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048bb7:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048bba:	e9 9e 00 00 00       	jmp    8048c5d <__vprintf+0x329>
 8048bbf:	8b 45 00             	mov    0x0(%ebp),%eax
 8048bc2:	8b 55 04             	mov    0x4(%ebp),%edx
 8048bc5:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048bc9:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048bcd:	8d 6d 08             	lea    0x8(%ebp),%ebp
 8048bd0:	e9 88 00 00 00       	jmp    8048c5d <__vprintf+0x329>
 8048bd5:	8b 75 00             	mov    0x0(%ebp),%esi
 8048bd8:	89 f0                	mov    %esi,%eax
 8048bda:	99                   	cltd   
 8048bdb:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048bdf:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048be3:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048be6:	eb 75                	jmp    8048c5d <__vprintf+0x329>
 8048be8:	8b 45 00             	mov    0x0(%ebp),%eax
 8048beb:	8b 55 04             	mov    0x4(%ebp),%edx
 8048bee:	89 44 24 18          	mov    %eax,0x18(%esp)
 8048bf2:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048bf6:	8d 6d 08             	lea    0x8(%ebp),%ebp
 8048bf9:	eb 62                	jmp    8048c5d <__vprintf+0x329>
 8048bfb:	8b 75 00             	mov    0x0(%ebp),%esi
 8048bfe:	89 f0                	mov    %esi,%eax
 8048c00:	99                   	cltd   
 8048c01:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048c05:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8048c09:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048c0c:	eb 4f                	jmp    8048c5d <__vprintf+0x329>
 8048c0e:	8d 45 04             	lea    0x4(%ebp),%eax
 8048c11:	8b 7d 00             	mov    0x0(%ebp),%edi
 8048c14:	bd 00 00 00 00       	mov    $0x0,%ebp
 8048c19:	89 fe                	mov    %edi,%esi
 8048c1b:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048c1f:	89 6c 24 1c          	mov    %ebp,0x1c(%esp)
 8048c23:	89 c5                	mov    %eax,%ebp
 8048c25:	81 fe ff ff ff 7f    	cmp    $0x7fffffff,%esi
 8048c2b:	76 30                	jbe    8048c5d <__vprintf+0x329>
 8048c2d:	83 44 24 18 00       	addl   $0x0,0x18(%esp)
 8048c32:	83 54 24 1c ff       	adcl   $0xffffffff,0x1c(%esp)
 8048c37:	eb 24                	jmp    8048c5d <__vprintf+0x329>
 8048c39:	c7 44 24 0c b4 a1 04 	movl   $0x804a1b4,0xc(%esp)
 8048c40:	08 
 8048c41:	c7 44 24 08 34 9f 04 	movl   $0x8049f34,0x8(%esp)
 8048c48:	08 
 8048c49:	c7 44 24 04 dc 00 00 	movl   $0xdc,0x4(%esp)
 8048c50:	00 
 8048c51:	c7 04 24 09 a0 04 08 	movl   $0x804a009,(%esp)
 8048c58:	e8 57 f6 ff ff       	call   80482b4 <debug_panic>
 8048c5d:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8048c61:	c1 fa 1f             	sar    $0x1f,%edx
 8048c64:	89 d7                	mov    %edx,%edi
 8048c66:	33 7c 24 18          	xor    0x18(%esp),%edi
 8048c6a:	89 7c 24 20          	mov    %edi,0x20(%esp)
 8048c6e:	89 d7                	mov    %edx,%edi
 8048c70:	33 7c 24 1c          	xor    0x1c(%esp),%edi
 8048c74:	89 7c 24 24          	mov    %edi,0x24(%esp)
 8048c78:	8b 74 24 20          	mov    0x20(%esp),%esi
 8048c7c:	8b 7c 24 24          	mov    0x24(%esp),%edi
 8048c80:	29 d6                	sub    %edx,%esi
 8048c82:	19 d7                	sbb    %edx,%edi
 8048c84:	89 f0                	mov    %esi,%eax
 8048c86:	89 fa                	mov    %edi,%edx
 8048c88:	8b 7c 24 7c          	mov    0x7c(%esp),%edi
 8048c8c:	89 7c 24 10          	mov    %edi,0x10(%esp)
 8048c90:	8b 7c 24 78          	mov    0x78(%esp),%edi
 8048c94:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8048c98:	8d 7c 24 40          	lea    0x40(%esp),%edi
 8048c9c:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8048ca0:	c7 44 24 04 70 9f 04 	movl   $0x8049f70,0x4(%esp)
 8048ca7:	08 
 8048ca8:	8b 4c 24 1c          	mov    0x1c(%esp),%ecx
 8048cac:	c1 e9 1f             	shr    $0x1f,%ecx
 8048caf:	89 0c 24             	mov    %ecx,(%esp)
 8048cb2:	b9 01 00 00 00       	mov    $0x1,%ecx
 8048cb7:	e8 82 f8 ff ff       	call   804853e <format_integer>
 8048cbc:	e9 7f 02 00 00       	jmp    8048f40 <__vprintf+0x60c>
 8048cc1:	83 7c 24 4c 08       	cmpl   $0x8,0x4c(%esp)
 8048cc6:	0f 87 b7 00 00 00    	ja     8048d83 <__vprintf+0x44f>
 8048ccc:	8b 44 24 4c          	mov    0x4c(%esp),%eax
 8048cd0:	ff 24 85 10 9f 04 08 	jmp    *0x8049f10(,%eax,4)
 8048cd7:	0f b6 45 00          	movzbl 0x0(%ebp),%eax
 8048cdb:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048cdf:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8048ce6:	00 
 8048ce7:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048cea:	e9 b8 00 00 00       	jmp    8048da7 <__vprintf+0x473>
 8048cef:	0f b7 45 00          	movzwl 0x0(%ebp),%eax
 8048cf3:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048cf7:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8048cfe:	00 
 8048cff:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048d02:	e9 a0 00 00 00       	jmp    8048da7 <__vprintf+0x473>
 8048d07:	8b 45 00             	mov    0x0(%ebp),%eax
 8048d0a:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d0f:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048d13:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 8048d17:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048d1a:	e9 88 00 00 00       	jmp    8048da7 <__vprintf+0x473>
 8048d1f:	8b 45 00             	mov    0x0(%ebp),%eax
 8048d22:	8b 55 04             	mov    0x4(%ebp),%edx
 8048d25:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048d29:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 8048d2d:	8d 6d 08             	lea    0x8(%ebp),%ebp
 8048d30:	eb 75                	jmp    8048da7 <__vprintf+0x473>
 8048d32:	8b 45 00             	mov    0x0(%ebp),%eax
 8048d35:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d3a:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048d3e:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 8048d42:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048d45:	eb 60                	jmp    8048da7 <__vprintf+0x473>
 8048d47:	8b 45 00             	mov    0x0(%ebp),%eax
 8048d4a:	8b 55 04             	mov    0x4(%ebp),%edx
 8048d4d:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048d51:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 8048d55:	8d 6d 08             	lea    0x8(%ebp),%ebp
 8048d58:	eb 4d                	jmp    8048da7 <__vprintf+0x473>
 8048d5a:	8b 45 00             	mov    0x0(%ebp),%eax
 8048d5d:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048d61:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8048d68:	00 
 8048d69:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048d6c:	eb 39                	jmp    8048da7 <__vprintf+0x473>
 8048d6e:	8b 45 00             	mov    0x0(%ebp),%eax
 8048d71:	ba 00 00 00 00       	mov    $0x0,%edx
 8048d76:	89 44 24 28          	mov    %eax,0x28(%esp)
 8048d7a:	89 54 24 2c          	mov    %edx,0x2c(%esp)
 8048d7e:	8d 6d 04             	lea    0x4(%ebp),%ebp
 8048d81:	eb 24                	jmp    8048da7 <__vprintf+0x473>
 8048d83:	c7 44 24 0c b4 a1 04 	movl   $0x804a1b4,0xc(%esp)
 8048d8a:	08 
 8048d8b:	c7 44 24 08 34 9f 04 	movl   $0x8049f34,0x8(%esp)
 8048d92:	08 
 8048d93:	c7 44 24 04 0b 01 00 	movl   $0x10b,0x4(%esp)
 8048d9a:	00 
 8048d9b:	c7 04 24 09 a0 04 08 	movl   $0x804a009,(%esp)
 8048da2:	e8 0d f5 ff ff       	call   80482b4 <debug_panic>
 8048da7:	80 f9 6f             	cmp    $0x6f,%cl
 8048daa:	74 4d                	je     8048df9 <__vprintf+0x4c5>
 8048dac:	80 f9 6f             	cmp    $0x6f,%cl
 8048daf:	7f 07                	jg     8048db8 <__vprintf+0x484>
 8048db1:	80 f9 58             	cmp    $0x58,%cl
 8048db4:	74 18                	je     8048dce <__vprintf+0x49a>
 8048db6:	eb 1d                	jmp    8048dd5 <__vprintf+0x4a1>
 8048db8:	80 f9 75             	cmp    $0x75,%cl
 8048dbb:	90                   	nop
 8048dbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048dc0:	74 3e                	je     8048e00 <__vprintf+0x4cc>
 8048dc2:	80 f9 78             	cmp    $0x78,%cl
 8048dc5:	75 0e                	jne    8048dd5 <__vprintf+0x4a1>
 8048dc7:	b8 50 9f 04 08       	mov    $0x8049f50,%eax
 8048dcc:	eb 37                	jmp    8048e05 <__vprintf+0x4d1>
 8048dce:	b8 40 9f 04 08       	mov    $0x8049f40,%eax
 8048dd3:	eb 30                	jmp    8048e05 <__vprintf+0x4d1>
 8048dd5:	c7 44 24 0c b4 a1 04 	movl   $0x804a1b4,0xc(%esp)
 8048ddc:	08 
 8048ddd:	c7 44 24 08 34 9f 04 	movl   $0x8049f34,0x8(%esp)
 8048de4:	08 
 8048de5:	c7 44 24 04 14 01 00 	movl   $0x114,0x4(%esp)
 8048dec:	00 
 8048ded:	c7 04 24 09 a0 04 08 	movl   $0x804a009,(%esp)
 8048df4:	e8 bb f4 ff ff       	call   80482b4 <debug_panic>
 8048df9:	b8 60 9f 04 08       	mov    $0x8049f60,%eax
 8048dfe:	eb 05                	jmp    8048e05 <__vprintf+0x4d1>
 8048e00:	b8 70 9f 04 08       	mov    $0x8049f70,%eax
 8048e05:	8b 7c 24 7c          	mov    0x7c(%esp),%edi
 8048e09:	89 7c 24 10          	mov    %edi,0x10(%esp)
 8048e0d:	8b 7c 24 78          	mov    0x78(%esp),%edi
 8048e11:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8048e15:	8d 7c 24 40          	lea    0x40(%esp),%edi
 8048e19:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8048e1d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048e21:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048e28:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048e2d:	8b 44 24 28          	mov    0x28(%esp),%eax
 8048e31:	8b 54 24 2c          	mov    0x2c(%esp),%edx
 8048e35:	e8 04 f7 ff ff       	call   804853e <format_integer>
 8048e3a:	e9 01 01 00 00       	jmp    8048f40 <__vprintf+0x60c>
 8048e3f:	8d 75 04             	lea    0x4(%ebp),%esi
 8048e42:	8b 45 00             	mov    0x0(%ebp),%eax
 8048e45:	88 44 24 3f          	mov    %al,0x3f(%esp)
 8048e49:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048e4d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048e51:	8b 44 24 78          	mov    0x78(%esp),%eax
 8048e55:	89 04 24             	mov    %eax,(%esp)
 8048e58:	8d 4c 24 40          	lea    0x40(%esp),%ecx
 8048e5c:	ba 01 00 00 00       	mov    $0x1,%edx
 8048e61:	8d 44 24 3f          	lea    0x3f(%esp),%eax
 8048e65:	e8 00 fa ff ff       	call   804886a <format_string>
 8048e6a:	89 f5                	mov    %esi,%ebp
 8048e6c:	e9 cf 00 00 00       	jmp    8048f40 <__vprintf+0x60c>
 8048e71:	8d 75 04             	lea    0x4(%ebp),%esi
 8048e74:	8b 7d 00             	mov    0x0(%ebp),%edi
 8048e77:	85 ff                	test   %edi,%edi
 8048e79:	ba 02 a0 04 08       	mov    $0x804a002,%edx
 8048e7e:	0f 44 fa             	cmove  %edx,%edi
 8048e81:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048e85:	89 3c 24             	mov    %edi,(%esp)
 8048e88:	e8 cd 0a 00 00       	call   804995a <strnlen>
 8048e8d:	8b 4c 24 7c          	mov    0x7c(%esp),%ecx
 8048e91:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048e95:	8b 4c 24 78          	mov    0x78(%esp),%ecx
 8048e99:	89 0c 24             	mov    %ecx,(%esp)
 8048e9c:	8d 4c 24 40          	lea    0x40(%esp),%ecx
 8048ea0:	89 c2                	mov    %eax,%edx
 8048ea2:	89 f8                	mov    %edi,%eax
 8048ea4:	e8 c1 f9 ff ff       	call   804886a <format_string>
 8048ea9:	89 f5                	mov    %esi,%ebp
 8048eab:	e9 90 00 00 00       	jmp    8048f40 <__vprintf+0x60c>
 8048eb0:	8d 75 04             	lea    0x4(%ebp),%esi
 8048eb3:	8b 45 00             	mov    0x0(%ebp),%eax
 8048eb6:	c7 44 24 40 08 00 00 	movl   $0x8,0x40(%esp)
 8048ebd:	00 
 8048ebe:	ba 00 00 00 00       	mov    $0x0,%edx
 8048ec3:	8b 7c 24 7c          	mov    0x7c(%esp),%edi
 8048ec7:	89 7c 24 10          	mov    %edi,0x10(%esp)
 8048ecb:	8b 7c 24 78          	mov    0x78(%esp),%edi
 8048ecf:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8048ed3:	8d 7c 24 40          	lea    0x40(%esp),%edi
 8048ed7:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8048edb:	c7 44 24 04 50 9f 04 	movl   $0x8049f50,0x4(%esp)
 8048ee2:	08 
 8048ee3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8048eea:	b9 00 00 00 00       	mov    $0x0,%ecx
 8048eef:	e8 4a f6 ff ff       	call   804853e <format_integer>
 8048ef4:	89 f5                	mov    %esi,%ebp
 8048ef6:	eb 48                	jmp    8048f40 <__vprintf+0x60c>
 8048ef8:	0f be c9             	movsbl %cl,%ecx
 8048efb:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8048eff:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048f03:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048f07:	8b 44 24 78          	mov    0x78(%esp),%eax
 8048f0b:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f0f:	c7 04 24 18 a0 04 08 	movl   $0x804a018,(%esp)
 8048f16:	e8 ee f9 ff ff       	call   8048909 <__printf>
 8048f1b:	eb 23                	jmp    8048f40 <__vprintf+0x60c>
 8048f1d:	0f be c9             	movsbl %cl,%ecx
 8048f20:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8048f24:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 8048f28:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048f2c:	8b 44 24 78          	mov    0x78(%esp),%eax
 8048f30:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f34:	c7 04 24 2e a0 04 08 	movl   $0x804a02e,(%esp)
 8048f3b:	e8 c9 f9 ff ff       	call   8048909 <__printf>
 8048f40:	8d 7b 01             	lea    0x1(%ebx),%edi
 8048f43:	0f b6 43 01          	movzbl 0x1(%ebx),%eax
 8048f47:	84 c0                	test   %al,%al
 8048f49:	0f 85 ff f9 ff ff    	jne    804894e <__vprintf+0x1a>
 8048f4f:	eb 19                	jmp    8048f6a <__vprintf+0x636>
 8048f51:	8b 44 24 48          	mov    0x48(%esp),%eax
 8048f55:	e9 78 fb ff ff       	jmp    8048ad2 <__vprintf+0x19e>
 8048f5a:	89 d6                	mov    %edx,%esi
 8048f5c:	8b 44 24 48          	mov    0x48(%esp),%eax
 8048f60:	83 64 24 40 ef       	andl   $0xffffffef,0x40(%esp)
 8048f65:	e9 68 fb ff ff       	jmp    8048ad2 <__vprintf+0x19e>
 8048f6a:	83 c4 5c             	add    $0x5c,%esp
 8048f6d:	5b                   	pop    %ebx
 8048f6e:	5e                   	pop    %esi
 8048f6f:	5f                   	pop    %edi
 8048f70:	5d                   	pop    %ebp
 8048f71:	c3                   	ret    

08048f72 <vsnprintf>:
 8048f72:	53                   	push   %ebx
 8048f73:	83 ec 28             	sub    $0x28,%esp
 8048f76:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048f7a:	8b 54 24 38          	mov    0x38(%esp),%edx
 8048f7e:	8b 4c 24 3c          	mov    0x3c(%esp),%ecx
 8048f82:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 8048f86:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8048f8a:	c7 44 24 18 00 00 00 	movl   $0x0,0x18(%esp)
 8048f91:	00 
 8048f92:	85 c0                	test   %eax,%eax
 8048f94:	74 2c                	je     8048fc2 <vsnprintf+0x50>
 8048f96:	83 e8 01             	sub    $0x1,%eax
 8048f99:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048f9d:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048fa1:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048fa5:	c7 44 24 08 f0 84 04 	movl   $0x80484f0,0x8(%esp)
 8048fac:	08 
 8048fad:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048fb1:	89 14 24             	mov    %edx,(%esp)
 8048fb4:	e8 7b f9 ff ff       	call   8048934 <__vprintf>
 8048fb9:	8b 44 24 14          	mov    0x14(%esp),%eax
 8048fbd:	c6 00 00             	movb   $0x0,(%eax)
 8048fc0:	eb 24                	jmp    8048fe6 <vsnprintf+0x74>
 8048fc2:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%esp)
 8048fc9:	00 
 8048fca:	8d 44 24 14          	lea    0x14(%esp),%eax
 8048fce:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048fd2:	c7 44 24 08 f0 84 04 	movl   $0x80484f0,0x8(%esp)
 8048fd9:	08 
 8048fda:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048fde:	89 14 24             	mov    %edx,(%esp)
 8048fe1:	e8 4e f9 ff ff       	call   8048934 <__vprintf>
 8048fe6:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048fea:	83 c4 28             	add    $0x28,%esp
 8048fed:	5b                   	pop    %ebx
 8048fee:	c3                   	ret    

08048fef <snprintf>:
 8048fef:	83 ec 1c             	sub    $0x1c,%esp
 8048ff2:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8048ff6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048ffa:	8b 44 24 28          	mov    0x28(%esp),%eax
 8048ffe:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049002:	8b 44 24 24          	mov    0x24(%esp),%eax
 8049006:	89 44 24 04          	mov    %eax,0x4(%esp)
 804900a:	8b 44 24 20          	mov    0x20(%esp),%eax
 804900e:	89 04 24             	mov    %eax,(%esp)
 8049011:	e8 5c ff ff ff       	call   8048f72 <vsnprintf>
 8049016:	83 c4 1c             	add    $0x1c,%esp
 8049019:	c3                   	ret    

0804901a <hex_dump>:
 804901a:	55                   	push   %ebp
 804901b:	57                   	push   %edi
 804901c:	56                   	push   %esi
 804901d:	53                   	push   %ebx
 804901e:	83 ec 2c             	sub    $0x2c,%esp
 8049021:	0f b6 44 24 4c       	movzbl 0x4c(%esp),%eax
 8049026:	88 44 24 1f          	mov    %al,0x1f(%esp)
 804902a:	83 7c 24 48 00       	cmpl   $0x0,0x48(%esp)
 804902f:	0f 84 7c 01 00 00    	je     80491b1 <hex_dump+0x197>
 8049035:	8b 7c 24 40          	mov    0x40(%esp),%edi
 8049039:	83 e7 0f             	and    $0xf,%edi
 804903c:	b8 10 00 00 00       	mov    $0x10,%eax
 8049041:	29 f8                	sub    %edi,%eax
 8049043:	89 fe                	mov    %edi,%esi
 8049045:	03 74 24 48          	add    0x48(%esp),%esi
 8049049:	3b 44 24 48          	cmp    0x48(%esp),%eax
 804904d:	b8 10 00 00 00       	mov    $0x10,%eax
 8049052:	0f 46 f0             	cmovbe %eax,%esi
 8049055:	89 f0                	mov    %esi,%eax
 8049057:	29 f8                	sub    %edi,%eax
 8049059:	89 44 24 18          	mov    %eax,0x18(%esp)
 804905d:	8b 44 24 40          	mov    0x40(%esp),%eax
 8049061:	83 e0 f0             	and    $0xfffffff0,%eax
 8049064:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049068:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804906f:	00 
 8049070:	c7 04 24 45 a0 04 08 	movl   $0x804a045,(%esp)
 8049077:	e8 72 f8 ff ff       	call   80488ee <printf>
 804907c:	85 ff                	test   %edi,%edi
 804907e:	74 1a                	je     804909a <hex_dump+0x80>
 8049080:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049085:	c7 04 24 4d a0 04 08 	movl   $0x804a04d,(%esp)
 804908c:	e8 5d f8 ff ff       	call   80488ee <printf>
 8049091:	83 c3 01             	add    $0x1,%ebx
 8049094:	39 fb                	cmp    %edi,%ebx
 8049096:	75 ed                	jne    8049085 <hex_dump+0x6b>
 8049098:	eb 08                	jmp    80490a2 <hex_dump+0x88>
 804909a:	89 fb                	mov    %edi,%ebx
 804909c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80490a0:	eb 02                	jmp    80490a4 <hex_dump+0x8a>
 80490a2:	89 fb                	mov    %edi,%ebx
 80490a4:	39 de                	cmp    %ebx,%esi
 80490a6:	76 38                	jbe    80490e0 <hex_dump+0xc6>
 80490a8:	8b 6c 24 44          	mov    0x44(%esp),%ebp
 80490ac:	29 fd                	sub    %edi,%ebp
 80490ae:	83 fb 07             	cmp    $0x7,%ebx
 80490b1:	b8 2d 00 00 00       	mov    $0x2d,%eax
 80490b6:	b9 20 00 00 00       	mov    $0x20,%ecx
 80490bb:	0f 45 c1             	cmovne %ecx,%eax
 80490be:	89 44 24 08          	mov    %eax,0x8(%esp)
 80490c2:	0f b6 44 1d 00       	movzbl 0x0(%ebp,%ebx,1),%eax
 80490c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80490cb:	c7 04 24 51 a0 04 08 	movl   $0x804a051,(%esp)
 80490d2:	e8 17 f8 ff ff       	call   80488ee <printf>
 80490d7:	83 c3 01             	add    $0x1,%ebx
 80490da:	39 de                	cmp    %ebx,%esi
 80490dc:	77 d0                	ja     80490ae <hex_dump+0x94>
 80490de:	89 f3                	mov    %esi,%ebx
 80490e0:	80 7c 24 1f 00       	cmpb   $0x0,0x1f(%esp)
 80490e5:	0f 84 a4 00 00 00    	je     804918f <hex_dump+0x175>
 80490eb:	83 fb 0f             	cmp    $0xf,%ebx
 80490ee:	77 14                	ja     8049104 <hex_dump+0xea>
 80490f0:	c7 04 24 4d a0 04 08 	movl   $0x804a04d,(%esp)
 80490f7:	e8 f2 f7 ff ff       	call   80488ee <printf>
 80490fc:	83 c3 01             	add    $0x1,%ebx
 80490ff:	83 fb 10             	cmp    $0x10,%ebx
 8049102:	75 ec                	jne    80490f0 <hex_dump+0xd6>
 8049104:	c7 04 24 7c 00 00 00 	movl   $0x7c,(%esp)
 804910b:	e8 55 f2 ff ff       	call   8048365 <putchar>
 8049110:	85 ff                	test   %edi,%edi
 8049112:	74 1a                	je     804912e <hex_dump+0x114>
 8049114:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049119:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
 8049120:	e8 40 f2 ff ff       	call   8048365 <putchar>
 8049125:	83 c3 01             	add    $0x1,%ebx
 8049128:	39 fb                	cmp    %edi,%ebx
 804912a:	75 ed                	jne    8049119 <hex_dump+0xff>
 804912c:	eb 04                	jmp    8049132 <hex_dump+0x118>
 804912e:	89 fb                	mov    %edi,%ebx
 8049130:	eb 02                	jmp    8049134 <hex_dump+0x11a>
 8049132:	89 fb                	mov    %edi,%ebx
 8049134:	39 de                	cmp    %ebx,%esi
 8049136:	76 30                	jbe    8049168 <hex_dump+0x14e>
 8049138:	8b 6c 24 44          	mov    0x44(%esp),%ebp
 804913c:	29 fd                	sub    %edi,%ebp
 804913e:	bf 2e 00 00 00       	mov    $0x2e,%edi
 8049143:	0f b6 54 1d 00       	movzbl 0x0(%ebp,%ebx,1),%edx
 8049148:	0f b6 c2             	movzbl %dl,%eax
 804914b:	8d 40 e0             	lea    -0x20(%eax),%eax
 804914e:	0f b6 d2             	movzbl %dl,%edx
 8049151:	83 f8 5e             	cmp    $0x5e,%eax
 8049154:	0f 47 d7             	cmova  %edi,%edx
 8049157:	89 14 24             	mov    %edx,(%esp)
 804915a:	e8 06 f2 ff ff       	call   8048365 <putchar>
 804915f:	83 c3 01             	add    $0x1,%ebx
 8049162:	39 de                	cmp    %ebx,%esi
 8049164:	77 dd                	ja     8049143 <hex_dump+0x129>
 8049166:	eb 02                	jmp    804916a <hex_dump+0x150>
 8049168:	89 de                	mov    %ebx,%esi
 804916a:	83 fe 0f             	cmp    $0xf,%esi
 804916d:	77 14                	ja     8049183 <hex_dump+0x169>
 804916f:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
 8049176:	e8 ea f1 ff ff       	call   8048365 <putchar>
 804917b:	83 c6 01             	add    $0x1,%esi
 804917e:	83 fe 10             	cmp    $0x10,%esi
 8049181:	75 ec                	jne    804916f <hex_dump+0x155>
 8049183:	c7 04 24 7c 00 00 00 	movl   $0x7c,(%esp)
 804918a:	e8 d6 f1 ff ff       	call   8048365 <putchar>
 804918f:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8049196:	e8 ca f1 ff ff       	call   8048365 <putchar>
 804919b:	8b 44 24 18          	mov    0x18(%esp),%eax
 804919f:	01 44 24 40          	add    %eax,0x40(%esp)
 80491a3:	01 44 24 44          	add    %eax,0x44(%esp)
 80491a7:	29 44 24 48          	sub    %eax,0x48(%esp)
 80491ab:	0f 85 84 fe ff ff    	jne    8049035 <hex_dump+0x1b>
 80491b1:	83 c4 2c             	add    $0x2c,%esp
 80491b4:	5b                   	pop    %ebx
 80491b5:	5e                   	pop    %esi
 80491b6:	5f                   	pop    %edi
 80491b7:	5d                   	pop    %ebp
 80491b8:	c3                   	ret    

080491b9 <print_human_readable_size>:
 80491b9:	56                   	push   %esi
 80491ba:	53                   	push   %ebx
 80491bb:	83 ec 14             	sub    $0x14,%esp
 80491be:	8b 4c 24 20          	mov    0x20(%esp),%ecx
 80491c2:	8b 5c 24 24          	mov    0x24(%esp),%ebx
 80491c6:	89 c8                	mov    %ecx,%eax
 80491c8:	83 f0 01             	xor    $0x1,%eax
 80491cb:	09 d8                	or     %ebx,%eax
 80491cd:	74 22                	je     80491f1 <print_human_readable_size+0x38>
 80491cf:	83 fb 00             	cmp    $0x0,%ebx
 80491d2:	77 0d                	ja     80491e1 <print_human_readable_size+0x28>
 80491d4:	be 9c b2 04 08       	mov    $0x804b29c,%esi
 80491d9:	81 f9 ff 03 00 00    	cmp    $0x3ff,%ecx
 80491df:	76 42                	jbe    8049223 <print_human_readable_size+0x6a>
 80491e1:	be 9c b2 04 08       	mov    $0x804b29c,%esi
 80491e6:	83 3d a0 b2 04 08 00 	cmpl   $0x0,0x804b2a0
 80491ed:	75 10                	jne    80491ff <print_human_readable_size+0x46>
 80491ef:	eb 32                	jmp    8049223 <print_human_readable_size+0x6a>
 80491f1:	c7 04 24 5a a0 04 08 	movl   $0x804a05a,(%esp)
 80491f8:	e8 f1 f6 ff ff       	call   80488ee <printf>
 80491fd:	eb 3e                	jmp    804923d <print_human_readable_size+0x84>
 80491ff:	89 c8                	mov    %ecx,%eax
 8049201:	89 da                	mov    %ebx,%edx
 8049203:	0f ac d8 0a          	shrd   $0xa,%ebx,%eax
 8049207:	c1 ea 0a             	shr    $0xa,%edx
 804920a:	89 c1                	mov    %eax,%ecx
 804920c:	89 d3                	mov    %edx,%ebx
 804920e:	83 c6 04             	add    $0x4,%esi
 8049211:	83 fa 00             	cmp    $0x0,%edx
 8049214:	77 07                	ja     804921d <print_human_readable_size+0x64>
 8049216:	3d ff 03 00 00       	cmp    $0x3ff,%eax
 804921b:	76 06                	jbe    8049223 <print_human_readable_size+0x6a>
 804921d:	83 7e 04 00          	cmpl   $0x0,0x4(%esi)
 8049221:	75 dc                	jne    80491ff <print_human_readable_size+0x46>
 8049223:	8b 06                	mov    (%esi),%eax
 8049225:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049229:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 804922d:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 8049231:	c7 04 24 61 a0 04 08 	movl   $0x804a061,(%esp)
 8049238:	e8 b1 f6 ff ff       	call   80488ee <printf>
 804923d:	83 c4 14             	add    $0x14,%esp
 8049240:	5b                   	pop    %ebx
 8049241:	5e                   	pop    %esi
 8049242:	c3                   	ret    
 8049243:	90                   	nop
 8049244:	90                   	nop
 8049245:	90                   	nop
 8049246:	90                   	nop
 8049247:	90                   	nop
 8049248:	90                   	nop
 8049249:	90                   	nop
 804924a:	90                   	nop
 804924b:	90                   	nop
 804924c:	90                   	nop
 804924d:	90                   	nop
 804924e:	90                   	nop
 804924f:	90                   	nop

08049250 <memcpy>:
 8049250:	56                   	push   %esi
 8049251:	53                   	push   %ebx
 8049252:	83 ec 24             	sub    $0x24,%esp
 8049255:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049259:	8b 74 24 34          	mov    0x34(%esp),%esi
 804925d:	8b 5c 24 38          	mov    0x38(%esp),%ebx
 8049261:	85 db                	test   %ebx,%ebx
 8049263:	0f 94 c2             	sete   %dl
 8049266:	85 c0                	test   %eax,%eax
 8049268:	75 30                	jne    804929a <memcpy+0x4a>
 804926a:	84 d2                	test   %dl,%dl
 804926c:	75 2c                	jne    804929a <memcpy+0x4a>
 804926e:	c7 44 24 10 b1 a0 04 	movl   $0x804a0b1,0x10(%esp)
 8049275:	08 
 8049276:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 804927d:	08 
 804927e:	c7 44 24 08 cb 9f 04 	movl   $0x8049fcb,0x8(%esp)
 8049285:	08 
 8049286:	c7 44 24 04 0c 00 00 	movl   $0xc,0x4(%esp)
 804928d:	00 
 804928e:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049295:	e8 1a f0 ff ff       	call   80482b4 <debug_panic>
 804929a:	85 f6                	test   %esi,%esi
 804929c:	75 04                	jne    80492a2 <memcpy+0x52>
 804929e:	84 d2                	test   %dl,%dl
 80492a0:	74 0b                	je     80492ad <memcpy+0x5d>
 80492a2:	ba 00 00 00 00       	mov    $0x0,%edx
 80492a7:	85 db                	test   %ebx,%ebx
 80492a9:	75 2e                	jne    80492d9 <memcpy+0x89>
 80492ab:	eb 3a                	jmp    80492e7 <memcpy+0x97>
 80492ad:	c7 44 24 10 f1 a0 04 	movl   $0x804a0f1,0x10(%esp)
 80492b4:	08 
 80492b5:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80492bc:	08 
 80492bd:	c7 44 24 08 cb 9f 04 	movl   $0x8049fcb,0x8(%esp)
 80492c4:	08 
 80492c5:	c7 44 24 04 0d 00 00 	movl   $0xd,0x4(%esp)
 80492cc:	00 
 80492cd:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80492d4:	e8 db ef ff ff       	call   80482b4 <debug_panic>
 80492d9:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 80492dd:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 80492e0:	83 c2 01             	add    $0x1,%edx
 80492e3:	39 da                	cmp    %ebx,%edx
 80492e5:	75 f2                	jne    80492d9 <memcpy+0x89>
 80492e7:	83 c4 24             	add    $0x24,%esp
 80492ea:	5b                   	pop    %ebx
 80492eb:	5e                   	pop    %esi
 80492ec:	c3                   	ret    

080492ed <memmove>:
 80492ed:	57                   	push   %edi
 80492ee:	56                   	push   %esi
 80492ef:	53                   	push   %ebx
 80492f0:	83 ec 20             	sub    $0x20,%esp
 80492f3:	8b 74 24 30          	mov    0x30(%esp),%esi
 80492f7:	8b 5c 24 34          	mov    0x34(%esp),%ebx
 80492fb:	8b 7c 24 38          	mov    0x38(%esp),%edi
 80492ff:	85 ff                	test   %edi,%edi
 8049301:	0f 94 c2             	sete   %dl
 8049304:	85 f6                	test   %esi,%esi
 8049306:	75 30                	jne    8049338 <memmove+0x4b>
 8049308:	84 d2                	test   %dl,%dl
 804930a:	75 2c                	jne    8049338 <memmove+0x4b>
 804930c:	c7 44 24 10 b1 a0 04 	movl   $0x804a0b1,0x10(%esp)
 8049313:	08 
 8049314:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 804931b:	08 
 804931c:	c7 44 24 08 c3 9f 04 	movl   $0x8049fc3,0x8(%esp)
 8049323:	08 
 8049324:	c7 44 24 04 1d 00 00 	movl   $0x1d,0x4(%esp)
 804932b:	00 
 804932c:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049333:	e8 7c ef ff ff       	call   80482b4 <debug_panic>
 8049338:	85 db                	test   %ebx,%ebx
 804933a:	75 30                	jne    804936c <memmove+0x7f>
 804933c:	84 d2                	test   %dl,%dl
 804933e:	75 2c                	jne    804936c <memmove+0x7f>
 8049340:	c7 44 24 10 f1 a0 04 	movl   $0x804a0f1,0x10(%esp)
 8049347:	08 
 8049348:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 804934f:	08 
 8049350:	c7 44 24 08 c3 9f 04 	movl   $0x8049fc3,0x8(%esp)
 8049357:	08 
 8049358:	c7 44 24 04 1e 00 00 	movl   $0x1e,0x4(%esp)
 804935f:	00 
 8049360:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049367:	e8 48 ef ff ff       	call   80482b4 <debug_panic>
 804936c:	39 de                	cmp    %ebx,%esi
 804936e:	73 1b                	jae    804938b <memmove+0x9e>
 8049370:	85 ff                	test   %edi,%edi
 8049372:	74 40                	je     80493b4 <memmove+0xc7>
 8049374:	ba 00 00 00 00       	mov    $0x0,%edx
 8049379:	0f b6 0c 13          	movzbl (%ebx,%edx,1),%ecx
 804937d:	88 0c 16             	mov    %cl,(%esi,%edx,1)
 8049380:	83 c2 01             	add    $0x1,%edx
 8049383:	39 fa                	cmp    %edi,%edx
 8049385:	75 f2                	jne    8049379 <memmove+0x8c>
 8049387:	01 fe                	add    %edi,%esi
 8049389:	eb 29                	jmp    80493b4 <memmove+0xc7>
 804938b:	8d 04 3e             	lea    (%esi,%edi,1),%eax
 804938e:	01 fb                	add    %edi,%ebx
 8049390:	8d 57 ff             	lea    -0x1(%edi),%edx
 8049393:	85 ff                	test   %edi,%edi
 8049395:	74 1b                	je     80493b2 <memmove+0xc5>
 8049397:	f7 df                	neg    %edi
 8049399:	89 f9                	mov    %edi,%ecx
 804939b:	01 fb                	add    %edi,%ebx
 804939d:	01 c1                	add    %eax,%ecx
 804939f:	89 ce                	mov    %ecx,%esi
 80493a1:	0f b6 04 13          	movzbl (%ebx,%edx,1),%eax
 80493a5:	88 04 11             	mov    %al,(%ecx,%edx,1)
 80493a8:	83 ea 01             	sub    $0x1,%edx
 80493ab:	83 fa ff             	cmp    $0xffffffff,%edx
 80493ae:	75 ef                	jne    804939f <memmove+0xb2>
 80493b0:	eb 02                	jmp    80493b4 <memmove+0xc7>
 80493b2:	89 c6                	mov    %eax,%esi
 80493b4:	89 f0                	mov    %esi,%eax
 80493b6:	83 c4 20             	add    $0x20,%esp
 80493b9:	5b                   	pop    %ebx
 80493ba:	5e                   	pop    %esi
 80493bb:	5f                   	pop    %edi
 80493bc:	c3                   	ret    

080493bd <memcmp>:
 80493bd:	57                   	push   %edi
 80493be:	56                   	push   %esi
 80493bf:	53                   	push   %ebx
 80493c0:	83 ec 20             	sub    $0x20,%esp
 80493c3:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 80493c7:	8b 74 24 34          	mov    0x34(%esp),%esi
 80493cb:	8b 44 24 38          	mov    0x38(%esp),%eax
 80493cf:	85 c0                	test   %eax,%eax
 80493d1:	0f 94 c2             	sete   %dl
 80493d4:	85 db                	test   %ebx,%ebx
 80493d6:	75 30                	jne    8049408 <memcmp+0x4b>
 80493d8:	84 d2                	test   %dl,%dl
 80493da:	75 2c                	jne    8049408 <memcmp+0x4b>
 80493dc:	c7 44 24 10 0a a1 04 	movl   $0x804a10a,0x10(%esp)
 80493e3:	08 
 80493e4:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80493eb:	08 
 80493ec:	c7 44 24 08 bc 9f 04 	movl   $0x8049fbc,0x8(%esp)
 80493f3:	08 
 80493f4:	c7 44 24 04 3a 00 00 	movl   $0x3a,0x4(%esp)
 80493fb:	00 
 80493fc:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049403:	e8 ac ee ff ff       	call   80482b4 <debug_panic>
 8049408:	85 f6                	test   %esi,%esi
 804940a:	75 04                	jne    8049410 <memcmp+0x53>
 804940c:	84 d2                	test   %dl,%dl
 804940e:	74 18                	je     8049428 <memcmp+0x6b>
 8049410:	8d 78 ff             	lea    -0x1(%eax),%edi
 8049413:	85 c0                	test   %eax,%eax
 8049415:	74 64                	je     804947b <memcmp+0xbe>
 8049417:	0f b6 13             	movzbl (%ebx),%edx
 804941a:	0f b6 0e             	movzbl (%esi),%ecx
 804941d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049422:	38 ca                	cmp    %cl,%dl
 8049424:	74 4a                	je     8049470 <memcmp+0xb3>
 8049426:	eb 3c                	jmp    8049464 <memcmp+0xa7>
 8049428:	c7 44 24 10 21 a1 04 	movl   $0x804a121,0x10(%esp)
 804942f:	08 
 8049430:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049437:	08 
 8049438:	c7 44 24 08 bc 9f 04 	movl   $0x8049fbc,0x8(%esp)
 804943f:	08 
 8049440:	c7 44 24 04 3b 00 00 	movl   $0x3b,0x4(%esp)
 8049447:	00 
 8049448:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 804944f:	e8 60 ee ff ff       	call   80482b4 <debug_panic>
 8049454:	0f b6 54 03 01       	movzbl 0x1(%ebx,%eax,1),%edx
 8049459:	83 c0 01             	add    $0x1,%eax
 804945c:	0f b6 0c 06          	movzbl (%esi,%eax,1),%ecx
 8049460:	38 ca                	cmp    %cl,%dl
 8049462:	74 0c                	je     8049470 <memcmp+0xb3>
 8049464:	38 d1                	cmp    %dl,%cl
 8049466:	19 c0                	sbb    %eax,%eax
 8049468:	83 e0 02             	and    $0x2,%eax
 804946b:	83 e8 01             	sub    $0x1,%eax
 804946e:	eb 10                	jmp    8049480 <memcmp+0xc3>
 8049470:	39 f8                	cmp    %edi,%eax
 8049472:	75 e0                	jne    8049454 <memcmp+0x97>
 8049474:	b8 00 00 00 00       	mov    $0x0,%eax
 8049479:	eb 05                	jmp    8049480 <memcmp+0xc3>
 804947b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049480:	83 c4 20             	add    $0x20,%esp
 8049483:	5b                   	pop    %ebx
 8049484:	5e                   	pop    %esi
 8049485:	5f                   	pop    %edi
 8049486:	c3                   	ret    

08049487 <strcmp>:
 8049487:	83 ec 2c             	sub    $0x2c,%esp
 804948a:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 804948e:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049492:	85 c9                	test   %ecx,%ecx
 8049494:	75 2c                	jne    80494c2 <strcmp+0x3b>
 8049496:	c7 44 24 10 38 a1 04 	movl   $0x804a138,0x10(%esp)
 804949d:	08 
 804949e:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80494a5:	08 
 80494a6:	c7 44 24 08 b5 9f 04 	movl   $0x8049fb5,0x8(%esp)
 80494ad:	08 
 80494ae:	c7 44 24 04 4e 00 00 	movl   $0x4e,0x4(%esp)
 80494b5:	00 
 80494b6:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80494bd:	e8 f2 ed ff ff       	call   80482b4 <debug_panic>
 80494c2:	85 d2                	test   %edx,%edx
 80494c4:	74 0e                	je     80494d4 <strcmp+0x4d>
 80494c6:	0f b6 01             	movzbl (%ecx),%eax
 80494c9:	84 c0                	test   %al,%al
 80494cb:	74 44                	je     8049511 <strcmp+0x8a>
 80494cd:	3a 02                	cmp    (%edx),%al
 80494cf:	90                   	nop
 80494d0:	74 2e                	je     8049500 <strcmp+0x79>
 80494d2:	eb 3d                	jmp    8049511 <strcmp+0x8a>
 80494d4:	c7 44 24 10 42 a1 04 	movl   $0x804a142,0x10(%esp)
 80494db:	08 
 80494dc:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80494e3:	08 
 80494e4:	c7 44 24 08 b5 9f 04 	movl   $0x8049fb5,0x8(%esp)
 80494eb:	08 
 80494ec:	c7 44 24 04 4f 00 00 	movl   $0x4f,0x4(%esp)
 80494f3:	00 
 80494f4:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80494fb:	e8 b4 ed ff ff       	call   80482b4 <debug_panic>
 8049500:	83 c1 01             	add    $0x1,%ecx
 8049503:	83 c2 01             	add    $0x1,%edx
 8049506:	0f b6 01             	movzbl (%ecx),%eax
 8049509:	84 c0                	test   %al,%al
 804950b:	74 04                	je     8049511 <strcmp+0x8a>
 804950d:	3a 02                	cmp    (%edx),%al
 804950f:	74 ef                	je     8049500 <strcmp+0x79>
 8049511:	0f b6 12             	movzbl (%edx),%edx
 8049514:	38 c2                	cmp    %al,%dl
 8049516:	77 0a                	ja     8049522 <strcmp+0x9b>
 8049518:	38 d0                	cmp    %dl,%al
 804951a:	0f 97 c0             	seta   %al
 804951d:	0f b6 c0             	movzbl %al,%eax
 8049520:	eb 05                	jmp    8049527 <strcmp+0xa0>
 8049522:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049527:	83 c4 2c             	add    $0x2c,%esp
 804952a:	c3                   	ret    

0804952b <memchr>:
 804952b:	56                   	push   %esi
 804952c:	53                   	push   %ebx
 804952d:	83 ec 24             	sub    $0x24,%esp
 8049530:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049534:	8b 74 24 34          	mov    0x34(%esp),%esi
 8049538:	8b 54 24 38          	mov    0x38(%esp),%edx
 804953c:	89 f3                	mov    %esi,%ebx
 804953e:	85 c0                	test   %eax,%eax
 8049540:	75 04                	jne    8049546 <memchr+0x1b>
 8049542:	85 d2                	test   %edx,%edx
 8049544:	75 14                	jne    804955a <memchr+0x2f>
 8049546:	8d 4a ff             	lea    -0x1(%edx),%ecx
 8049549:	85 d2                	test   %edx,%edx
 804954b:	74 4e                	je     804959b <memchr+0x70>
 804954d:	89 f2                	mov    %esi,%edx
 804954f:	38 10                	cmp    %dl,(%eax)
 8049551:	74 4d                	je     80495a0 <memchr+0x75>
 8049553:	ba 00 00 00 00       	mov    $0x0,%edx
 8049558:	eb 33                	jmp    804958d <memchr+0x62>
 804955a:	c7 44 24 10 4c a1 04 	movl   $0x804a14c,0x10(%esp)
 8049561:	08 
 8049562:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049569:	08 
 804956a:	c7 44 24 08 ae 9f 04 	movl   $0x8049fae,0x8(%esp)
 8049571:	08 
 8049572:	c7 44 24 04 63 00 00 	movl   $0x63,0x4(%esp)
 8049579:	00 
 804957a:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049581:	e8 2e ed ff ff       	call   80482b4 <debug_panic>
 8049586:	83 c2 01             	add    $0x1,%edx
 8049589:	38 18                	cmp    %bl,(%eax)
 804958b:	74 13                	je     80495a0 <memchr+0x75>
 804958d:	83 c0 01             	add    $0x1,%eax
 8049590:	39 ca                	cmp    %ecx,%edx
 8049592:	75 f2                	jne    8049586 <memchr+0x5b>
 8049594:	b8 00 00 00 00       	mov    $0x0,%eax
 8049599:	eb 05                	jmp    80495a0 <memchr+0x75>
 804959b:	b8 00 00 00 00       	mov    $0x0,%eax
 80495a0:	83 c4 24             	add    $0x24,%esp
 80495a3:	5b                   	pop    %ebx
 80495a4:	5e                   	pop    %esi
 80495a5:	c3                   	ret    

080495a6 <strchr>:
 80495a6:	53                   	push   %ebx
 80495a7:	83 ec 28             	sub    $0x28,%esp
 80495aa:	8b 44 24 30          	mov    0x30(%esp),%eax
 80495ae:	8b 54 24 34          	mov    0x34(%esp),%edx
 80495b2:	85 c0                	test   %eax,%eax
 80495b4:	74 0b                	je     80495c1 <strchr+0x1b>
 80495b6:	89 d1                	mov    %edx,%ecx
 80495b8:	0f b6 18             	movzbl (%eax),%ebx
 80495bb:	38 d3                	cmp    %dl,%bl
 80495bd:	75 2e                	jne    80495ed <strchr+0x47>
 80495bf:	eb 4e                	jmp    804960f <strchr+0x69>
 80495c1:	c7 44 24 10 67 a1 04 	movl   $0x804a167,0x10(%esp)
 80495c8:	08 
 80495c9:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80495d0:	08 
 80495d1:	c7 44 24 08 a7 9f 04 	movl   $0x8049fa7,0x8(%esp)
 80495d8:	08 
 80495d9:	c7 44 24 04 75 00 00 	movl   $0x75,0x4(%esp)
 80495e0:	00 
 80495e1:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80495e8:	e8 c7 ec ff ff       	call   80482b4 <debug_panic>
 80495ed:	84 db                	test   %bl,%bl
 80495ef:	75 06                	jne    80495f7 <strchr+0x51>
 80495f1:	eb 10                	jmp    8049603 <strchr+0x5d>
 80495f3:	84 d2                	test   %dl,%dl
 80495f5:	74 13                	je     804960a <strchr+0x64>
 80495f7:	83 c0 01             	add    $0x1,%eax
 80495fa:	0f b6 10             	movzbl (%eax),%edx
 80495fd:	38 ca                	cmp    %cl,%dl
 80495ff:	75 f2                	jne    80495f3 <strchr+0x4d>
 8049601:	eb 0c                	jmp    804960f <strchr+0x69>
 8049603:	b8 00 00 00 00       	mov    $0x0,%eax
 8049608:	eb 05                	jmp    804960f <strchr+0x69>
 804960a:	b8 00 00 00 00       	mov    $0x0,%eax
 804960f:	83 c4 28             	add    $0x28,%esp
 8049612:	5b                   	pop    %ebx
 8049613:	c3                   	ret    

08049614 <strcspn>:
 8049614:	57                   	push   %edi
 8049615:	56                   	push   %esi
 8049616:	53                   	push   %ebx
 8049617:	83 ec 10             	sub    $0x10,%esp
 804961a:	8b 74 24 20          	mov    0x20(%esp),%esi
 804961e:	8b 7c 24 24          	mov    0x24(%esp),%edi
 8049622:	0f b6 16             	movzbl (%esi),%edx
 8049625:	84 d2                	test   %dl,%dl
 8049627:	74 25                	je     804964e <strcspn+0x3a>
 8049629:	bb 00 00 00 00       	mov    $0x0,%ebx
 804962e:	0f be d2             	movsbl %dl,%edx
 8049631:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049635:	89 3c 24             	mov    %edi,(%esp)
 8049638:	e8 69 ff ff ff       	call   80495a6 <strchr>
 804963d:	85 c0                	test   %eax,%eax
 804963f:	75 12                	jne    8049653 <strcspn+0x3f>
 8049641:	83 c3 01             	add    $0x1,%ebx
 8049644:	0f b6 14 1e          	movzbl (%esi,%ebx,1),%edx
 8049648:	84 d2                	test   %dl,%dl
 804964a:	75 e2                	jne    804962e <strcspn+0x1a>
 804964c:	eb 05                	jmp    8049653 <strcspn+0x3f>
 804964e:	bb 00 00 00 00       	mov    $0x0,%ebx
 8049653:	89 d8                	mov    %ebx,%eax
 8049655:	83 c4 10             	add    $0x10,%esp
 8049658:	5b                   	pop    %ebx
 8049659:	5e                   	pop    %esi
 804965a:	5f                   	pop    %edi
 804965b:	c3                   	ret    

0804965c <strpbrk>:
 804965c:	56                   	push   %esi
 804965d:	53                   	push   %ebx
 804965e:	83 ec 14             	sub    $0x14,%esp
 8049661:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8049665:	8b 74 24 24          	mov    0x24(%esp),%esi
 8049669:	0f b6 13             	movzbl (%ebx),%edx
 804966c:	84 d2                	test   %dl,%dl
 804966e:	74 1f                	je     804968f <strpbrk+0x33>
 8049670:	0f be d2             	movsbl %dl,%edx
 8049673:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049677:	89 34 24             	mov    %esi,(%esp)
 804967a:	e8 27 ff ff ff       	call   80495a6 <strchr>
 804967f:	85 c0                	test   %eax,%eax
 8049681:	75 13                	jne    8049696 <strpbrk+0x3a>
 8049683:	83 c3 01             	add    $0x1,%ebx
 8049686:	0f b6 13             	movzbl (%ebx),%edx
 8049689:	84 d2                	test   %dl,%dl
 804968b:	75 e3                	jne    8049670 <strpbrk+0x14>
 804968d:	eb 09                	jmp    8049698 <strpbrk+0x3c>
 804968f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049694:	eb 02                	jmp    8049698 <strpbrk+0x3c>
 8049696:	89 d8                	mov    %ebx,%eax
 8049698:	83 c4 14             	add    $0x14,%esp
 804969b:	5b                   	pop    %ebx
 804969c:	5e                   	pop    %esi
 804969d:	c3                   	ret    

0804969e <strrchr>:
 804969e:	53                   	push   %ebx
 804969f:	8b 54 24 08          	mov    0x8(%esp),%edx
 80496a3:	0f b6 5c 24 0c       	movzbl 0xc(%esp),%ebx
 80496a8:	0f b6 0a             	movzbl (%edx),%ecx
 80496ab:	84 c9                	test   %cl,%cl
 80496ad:	74 16                	je     80496c5 <strrchr+0x27>
 80496af:	b8 00 00 00 00       	mov    $0x0,%eax
 80496b4:	38 cb                	cmp    %cl,%bl
 80496b6:	0f 44 c2             	cmove  %edx,%eax
 80496b9:	83 c2 01             	add    $0x1,%edx
 80496bc:	0f b6 0a             	movzbl (%edx),%ecx
 80496bf:	84 c9                	test   %cl,%cl
 80496c1:	75 f1                	jne    80496b4 <strrchr+0x16>
 80496c3:	eb 05                	jmp    80496ca <strrchr+0x2c>
 80496c5:	b8 00 00 00 00       	mov    $0x0,%eax
 80496ca:	5b                   	pop    %ebx
 80496cb:	c3                   	ret    

080496cc <strspn>:
 80496cc:	57                   	push   %edi
 80496cd:	56                   	push   %esi
 80496ce:	53                   	push   %ebx
 80496cf:	83 ec 10             	sub    $0x10,%esp
 80496d2:	8b 74 24 20          	mov    0x20(%esp),%esi
 80496d6:	8b 7c 24 24          	mov    0x24(%esp),%edi
 80496da:	0f b6 16             	movzbl (%esi),%edx
 80496dd:	84 d2                	test   %dl,%dl
 80496df:	74 25                	je     8049706 <strspn+0x3a>
 80496e1:	bb 00 00 00 00       	mov    $0x0,%ebx
 80496e6:	0f be d2             	movsbl %dl,%edx
 80496e9:	89 54 24 04          	mov    %edx,0x4(%esp)
 80496ed:	89 3c 24             	mov    %edi,(%esp)
 80496f0:	e8 b1 fe ff ff       	call   80495a6 <strchr>
 80496f5:	85 c0                	test   %eax,%eax
 80496f7:	74 12                	je     804970b <strspn+0x3f>
 80496f9:	83 c3 01             	add    $0x1,%ebx
 80496fc:	0f b6 14 1e          	movzbl (%esi,%ebx,1),%edx
 8049700:	84 d2                	test   %dl,%dl
 8049702:	75 e2                	jne    80496e6 <strspn+0x1a>
 8049704:	eb 05                	jmp    804970b <strspn+0x3f>
 8049706:	bb 00 00 00 00       	mov    $0x0,%ebx
 804970b:	89 d8                	mov    %ebx,%eax
 804970d:	83 c4 10             	add    $0x10,%esp
 8049710:	5b                   	pop    %ebx
 8049711:	5e                   	pop    %esi
 8049712:	5f                   	pop    %edi
 8049713:	c3                   	ret    

08049714 <strtok_r>:
 8049714:	55                   	push   %ebp
 8049715:	57                   	push   %edi
 8049716:	56                   	push   %esi
 8049717:	53                   	push   %ebx
 8049718:	83 ec 2c             	sub    $0x2c,%esp
 804971b:	8b 5c 24 40          	mov    0x40(%esp),%ebx
 804971f:	8b 74 24 44          	mov    0x44(%esp),%esi
 8049723:	85 f6                	test   %esi,%esi
 8049725:	75 2c                	jne    8049753 <strtok_r+0x3f>
 8049727:	c7 44 24 10 76 a1 04 	movl   $0x804a176,0x10(%esp)
 804972e:	08 
 804972f:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049736:	08 
 8049737:	c7 44 24 08 9e 9f 04 	movl   $0x8049f9e,0x8(%esp)
 804973e:	08 
 804973f:	c7 44 24 04 ef 00 00 	movl   $0xef,0x4(%esp)
 8049746:	00 
 8049747:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 804974e:	e8 61 eb ff ff       	call   80482b4 <debug_panic>
 8049753:	83 7c 24 48 00       	cmpl   $0x0,0x48(%esp)
 8049758:	75 2c                	jne    8049786 <strtok_r+0x72>
 804975a:	c7 44 24 10 89 a1 04 	movl   $0x804a189,0x10(%esp)
 8049761:	08 
 8049762:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049769:	08 
 804976a:	c7 44 24 08 9e 9f 04 	movl   $0x8049f9e,0x8(%esp)
 8049771:	08 
 8049772:	c7 44 24 04 f0 00 00 	movl   $0xf0,0x4(%esp)
 8049779:	00 
 804977a:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049781:	e8 2e eb ff ff       	call   80482b4 <debug_panic>
 8049786:	85 db                	test   %ebx,%ebx
 8049788:	75 4c                	jne    80497d6 <strtok_r+0xc2>
 804978a:	8b 44 24 48          	mov    0x48(%esp),%eax
 804978e:	8b 18                	mov    (%eax),%ebx
 8049790:	85 db                	test   %ebx,%ebx
 8049792:	75 42                	jne    80497d6 <strtok_r+0xc2>
 8049794:	c7 44 24 10 7f a1 04 	movl   $0x804a17f,0x10(%esp)
 804979b:	08 
 804979c:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80497a3:	08 
 80497a4:	c7 44 24 08 9e 9f 04 	movl   $0x8049f9e,0x8(%esp)
 80497ab:	08 
 80497ac:	c7 44 24 04 f6 00 00 	movl   $0xf6,0x4(%esp)
 80497b3:	00 
 80497b4:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80497bb:	e8 f4 ea ff ff       	call   80482b4 <debug_panic>
 80497c0:	89 f8                	mov    %edi,%eax
 80497c2:	84 c0                	test   %al,%al
 80497c4:	75 0d                	jne    80497d3 <strtok_r+0xbf>
 80497c6:	8b 44 24 48          	mov    0x48(%esp),%eax
 80497ca:	89 18                	mov    %ebx,(%eax)
 80497cc:	b8 00 00 00 00       	mov    $0x0,%eax
 80497d1:	eb 56                	jmp    8049829 <strtok_r+0x115>
 80497d3:	83 c3 01             	add    $0x1,%ebx
 80497d6:	0f b6 3b             	movzbl (%ebx),%edi
 80497d9:	89 f8                	mov    %edi,%eax
 80497db:	0f be c0             	movsbl %al,%eax
 80497de:	89 44 24 04          	mov    %eax,0x4(%esp)
 80497e2:	89 34 24             	mov    %esi,(%esp)
 80497e5:	e8 bc fd ff ff       	call   80495a6 <strchr>
 80497ea:	85 c0                	test   %eax,%eax
 80497ec:	75 d2                	jne    80497c0 <strtok_r+0xac>
 80497ee:	89 df                	mov    %ebx,%edi
 80497f0:	83 c7 01             	add    $0x1,%edi
 80497f3:	0f b6 2f             	movzbl (%edi),%ebp
 80497f6:	89 e8                	mov    %ebp,%eax
 80497f8:	0f be c0             	movsbl %al,%eax
 80497fb:	89 44 24 04          	mov    %eax,0x4(%esp)
 80497ff:	89 34 24             	mov    %esi,(%esp)
 8049802:	e8 9f fd ff ff       	call   80495a6 <strchr>
 8049807:	85 c0                	test   %eax,%eax
 8049809:	74 e5                	je     80497f0 <strtok_r+0xdc>
 804980b:	89 e8                	mov    %ebp,%eax
 804980d:	84 c0                	test   %al,%al
 804980f:	74 10                	je     8049821 <strtok_r+0x10d>
 8049811:	c6 07 00             	movb   $0x0,(%edi)
 8049814:	83 c7 01             	add    $0x1,%edi
 8049817:	8b 44 24 48          	mov    0x48(%esp),%eax
 804981b:	89 38                	mov    %edi,(%eax)
 804981d:	89 d8                	mov    %ebx,%eax
 804981f:	eb 08                	jmp    8049829 <strtok_r+0x115>
 8049821:	8b 44 24 48          	mov    0x48(%esp),%eax
 8049825:	89 38                	mov    %edi,(%eax)
 8049827:	89 d8                	mov    %ebx,%eax
 8049829:	83 c4 2c             	add    $0x2c,%esp
 804982c:	5b                   	pop    %ebx
 804982d:	5e                   	pop    %esi
 804982e:	5f                   	pop    %edi
 804982f:	5d                   	pop    %ebp
 8049830:	c3                   	ret    

08049831 <memset>:
 8049831:	56                   	push   %esi
 8049832:	53                   	push   %ebx
 8049833:	83 ec 24             	sub    $0x24,%esp
 8049836:	8b 44 24 30          	mov    0x30(%esp),%eax
 804983a:	8b 5c 24 34          	mov    0x34(%esp),%ebx
 804983e:	8b 74 24 38          	mov    0x38(%esp),%esi
 8049842:	85 c0                	test   %eax,%eax
 8049844:	75 04                	jne    804984a <memset+0x19>
 8049846:	85 f6                	test   %esi,%esi
 8049848:	75 0b                	jne    8049855 <memset+0x24>
 804984a:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
 804984d:	89 c2                	mov    %eax,%edx
 804984f:	85 f6                	test   %esi,%esi
 8049851:	75 2e                	jne    8049881 <memset+0x50>
 8049853:	eb 36                	jmp    804988b <memset+0x5a>
 8049855:	c7 44 24 10 b1 a0 04 	movl   $0x804a0b1,0x10(%esp)
 804985c:	08 
 804985d:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049864:	08 
 8049865:	c7 44 24 08 97 9f 04 	movl   $0x8049f97,0x8(%esp)
 804986c:	08 
 804986d:	c7 44 24 04 1b 01 00 	movl   $0x11b,0x4(%esp)
 8049874:	00 
 8049875:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 804987c:	e8 33 ea ff ff       	call   80482b4 <debug_panic>
 8049881:	83 c2 01             	add    $0x1,%edx
 8049884:	88 5a ff             	mov    %bl,-0x1(%edx)
 8049887:	39 ca                	cmp    %ecx,%edx
 8049889:	75 f6                	jne    8049881 <memset+0x50>
 804988b:	83 c4 24             	add    $0x24,%esp
 804988e:	5b                   	pop    %ebx
 804988f:	5e                   	pop    %esi
 8049890:	c3                   	ret    

08049891 <strlen>:
 8049891:	83 ec 2c             	sub    $0x2c,%esp
 8049894:	8b 54 24 30          	mov    0x30(%esp),%edx
 8049898:	85 d2                	test   %edx,%edx
 804989a:	74 09                	je     80498a5 <strlen+0x14>
 804989c:	89 d0                	mov    %edx,%eax
 804989e:	80 3a 00             	cmpb   $0x0,(%edx)
 80498a1:	74 38                	je     80498db <strlen+0x4a>
 80498a3:	eb 2c                	jmp    80498d1 <strlen+0x40>
 80498a5:	c7 44 24 10 67 a1 04 	movl   $0x804a167,0x10(%esp)
 80498ac:	08 
 80498ad:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80498b4:	08 
 80498b5:	c7 44 24 08 90 9f 04 	movl   $0x8049f90,0x8(%esp)
 80498bc:	08 
 80498bd:	c7 44 24 04 29 01 00 	movl   $0x129,0x4(%esp)
 80498c4:	00 
 80498c5:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80498cc:	e8 e3 e9 ff ff       	call   80482b4 <debug_panic>
 80498d1:	89 d0                	mov    %edx,%eax
 80498d3:	83 c0 01             	add    $0x1,%eax
 80498d6:	80 38 00             	cmpb   $0x0,(%eax)
 80498d9:	75 f8                	jne    80498d3 <strlen+0x42>
 80498db:	29 d0                	sub    %edx,%eax
 80498dd:	83 c4 2c             	add    $0x2c,%esp
 80498e0:	c3                   	ret    

080498e1 <strstr>:
 80498e1:	55                   	push   %ebp
 80498e2:	57                   	push   %edi
 80498e3:	56                   	push   %esi
 80498e4:	53                   	push   %ebx
 80498e5:	83 ec 1c             	sub    $0x1c,%esp
 80498e8:	8b 6c 24 34          	mov    0x34(%esp),%ebp
 80498ec:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 80498f1:	8b 7c 24 30          	mov    0x30(%esp),%edi
 80498f5:	b8 00 00 00 00       	mov    $0x0,%eax
 80498fa:	89 d9                	mov    %ebx,%ecx
 80498fc:	f2 ae                	repnz scas %es:(%edi),%al
 80498fe:	f7 d1                	not    %ecx
 8049900:	8d 51 ff             	lea    -0x1(%ecx),%edx
 8049903:	89 ef                	mov    %ebp,%edi
 8049905:	89 d9                	mov    %ebx,%ecx
 8049907:	f2 ae                	repnz scas %es:(%edi),%al
 8049909:	f7 d1                	not    %ecx
 804990b:	8d 79 ff             	lea    -0x1(%ecx),%edi
 804990e:	39 fa                	cmp    %edi,%edx
 8049910:	72 30                	jb     8049942 <strstr+0x61>
 8049912:	29 fa                	sub    %edi,%edx
 8049914:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049918:	bb 00 00 00 00       	mov    $0x0,%ebx
 804991d:	89 de                	mov    %ebx,%esi
 804991f:	03 74 24 30          	add    0x30(%esp),%esi
 8049923:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8049927:	89 6c 24 04          	mov    %ebp,0x4(%esp)
 804992b:	89 34 24             	mov    %esi,(%esp)
 804992e:	e8 8a fa ff ff       	call   80493bd <memcmp>
 8049933:	85 c0                	test   %eax,%eax
 8049935:	74 12                	je     8049949 <strstr+0x68>
 8049937:	83 c3 01             	add    $0x1,%ebx
 804993a:	3b 5c 24 0c          	cmp    0xc(%esp),%ebx
 804993e:	76 dd                	jbe    804991d <strstr+0x3c>
 8049940:	eb 0b                	jmp    804994d <strstr+0x6c>
 8049942:	b8 00 00 00 00       	mov    $0x0,%eax
 8049947:	eb 09                	jmp    8049952 <strstr+0x71>
 8049949:	89 f0                	mov    %esi,%eax
 804994b:	eb 05                	jmp    8049952 <strstr+0x71>
 804994d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049952:	83 c4 1c             	add    $0x1c,%esp
 8049955:	5b                   	pop    %ebx
 8049956:	5e                   	pop    %esi
 8049957:	5f                   	pop    %edi
 8049958:	5d                   	pop    %ebp
 8049959:	c3                   	ret    

0804995a <strnlen>:
 804995a:	8b 54 24 04          	mov    0x4(%esp),%edx
 804995e:	8b 4c 24 08          	mov    0x8(%esp),%ecx
 8049962:	80 3a 00             	cmpb   $0x0,(%edx)
 8049965:	74 18                	je     804997f <strnlen+0x25>
 8049967:	b8 00 00 00 00       	mov    $0x0,%eax
 804996c:	85 c9                	test   %ecx,%ecx
 804996e:	74 14                	je     8049984 <strnlen+0x2a>
 8049970:	83 c0 01             	add    $0x1,%eax
 8049973:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8049977:	74 0b                	je     8049984 <strnlen+0x2a>
 8049979:	39 c8                	cmp    %ecx,%eax
 804997b:	74 07                	je     8049984 <strnlen+0x2a>
 804997d:	eb f1                	jmp    8049970 <strnlen+0x16>
 804997f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049984:	f3 c3                	repz ret 

08049986 <strlcpy>:
 8049986:	57                   	push   %edi
 8049987:	56                   	push   %esi
 8049988:	53                   	push   %ebx
 8049989:	83 ec 20             	sub    $0x20,%esp
 804998c:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 8049990:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049994:	8b 74 24 38          	mov    0x38(%esp),%esi
 8049998:	85 db                	test   %ebx,%ebx
 804999a:	75 2c                	jne    80499c8 <strlcpy+0x42>
 804999c:	c7 44 24 10 9a a1 04 	movl   $0x804a19a,0x10(%esp)
 80499a3:	08 
 80499a4:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80499ab:	08 
 80499ac:	c7 44 24 08 88 9f 04 	movl   $0x8049f88,0x8(%esp)
 80499b3:	08 
 80499b4:	c7 44 24 04 4a 01 00 	movl   $0x14a,0x4(%esp)
 80499bb:	00 
 80499bc:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80499c3:	e8 ec e8 ff ff       	call   80482b4 <debug_panic>
 80499c8:	85 d2                	test   %edx,%edx
 80499ca:	75 2c                	jne    80499f8 <strlcpy+0x72>
 80499cc:	c7 44 24 10 a6 a1 04 	movl   $0x804a1a6,0x10(%esp)
 80499d3:	08 
 80499d4:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 80499db:	08 
 80499dc:	c7 44 24 08 88 9f 04 	movl   $0x8049f88,0x8(%esp)
 80499e3:	08 
 80499e4:	c7 44 24 04 4b 01 00 	movl   $0x14b,0x4(%esp)
 80499eb:	00 
 80499ec:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 80499f3:	e8 bc e8 ff ff       	call   80482b4 <debug_panic>
 80499f8:	89 d7                	mov    %edx,%edi
 80499fa:	b8 00 00 00 00       	mov    $0x0,%eax
 80499ff:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049a04:	f2 ae                	repnz scas %es:(%edi),%al
 8049a06:	f7 d1                	not    %ecx
 8049a08:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049a0b:	85 f6                	test   %esi,%esi
 8049a0d:	74 1c                	je     8049a2b <strlcpy+0xa5>
 8049a0f:	83 ee 01             	sub    $0x1,%esi
 8049a12:	39 f7                	cmp    %esi,%edi
 8049a14:	0f 46 f7             	cmovbe %edi,%esi
 8049a17:	89 74 24 08          	mov    %esi,0x8(%esp)
 8049a1b:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049a1f:	89 1c 24             	mov    %ebx,(%esp)
 8049a22:	e8 29 f8 ff ff       	call   8049250 <memcpy>
 8049a27:	c6 04 33 00          	movb   $0x0,(%ebx,%esi,1)
 8049a2b:	89 f8                	mov    %edi,%eax
 8049a2d:	83 c4 20             	add    $0x20,%esp
 8049a30:	5b                   	pop    %ebx
 8049a31:	5e                   	pop    %esi
 8049a32:	5f                   	pop    %edi
 8049a33:	c3                   	ret    

08049a34 <strlcat>:
 8049a34:	55                   	push   %ebp
 8049a35:	57                   	push   %edi
 8049a36:	56                   	push   %esi
 8049a37:	53                   	push   %ebx
 8049a38:	83 ec 2c             	sub    $0x2c,%esp
 8049a3b:	8b 6c 24 40          	mov    0x40(%esp),%ebp
 8049a3f:	8b 54 24 44          	mov    0x44(%esp),%edx
 8049a43:	85 ed                	test   %ebp,%ebp
 8049a45:	75 2c                	jne    8049a73 <strlcat+0x3f>
 8049a47:	c7 44 24 10 9a a1 04 	movl   $0x804a19a,0x10(%esp)
 8049a4e:	08 
 8049a4f:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049a56:	08 
 8049a57:	c7 44 24 08 80 9f 04 	movl   $0x8049f80,0x8(%esp)
 8049a5e:	08 
 8049a5f:	c7 44 24 04 68 01 00 	movl   $0x168,0x4(%esp)
 8049a66:	00 
 8049a67:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049a6e:	e8 41 e8 ff ff       	call   80482b4 <debug_panic>
 8049a73:	85 d2                	test   %edx,%edx
 8049a75:	75 2c                	jne    8049aa3 <strlcat+0x6f>
 8049a77:	c7 44 24 10 a6 a1 04 	movl   $0x804a1a6,0x10(%esp)
 8049a7e:	08 
 8049a7f:	c7 44 24 0c ca a0 04 	movl   $0x804a0ca,0xc(%esp)
 8049a86:	08 
 8049a87:	c7 44 24 08 80 9f 04 	movl   $0x8049f80,0x8(%esp)
 8049a8e:	08 
 8049a8f:	c7 44 24 04 69 01 00 	movl   $0x169,0x4(%esp)
 8049a96:	00 
 8049a97:	c7 04 24 e1 a0 04 08 	movl   $0x804a0e1,(%esp)
 8049a9e:	e8 11 e8 ff ff       	call   80482b4 <debug_panic>
 8049aa3:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
 8049aa8:	89 d7                	mov    %edx,%edi
 8049aaa:	b8 00 00 00 00       	mov    $0x0,%eax
 8049aaf:	89 d9                	mov    %ebx,%ecx
 8049ab1:	f2 ae                	repnz scas %es:(%edi),%al
 8049ab3:	f7 d1                	not    %ecx
 8049ab5:	8d 71 ff             	lea    -0x1(%ecx),%esi
 8049ab8:	89 ef                	mov    %ebp,%edi
 8049aba:	89 d9                	mov    %ebx,%ecx
 8049abc:	f2 ae                	repnz scas %es:(%edi),%al
 8049abe:	89 cb                	mov    %ecx,%ebx
 8049ac0:	f7 d3                	not    %ebx
 8049ac2:	83 eb 01             	sub    $0x1,%ebx
 8049ac5:	3b 5c 24 48          	cmp    0x48(%esp),%ebx
 8049ac9:	73 2c                	jae    8049af7 <strlcat+0xc3>
 8049acb:	83 7c 24 48 00       	cmpl   $0x0,0x48(%esp)
 8049ad0:	74 25                	je     8049af7 <strlcat+0xc3>
 8049ad2:	8b 44 24 48          	mov    0x48(%esp),%eax
 8049ad6:	8d 78 ff             	lea    -0x1(%eax),%edi
 8049ad9:	29 df                	sub    %ebx,%edi
 8049adb:	39 f7                	cmp    %esi,%edi
 8049add:	0f 47 fe             	cmova  %esi,%edi
 8049ae0:	01 dd                	add    %ebx,%ebp
 8049ae2:	89 7c 24 08          	mov    %edi,0x8(%esp)
 8049ae6:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049aea:	89 2c 24             	mov    %ebp,(%esp)
 8049aed:	e8 5e f7 ff ff       	call   8049250 <memcpy>
 8049af2:	c6 44 3d 00 00       	movb   $0x0,0x0(%ebp,%edi,1)
 8049af7:	8d 04 33             	lea    (%ebx,%esi,1),%eax
 8049afa:	83 c4 2c             	add    $0x2c,%esp
 8049afd:	5b                   	pop    %ebx
 8049afe:	5e                   	pop    %esi
 8049aff:	5f                   	pop    %edi
 8049b00:	5d                   	pop    %ebp
 8049b01:	c3                   	ret    
 8049b02:	90                   	nop
 8049b03:	90                   	nop
 8049b04:	90                   	nop
 8049b05:	90                   	nop
 8049b06:	90                   	nop
 8049b07:	90                   	nop
 8049b08:	90                   	nop
 8049b09:	90                   	nop
 8049b0a:	90                   	nop
 8049b0b:	90                   	nop
 8049b0c:	90                   	nop
 8049b0d:	90                   	nop
 8049b0e:	90                   	nop
 8049b0f:	90                   	nop

08049b10 <udiv64>:
 8049b10:	55                   	push   %ebp
 8049b11:	57                   	push   %edi
 8049b12:	56                   	push   %esi
 8049b13:	53                   	push   %ebx
 8049b14:	83 ec 1c             	sub    $0x1c,%esp
 8049b17:	89 04 24             	mov    %eax,(%esp)
 8049b1a:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049b1e:	8b 7c 24 30          	mov    0x30(%esp),%edi
 8049b22:	8b 6c 24 34          	mov    0x34(%esp),%ebp
 8049b26:	89 ea                	mov    %ebp,%edx
 8049b28:	85 ed                	test   %ebp,%ebp
 8049b2a:	75 37                	jne    8049b63 <udiv64+0x53>
 8049b2c:	8b 44 24 04          	mov    0x4(%esp),%eax
 8049b30:	ba 00 00 00 00       	mov    $0x0,%edx
 8049b35:	f7 f7                	div    %edi
 8049b37:	89 c6                	mov    %eax,%esi
 8049b39:	89 d3                	mov    %edx,%ebx
 8049b3b:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049b40:	8b 04 24             	mov    (%esp),%eax
 8049b43:	ba 00 00 00 00       	mov    $0x0,%edx
 8049b48:	01 c8                	add    %ecx,%eax
 8049b4a:	11 da                	adc    %ebx,%edx
 8049b4c:	f7 f7                	div    %edi
 8049b4e:	ba 00 00 00 00       	mov    $0x0,%edx
 8049b53:	89 f7                	mov    %esi,%edi
 8049b55:	be 00 00 00 00       	mov    $0x0,%esi
 8049b5a:	01 f0                	add    %esi,%eax
 8049b5c:	11 fa                	adc    %edi,%edx
 8049b5e:	e9 f2 00 00 00       	jmp    8049c55 <udiv64+0x145>
 8049b63:	3b 6c 24 04          	cmp    0x4(%esp),%ebp
 8049b67:	0f 87 d4 00 00 00    	ja     8049c41 <udiv64+0x131>
 8049b6d:	72 09                	jb     8049b78 <udiv64+0x68>
 8049b6f:	3b 3c 24             	cmp    (%esp),%edi
 8049b72:	0f 87 c9 00 00 00    	ja     8049c41 <udiv64+0x131>
 8049b78:	89 d0                	mov    %edx,%eax
 8049b7a:	b9 00 00 00 00       	mov    $0x0,%ecx
 8049b7f:	81 fa ff ff 00 00    	cmp    $0xffff,%edx
 8049b85:	77 05                	ja     8049b8c <udiv64+0x7c>
 8049b87:	c1 e0 10             	shl    $0x10,%eax
 8049b8a:	b1 10                	mov    $0x10,%cl
 8049b8c:	3d ff ff ff 00       	cmp    $0xffffff,%eax
 8049b91:	77 06                	ja     8049b99 <udiv64+0x89>
 8049b93:	83 c1 08             	add    $0x8,%ecx
 8049b96:	c1 e0 08             	shl    $0x8,%eax
 8049b99:	3d ff ff ff 0f       	cmp    $0xfffffff,%eax
 8049b9e:	77 06                	ja     8049ba6 <udiv64+0x96>
 8049ba0:	83 c1 04             	add    $0x4,%ecx
 8049ba3:	c1 e0 04             	shl    $0x4,%eax
 8049ba6:	3d ff ff ff 3f       	cmp    $0x3fffffff,%eax
 8049bab:	77 06                	ja     8049bb3 <udiv64+0xa3>
 8049bad:	83 c1 02             	add    $0x2,%ecx
 8049bb0:	c1 e0 02             	shl    $0x2,%eax
 8049bb3:	3d 00 00 00 80       	cmp    $0x80000000,%eax
 8049bb8:	83 d1 00             	adc    $0x0,%ecx
 8049bbb:	8b 04 24             	mov    (%esp),%eax
 8049bbe:	8b 54 24 04          	mov    0x4(%esp),%edx
 8049bc2:	0f ac d0 01          	shrd   $0x1,%edx,%eax
 8049bc6:	d1 ea                	shr    %edx
 8049bc8:	89 fb                	mov    %edi,%ebx
 8049bca:	89 ee                	mov    %ebp,%esi
 8049bcc:	0f a5 fe             	shld   %cl,%edi,%esi
 8049bcf:	d3 e3                	shl    %cl,%ebx
 8049bd1:	f6 c1 20             	test   $0x20,%cl
 8049bd4:	74 02                	je     8049bd8 <udiv64+0xc8>
 8049bd6:	89 de                	mov    %ebx,%esi
 8049bd8:	89 74 24 0c          	mov    %esi,0xc(%esp)
 8049bdc:	f7 74 24 0c          	divl   0xc(%esp)
 8049be0:	89 c6                	mov    %eax,%esi
 8049be2:	b8 1f 00 00 00       	mov    $0x1f,%eax
 8049be7:	29 c8                	sub    %ecx,%eax
 8049be9:	89 c1                	mov    %eax,%ecx
 8049beb:	d3 ee                	shr    %cl,%esi
 8049bed:	89 74 24 10          	mov    %esi,0x10(%esp)
 8049bf1:	c7 44 24 14 00 00 00 	movl   $0x0,0x14(%esp)
 8049bf8:	00 
 8049bf9:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049bfd:	8b 54 24 14          	mov    0x14(%esp),%edx
 8049c01:	83 c0 ff             	add    $0xffffffff,%eax
 8049c04:	83 d2 ff             	adc    $0xffffffff,%edx
 8049c07:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049c0b:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049c0f:	89 c1                	mov    %eax,%ecx
 8049c11:	0f af d7             	imul   %edi,%edx
 8049c14:	0f af cd             	imul   %ebp,%ecx
 8049c17:	8d 34 0a             	lea    (%edx,%ecx,1),%esi
 8049c1a:	8b 44 24 08          	mov    0x8(%esp),%eax
 8049c1e:	f7 e7                	mul    %edi
 8049c20:	01 f2                	add    %esi,%edx
 8049c22:	8b 1c 24             	mov    (%esp),%ebx
 8049c25:	8b 74 24 04          	mov    0x4(%esp),%esi
 8049c29:	29 c3                	sub    %eax,%ebx
 8049c2b:	19 d6                	sbb    %edx,%esi
 8049c2d:	39 f5                	cmp    %esi,%ebp
 8049c2f:	72 1c                	jb     8049c4d <udiv64+0x13d>
 8049c31:	77 04                	ja     8049c37 <udiv64+0x127>
 8049c33:	39 df                	cmp    %ebx,%edi
 8049c35:	76 16                	jbe    8049c4d <udiv64+0x13d>
 8049c37:	8b 44 24 08          	mov    0x8(%esp),%eax
 8049c3b:	8b 54 24 0c          	mov    0xc(%esp),%edx
 8049c3f:	eb 14                	jmp    8049c55 <udiv64+0x145>
 8049c41:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c46:	ba 00 00 00 00       	mov    $0x0,%edx
 8049c4b:	eb 08                	jmp    8049c55 <udiv64+0x145>
 8049c4d:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049c51:	8b 54 24 14          	mov    0x14(%esp),%edx
 8049c55:	83 c4 1c             	add    $0x1c,%esp
 8049c58:	5b                   	pop    %ebx
 8049c59:	5e                   	pop    %esi
 8049c5a:	5f                   	pop    %edi
 8049c5b:	5d                   	pop    %ebp
 8049c5c:	c3                   	ret    

08049c5d <sdiv64>:
 8049c5d:	57                   	push   %edi
 8049c5e:	56                   	push   %esi
 8049c5f:	53                   	push   %ebx
 8049c60:	83 ec 10             	sub    $0x10,%esp
 8049c63:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049c67:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049c6b:	8b 74 24 20          	mov    0x20(%esp),%esi
 8049c6f:	8b 7c 24 24          	mov    0x24(%esp),%edi
 8049c73:	85 d2                	test   %edx,%edx
 8049c75:	79 0f                	jns    8049c86 <sdiv64+0x29>
 8049c77:	8b 44 24 08          	mov    0x8(%esp),%eax
 8049c7b:	8b 54 24 0c          	mov    0xc(%esp),%edx
 8049c7f:	f7 d8                	neg    %eax
 8049c81:	83 d2 00             	adc    $0x0,%edx
 8049c84:	f7 da                	neg    %edx
 8049c86:	85 ff                	test   %edi,%edi
 8049c88:	78 06                	js     8049c90 <sdiv64+0x33>
 8049c8a:	89 f1                	mov    %esi,%ecx
 8049c8c:	89 fb                	mov    %edi,%ebx
 8049c8e:	eb 0b                	jmp    8049c9b <sdiv64+0x3e>
 8049c90:	89 f1                	mov    %esi,%ecx
 8049c92:	89 fb                	mov    %edi,%ebx
 8049c94:	f7 d9                	neg    %ecx
 8049c96:	83 d3 00             	adc    $0x0,%ebx
 8049c99:	f7 db                	neg    %ebx
 8049c9b:	89 0c 24             	mov    %ecx,(%esp)
 8049c9e:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 8049ca2:	e8 69 fe ff ff       	call   8049b10 <udiv64>
 8049ca7:	8b 4c 24 0c          	mov    0xc(%esp),%ecx
 8049cab:	f7 d1                	not    %ecx
 8049cad:	c1 e9 1f             	shr    $0x1f,%ecx
 8049cb0:	89 fb                	mov    %edi,%ebx
 8049cb2:	c1 eb 1f             	shr    $0x1f,%ebx
 8049cb5:	89 c6                	mov    %eax,%esi
 8049cb7:	89 d7                	mov    %edx,%edi
 8049cb9:	f7 de                	neg    %esi
 8049cbb:	83 d7 00             	adc    $0x0,%edi
 8049cbe:	f7 df                	neg    %edi
 8049cc0:	39 cb                	cmp    %ecx,%ebx
 8049cc2:	74 04                	je     8049cc8 <sdiv64+0x6b>
 8049cc4:	89 c6                	mov    %eax,%esi
 8049cc6:	89 d7                	mov    %edx,%edi
 8049cc8:	89 f0                	mov    %esi,%eax
 8049cca:	89 fa                	mov    %edi,%edx
 8049ccc:	83 c4 10             	add    $0x10,%esp
 8049ccf:	5b                   	pop    %ebx
 8049cd0:	5e                   	pop    %esi
 8049cd1:	5f                   	pop    %edi
 8049cd2:	c3                   	ret    

08049cd3 <__divdi3>:
 8049cd3:	83 ec 0c             	sub    $0xc,%esp
 8049cd6:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049cda:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049cde:	89 04 24             	mov    %eax,(%esp)
 8049ce1:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049ce5:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049ce9:	8b 54 24 14          	mov    0x14(%esp),%edx
 8049ced:	e8 6b ff ff ff       	call   8049c5d <sdiv64>
 8049cf2:	83 c4 0c             	add    $0xc,%esp
 8049cf5:	c3                   	ret    

08049cf6 <__moddi3>:
 8049cf6:	56                   	push   %esi
 8049cf7:	53                   	push   %ebx
 8049cf8:	83 ec 0c             	sub    $0xc,%esp
 8049cfb:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 8049cff:	8b 74 24 20          	mov    0x20(%esp),%esi
 8049d03:	89 34 24             	mov    %esi,(%esp)
 8049d06:	8b 44 24 24          	mov    0x24(%esp),%eax
 8049d0a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049d0e:	89 d8                	mov    %ebx,%eax
 8049d10:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049d14:	e8 44 ff ff ff       	call   8049c5d <sdiv64>
 8049d19:	0f af f0             	imul   %eax,%esi
 8049d1c:	89 d8                	mov    %ebx,%eax
 8049d1e:	29 f0                	sub    %esi,%eax
 8049d20:	99                   	cltd   
 8049d21:	83 c4 0c             	add    $0xc,%esp
 8049d24:	5b                   	pop    %ebx
 8049d25:	5e                   	pop    %esi
 8049d26:	c3                   	ret    

08049d27 <__udivdi3>:
 8049d27:	83 ec 0c             	sub    $0xc,%esp
 8049d2a:	8b 44 24 18          	mov    0x18(%esp),%eax
 8049d2e:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049d32:	89 04 24             	mov    %eax,(%esp)
 8049d35:	89 54 24 04          	mov    %edx,0x4(%esp)
 8049d39:	8b 44 24 10          	mov    0x10(%esp),%eax
 8049d3d:	8b 54 24 14          	mov    0x14(%esp),%edx
 8049d41:	e8 ca fd ff ff       	call   8049b10 <udiv64>
 8049d46:	83 c4 0c             	add    $0xc,%esp
 8049d49:	c3                   	ret    

08049d4a <__umoddi3>:
 8049d4a:	56                   	push   %esi
 8049d4b:	53                   	push   %ebx
 8049d4c:	83 ec 0c             	sub    $0xc,%esp
 8049d4f:	8b 5c 24 18          	mov    0x18(%esp),%ebx
 8049d53:	8b 74 24 20          	mov    0x20(%esp),%esi
 8049d57:	89 34 24             	mov    %esi,(%esp)
 8049d5a:	8b 44 24 24          	mov    0x24(%esp),%eax
 8049d5e:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049d62:	89 d8                	mov    %ebx,%eax
 8049d64:	8b 54 24 1c          	mov    0x1c(%esp),%edx
 8049d68:	e8 a3 fd ff ff       	call   8049b10 <udiv64>
 8049d6d:	0f af f0             	imul   %eax,%esi
 8049d70:	89 d8                	mov    %ebx,%eax
 8049d72:	29 f0                	sub    %esi,%eax
 8049d74:	ba 00 00 00 00       	mov    $0x0,%edx
 8049d79:	83 c4 0c             	add    $0xc,%esp
 8049d7c:	5b                   	pop    %ebx
 8049d7d:	5e                   	pop    %esi
 8049d7e:	c3                   	ret    

Disassembly of section .rodata:

08049d80 <__func__.1495>:
 8049d80:	65 78 69             	gs js  8049dec <__func__.1489+0x67>
 8049d83:	74 00                	je     8049d85 <__func__.1489>

08049d85 <__func__.1489>:
 8049d85:	68 61 6c 74 00       	push   $0x746c61
 8049d8a:	00 00                	add    %al,(%eax)
 8049d8c:	b7 89                	mov    $0x89,%bh
 8049d8e:	04 08                	add    $0x8,%al
 8049d90:	cc                   	int3   
 8049d91:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049d94:	cc                   	int3   
 8049d95:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049d98:	bc 89 04 08 cc       	mov    $0xcc080489,%esp
 8049d9d:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049da0:	cc                   	int3   
 8049da1:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049da4:	cc                   	int3   
 8049da5:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049da8:	c7                   	(bad)  
 8049da9:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049dac:	cc                   	int3   
 8049dad:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049db0:	cc                   	int3   
 8049db1:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049db4:	cc                   	int3   
 8049db5:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049db8:	b2 89                	mov    $0x89,%dl
 8049dba:	04 08                	add    $0x8,%al
 8049dbc:	cc                   	int3   
 8049dbd:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049dc0:	ad                   	lods   %ds:(%esi),%eax
 8049dc1:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049dc4:	cc                   	int3   
 8049dc5:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049dc8:	cc                   	int3   
 8049dc9:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 8049dcc:	c2 89 04             	ret    $0x489
 8049dcf:	08 f2                	or     %dh,%dl
 8049dd1:	8a 04 08             	mov    (%eax,%ecx,1),%al
 8049dd4:	4a                   	dec    %edx
 8049dd5:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049dd8:	0f 8b 04 08 4a 8b    	jnp    934ea5e2 <explained.1502+0x8b49f32e>
 8049dde:	04 08                	add    $0x8,%al
 8049de0:	19 8b 04 08 4a 8b    	sbb    %ecx,-0x74b5f7fc(%ebx)
 8049de6:	04 08                	add    $0x8,%al
 8049de8:	4a                   	dec    %edx
 8049de9:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049dec:	4a                   	dec    %edx
 8049ded:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049df0:	4a                   	dec    %edx
 8049df1:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049df4:	4a                   	dec    %edx
 8049df5:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049df8:	4a                   	dec    %edx
 8049df9:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049dfc:	4a                   	dec    %edx
 8049dfd:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e00:	36 8b 04 08          	mov    %ss:(%eax,%ecx,1),%eax
 8049e04:	4a                   	dec    %edx
 8049e05:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e08:	4a                   	dec    %edx
 8049e09:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e0c:	4a                   	dec    %edx
 8049e0d:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e10:	4a                   	dec    %edx
 8049e11:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e14:	4a                   	dec    %edx
 8049e15:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e18:	40                   	inc    %eax
 8049e19:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049e1c:	f8                   	clc    
 8049e1d:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049e20:	1d 8f 04 08 f8       	sbb    $0xf808048f,%eax
 8049e25:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049e28:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e2d:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e30:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e35:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e38:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e3d:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e40:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e45:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e48:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e4d:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e50:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e55:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e58:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e5d:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e60:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e65:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e68:	c1 8c 04 08 1d 8f 04 	rorl   $0x8,0x48f1d08(%esp,%eax,1)
 8049e6f:	08 
 8049e70:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e75:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e78:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e7d:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e80:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e85:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e88:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049e8d:	8f 04 08             	popl   (%eax,%ecx,1)
 8049e90:	1d 8f 04 08 3f       	sbb    $0x3f08048f,%eax
 8049e95:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049e98:	65 8b 04 08          	mov    %gs:(%eax,%ecx,1),%eax
 8049e9c:	f8                   	clc    
 8049e9d:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049ea0:	f8                   	clc    
 8049ea1:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049ea4:	f8                   	clc    
 8049ea5:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049ea8:	1d 8f 04 08 65       	sbb    $0x6508048f,%eax
 8049ead:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049eb0:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049eb5:	8f 04 08             	popl   (%eax,%ecx,1)
 8049eb8:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049ebd:	8f 04 08             	popl   (%eax,%ecx,1)
 8049ec0:	f8                   	clc    
 8049ec1:	8e 04 08             	mov    (%eax,%ecx,1),%es
 8049ec4:	c1 8c 04 08 b0 8e 04 	rorl   $0x8,0x48eb008(%esp,%eax,1)
 8049ecb:	08 
 8049ecc:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049ed1:	8f 04 08             	popl   (%eax,%ecx,1)
 8049ed4:	71 8e                	jno    8049e64 <__func__.1489+0xdf>
 8049ed6:	04 08                	add    $0x8,%al
 8049ed8:	1d 8f 04 08 c1       	sbb    $0xc108048f,%eax
 8049edd:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 8049ee0:	1d 8f 04 08 1d       	sbb    $0x1d08048f,%eax
 8049ee5:	8f 04 08             	popl   (%eax,%ecx,1)
 8049ee8:	c1 8c 04 08 39 8c 04 	rorl   $0x8,0x48c3908(%esp,%eax,1)
 8049eef:	08 
 8049ef0:	7b 8b                	jnp    8049e7d <__func__.1489+0xf8>
 8049ef2:	04 08                	add    $0x8,%al
 8049ef4:	92                   	xchg   %eax,%edx
 8049ef5:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049ef8:	a9 8b 04 08 bf       	test   $0xbf08048b,%eax
 8049efd:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049f00:	d5 8b                	aad    $0x8b
 8049f02:	04 08                	add    $0x8,%al
 8049f04:	e8 8b 04 08 fb       	call   30ca394 <__executable_start-0x4f7dd00>
 8049f09:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 8049f0c:	0e                   	push   %cs
 8049f0d:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 8049f10:	83 8d 04 08 d7 8c 04 	orl    $0x4,-0x7328f7fc(%ebp)
 8049f17:	08 ef                	or     %ch,%bh
 8049f19:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 8049f1c:	07                   	pop    %es
 8049f1d:	8d 04 08             	lea    (%eax,%ecx,1),%eax
 8049f20:	1f                   	pop    %ds
 8049f21:	8d 04 08             	lea    (%eax,%ecx,1),%eax
 8049f24:	32 8d 04 08 47 8d    	xor    -0x72b8f7fc(%ebp),%cl
 8049f2a:	04 08                	add    $0x8,%al
 8049f2c:	5a                   	pop    %edx
 8049f2d:	8d 04 08             	lea    (%eax,%ecx,1),%eax
 8049f30:	6e                   	outsb  %ds:(%esi),(%dx)
 8049f31:	8d 04 08             	lea    (%eax,%ecx,1),%eax

08049f34 <__func__.1657>:
 8049f34:	5f                   	pop    %edi
 8049f35:	5f                   	pop    %edi
 8049f36:	76 70                	jbe    8049fa8 <__func__.1503+0x1>
 8049f38:	72 69                	jb     8049fa3 <__func__.1553+0x5>
 8049f3a:	6e                   	outsb  %ds:(%esi),(%dx)
 8049f3b:	74 66                	je     8049fa3 <__func__.1553+0x5>
 8049f3d:	00 00                	add    %al,(%eax)
	...

08049f40 <base_X>:
 8049f40:	10 00                	adc    %al,(%eax)
 8049f42:	00 00                	add    %al,(%eax)
 8049f44:	7b a0                	jnp    8049ee6 <__func__.1489+0x161>
 8049f46:	04 08                	add    $0x8,%al
 8049f48:	58                   	pop    %eax
 8049f49:	00 00                	add    %al,(%eax)
 8049f4b:	00 04 00             	add    %al,(%eax,%eax,1)
	...

08049f50 <base_x>:
 8049f50:	10 00                	adc    %al,(%eax)
 8049f52:	00 00                	add    %al,(%eax)
 8049f54:	8c a0 04 08 78 00    	mov    %fs,0x780804(%eax)
 8049f5a:	00 00                	add    %al,(%eax)
 8049f5c:	04 00                	add    $0x0,%al
	...

08049f60 <base_o>:
 8049f60:	08 00                	or     %al,(%eax)
 8049f62:	00 00                	add    %al,(%eax)
 8049f64:	9d                   	popf   
 8049f65:	a0 04 08 00 00       	mov    0x804,%al
 8049f6a:	00 00                	add    %al,(%eax)
 8049f6c:	03 00                	add    (%eax),%eax
	...

08049f70 <base_d>:
 8049f70:	0a 00                	or     (%eax),%al
 8049f72:	00 00                	add    %al,(%eax)
 8049f74:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 8049f75:	a0 04 08 00 00       	mov    0x804,%al
 8049f7a:	00 00                	add    %al,(%eax)
 8049f7c:	03 00                	add    (%eax),%eax
	...

08049f80 <__func__.1603>:
 8049f80:	73 74                	jae    8049ff6 <__func__.1448+0x2b>
 8049f82:	72 6c                	jb     8049ff0 <__func__.1448+0x25>
 8049f84:	63 61 74             	arpl   %sp,0x74(%ecx)
	...

08049f88 <__func__.1594>:
 8049f88:	73 74                	jae    8049ffe <__func__.1448+0x33>
 8049f8a:	72 6c                	jb     8049ff8 <__func__.1448+0x2d>
 8049f8c:	63 70 79             	arpl   %si,0x79(%eax)
	...

08049f90 <__func__.1574>:
 8049f90:	73 74                	jae    804a006 <__func__.1448+0x3b>
 8049f92:	72 6c                	jb     804a000 <__func__.1448+0x35>
 8049f94:	65 6e                	outsb  %gs:(%esi),(%dx)
	...

08049f97 <__func__.1566>:
 8049f97:	6d                   	insl   (%dx),%es:(%edi)
 8049f98:	65 6d                	gs insl (%dx),%es:(%edi)
 8049f9a:	73 65                	jae    804a001 <__func__.1448+0x36>
 8049f9c:	74 00                	je     8049f9e <__func__.1553>

08049f9e <__func__.1553>:
 8049f9e:	73 74                	jae    804a014 <__func__.1448+0x49>
 8049fa0:	72 74                	jb     804a016 <__func__.1448+0x4b>
 8049fa2:	6f                   	outsl  %ds:(%esi),(%dx)
 8049fa3:	6b 5f 72 00          	imul   $0x0,0x72(%edi),%ebx

08049fa7 <__func__.1503>:
 8049fa7:	73 74                	jae    804a01d <__func__.1448+0x52>
 8049fa9:	72 63                	jb     804a00e <__func__.1448+0x43>
 8049fab:	68 72 00 6d 65       	push   $0x656d0072

08049fae <__func__.1494>:
 8049fae:	6d                   	insl   (%dx),%es:(%edi)
 8049faf:	65 6d                	gs insl (%dx),%es:(%edi)
 8049fb1:	63 68 72             	arpl   %bp,0x72(%eax)
	...

08049fb5 <__func__.1483>:
 8049fb5:	73 74                	jae    804a02b <__func__.1448+0x60>
 8049fb7:	72 63                	jb     804a01c <__func__.1448+0x51>
 8049fb9:	6d                   	insl   (%dx),%es:(%edi)
 8049fba:	70 00                	jo     8049fbc <__func__.1473>

08049fbc <__func__.1473>:
 8049fbc:	6d                   	insl   (%dx),%es:(%edi)
 8049fbd:	65 6d                	gs insl (%dx),%es:(%edi)
 8049fbf:	63 6d 70             	arpl   %bp,0x70(%ebp)
	...

08049fc3 <__func__.1459>:
 8049fc3:	6d                   	insl   (%dx),%es:(%edi)
 8049fc4:	65 6d                	gs insl (%dx),%es:(%edi)
 8049fc6:	6d                   	insl   (%dx),%es:(%edi)
 8049fc7:	6f                   	outsl  %ds:(%esi),(%dx)
 8049fc8:	76 65                	jbe    804a02f <__func__.1448+0x64>
	...

08049fcb <__func__.1448>:
 8049fcb:	6d                   	insl   (%dx),%es:(%edi)
 8049fcc:	65 6d                	gs insl (%dx),%es:(%edi)
 8049fce:	63 70 79             	arpl   %si,0x79(%eax)
	...

Disassembly of section .rodata.str1.1:

08049fd2 <.rodata.str1.1>:
 8049fd2:	73 61                	jae    804a035 <__func__.1448+0x6a>
 8049fd4:	6d                   	insl   (%dx),%es:(%edi)
 8049fd5:	70 6c                	jo     804a043 <__func__.1448+0x78>
 8049fd7:	65 2e 74 78          	gs je,pn 804a053 <__func__.1448+0x88>
 8049fdb:	74 00                	je     8049fdd <__func__.1448+0x12>
 8049fdd:	2e 2e 2f             	cs cs das 
 8049fe0:	6c                   	insb   (%dx),%es:(%edi)
 8049fe1:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
 8049fe8:	2f                   	das    
 8049fe9:	73 79                	jae    804a064 <__func__.1448+0x99>
 8049feb:	73 63                	jae    804a050 <__func__.1448+0x85>
 8049fed:	61                   	popa   
 8049fee:	6c                   	insb   (%dx),%es:(%edi)
 8049fef:	6c                   	insb   (%dx),%es:(%edi)
 8049ff0:	2e 63 00             	arpl   %ax,%cs:(%eax)
 8049ff3:	43                   	inc    %ebx
 8049ff4:	61                   	popa   
 8049ff5:	6c                   	insb   (%dx),%es:(%edi)
 8049ff6:	6c                   	insb   (%dx),%es:(%edi)
 8049ff7:	20 73 74             	and    %dh,0x74(%ebx)
 8049ffa:	61                   	popa   
 8049ffb:	63 6b 3a             	arpl   %bp,0x3a(%ebx)
 8049ffe:	20 25 70 00 28 6e    	and    %ah,0x6e280070
 804a004:	75 6c                	jne    804a072 <__func__.1448+0xa7>
 804a006:	6c                   	insb   (%dx),%es:(%edi)
 804a007:	29 00                	sub    %eax,(%eax)
 804a009:	2e 2e 2f             	cs cs das 
 804a00c:	6c                   	insb   (%dx),%es:(%edi)
 804a00d:	69 62 2f 73 74 64 69 	imul   $0x69647473,0x2f(%edx),%esp
 804a014:	6f                   	outsl  %ds:(%esi),(%dx)
 804a015:	2e 63 00             	arpl   %ax,%cs:(%eax)
 804a018:	3c 3c                	cmp    $0x3c,%al
 804a01a:	6e                   	outsb  %ds:(%esi),(%dx)
 804a01b:	6f                   	outsl  %ds:(%esi),(%dx)
 804a01c:	20 25 25 25 63 20    	and    %ah,0x20632525
 804a022:	69 6e 20 6b 65 72 6e 	imul   $0x6e72656b,0x20(%esi),%ebp
 804a029:	65 6c                	gs insb (%dx),%es:(%edi)
 804a02b:	3e 3e 00 3c 3c       	ds add %bh,%ds:(%esp,%edi,1)
 804a030:	6e                   	outsb  %ds:(%esi),(%dx)
 804a031:	6f                   	outsl  %ds:(%esi),(%dx)
 804a032:	20 25 25 25 63 20    	and    %ah,0x20632525
 804a038:	63 6f 6e             	arpl   %bp,0x6e(%edi)
 804a03b:	76 65                	jbe    804a0a2 <__func__.1448+0xd7>
 804a03d:	72 73                	jb     804a0b2 <__func__.1448+0xe7>
 804a03f:	69 6f 6e 3e 3e 00 25 	imul   $0x25003e3e,0x6e(%edi),%ebp
 804a046:	30 38                	xor    %bh,(%eax)
 804a048:	6a 78                	push   $0x78
 804a04a:	20 20                	and    %ah,(%eax)
 804a04c:	00 20                	add    %ah,(%eax)
 804a04e:	20 20                	and    %ah,(%eax)
 804a050:	00 25 30 32 68 68    	add    %ah,0x68683230
 804a056:	78 25                	js     804a07d <__func__.1448+0xb2>
 804a058:	63 00                	arpl   %ax,(%eax)
 804a05a:	31 20                	xor    %esp,(%eax)
 804a05c:	62 79 74             	bound  %edi,0x74(%ecx)
 804a05f:	65 00 25 6c 6c 75 20 	add    %ah,%gs:0x20756c6c
 804a066:	25 73 00 62 79       	and    $0x79620073,%eax
 804a06b:	74 65                	je     804a0d2 <__func__.1448+0x107>
 804a06d:	73 00                	jae    804a06f <__func__.1448+0xa4>
 804a06f:	6b 42 00 4d          	imul   $0x4d,0x0(%edx),%eax
 804a073:	42                   	inc    %edx
 804a074:	00 47 42             	add    %al,0x42(%edi)
 804a077:	00 54 42 00          	add    %dl,0x0(%edx,%eax,2)
 804a07b:	30 31                	xor    %dh,(%ecx)
 804a07d:	32 33                	xor    (%ebx),%dh
 804a07f:	34 35                	xor    $0x35,%al
 804a081:	36 37                	ss aaa 
 804a083:	38 39                	cmp    %bh,(%ecx)
 804a085:	41                   	inc    %ecx
 804a086:	42                   	inc    %edx
 804a087:	43                   	inc    %ebx
 804a088:	44                   	inc    %esp
 804a089:	45                   	inc    %ebp
 804a08a:	46                   	inc    %esi
 804a08b:	00 30                	add    %dh,(%eax)
 804a08d:	31 32                	xor    %esi,(%edx)
 804a08f:	33 34 35 36 37 38 39 	xor    0x39383736(,%esi,1),%esi
 804a096:	61                   	popa   
 804a097:	62 63 64             	bound  %esp,0x64(%ebx)
 804a09a:	65 66 00 30          	data16 add %dh,%gs:(%eax)
 804a09e:	31 32                	xor    %esi,(%edx)
 804a0a0:	33 34 35 36 37 00 30 	xor    0x30003736(,%esi,1),%esi
 804a0a7:	31 32                	xor    %esi,(%edx)
 804a0a9:	33 34 35 36 37 38 39 	xor    0x39383736(,%esi,1),%esi
 804a0b0:	00 64 73 74          	add    %ah,0x74(%ebx,%esi,2)
 804a0b4:	20 21                	and    %ah,(%ecx)
 804a0b6:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
 804a0bb:	4c                   	dec    %esp
 804a0bc:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
 804a0c0:	73 69                	jae    804a12b <__func__.1448+0x160>
 804a0c2:	7a 65                	jp     804a129 <__func__.1448+0x15e>
 804a0c4:	20 3d 3d 20 30 00    	and    %bh,0x30203d
 804a0ca:	61                   	popa   
 804a0cb:	73 73                	jae    804a140 <__func__.1448+0x175>
 804a0cd:	65 72 74             	gs jb  804a144 <__func__.1448+0x179>
 804a0d0:	69 6f 6e 20 60 25 73 	imul   $0x73256020,0x6e(%edi),%ebp
 804a0d7:	27                   	daa    
 804a0d8:	20 66 61             	and    %ah,0x61(%esi)
 804a0db:	69 6c 65 64 2e 00 2e 	imul   $0x2e2e002e,0x64(%ebp,%eiz,2),%ebp
 804a0e2:	2e 
 804a0e3:	2f                   	das    
 804a0e4:	6c                   	insb   (%dx),%es:(%edi)
 804a0e5:	69 62 2f 73 74 72 69 	imul   $0x69727473,0x2f(%edx),%esp
 804a0ec:	6e                   	outsb  %ds:(%esi),(%dx)
 804a0ed:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
 804a0f1:	73 72                	jae    804a165 <__func__.1448+0x19a>
 804a0f3:	63 20                	arpl   %sp,(%eax)
 804a0f5:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
 804a0fb:	4c                   	dec    %esp
 804a0fc:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
 804a100:	73 69                	jae    804a16b <__func__.1448+0x1a0>
 804a102:	7a 65                	jp     804a169 <__func__.1448+0x19e>
 804a104:	20 3d 3d 20 30 00    	and    %bh,0x30203d
 804a10a:	61                   	popa   
 804a10b:	20 21                	and    %ah,(%ecx)
 804a10d:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
 804a112:	4c                   	dec    %esp
 804a113:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
 804a117:	73 69                	jae    804a182 <__func__.1448+0x1b7>
 804a119:	7a 65                	jp     804a180 <__func__.1448+0x1b5>
 804a11b:	20 3d 3d 20 30 00    	and    %bh,0x30203d
 804a121:	62 20                	bound  %esp,(%eax)
 804a123:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
 804a129:	4c                   	dec    %esp
 804a12a:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
 804a12e:	73 69                	jae    804a199 <__func__.1448+0x1ce>
 804a130:	7a 65                	jp     804a197 <__func__.1448+0x1cc>
 804a132:	20 3d 3d 20 30 00    	and    %bh,0x30203d
 804a138:	61                   	popa   
 804a139:	20 21                	and    %ah,(%ecx)
 804a13b:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
 804a140:	4c                   	dec    %esp
 804a141:	00 62 20             	add    %ah,0x20(%edx)
 804a144:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
 804a14a:	4c                   	dec    %esp
 804a14b:	00 62 6c             	add    %ah,0x6c(%edx)
 804a14e:	6f                   	outsl  %ds:(%esi),(%dx)
 804a14f:	63 6b 20             	arpl   %bp,0x20(%ebx)
 804a152:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
 804a158:	4c                   	dec    %esp
 804a159:	20 7c 7c 20          	and    %bh,0x20(%esp,%edi,2)
 804a15d:	73 69                	jae    804a1c8 <__func__.1448+0x1fd>
 804a15f:	7a 65                	jp     804a1c6 <__func__.1448+0x1fb>
 804a161:	20 3d 3d 20 30 00    	and    %bh,0x30203d
 804a167:	73 74                	jae    804a1dd <__func__.1448+0x212>
 804a169:	72 69                	jb     804a1d4 <__func__.1448+0x209>
 804a16b:	6e                   	outsb  %ds:(%esi),(%dx)
 804a16c:	67 20 21             	and    %ah,(%bx,%di)
 804a16f:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
 804a174:	4c                   	dec    %esp
 804a175:	00 64 65 6c          	add    %ah,0x6c(%ebp,%eiz,2)
 804a179:	69 6d 69 74 65 72 73 	imul   $0x73726574,0x69(%ebp),%ebp
 804a180:	20 21                	and    %ah,(%ecx)
 804a182:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
 804a187:	4c                   	dec    %esp
 804a188:	00 73 61             	add    %dh,0x61(%ebx)
 804a18b:	76 65                	jbe    804a1f2 <__func__.1448+0x227>
 804a18d:	5f                   	pop    %edi
 804a18e:	70 74                	jo     804a204 <__func__.1448+0x239>
 804a190:	72 20                	jb     804a1b2 <__func__.1448+0x1e7>
 804a192:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
 804a198:	4c                   	dec    %esp
 804a199:	00 64 73 74          	add    %ah,0x74(%ebx,%esi,2)
 804a19d:	20 21                	and    %ah,(%ecx)
 804a19f:	3d 20 4e 55 4c       	cmp    $0x4c554e20,%eax
 804a1a4:	4c                   	dec    %esp
 804a1a5:	00 73 72             	add    %dh,0x72(%ebx)
 804a1a8:	63 20                	arpl   %sp,(%eax)
 804a1aa:	21 3d 20 4e 55 4c    	and    %edi,0x4c554e20
 804a1b0:	4c                   	dec    %esp
	...

Disassembly of section .rodata.str1.4:

0804a1b4 <.rodata.str1.4>:
 804a1b4:	65 78 65             	gs js  804a21c <__func__.1448+0x251>
 804a1b7:	63 75 74             	arpl   %si,0x74(%ebp)
 804a1ba:	65 64 20 61 6e       	gs and %ah,%fs:0x6e(%ecx)
 804a1bf:	20 75 6e             	and    %dh,0x6e(%ebp)
 804a1c2:	72 65                	jb     804a229 <__func__.1448+0x25e>
 804a1c4:	61                   	popa   
 804a1c5:	63 68 61             	arpl   %bp,0x61(%eax)
 804a1c8:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
 804a1cc:	73 74                	jae    804a242 <__func__.1448+0x277>
 804a1ce:	61                   	popa   
 804a1cf:	74 65                	je     804a236 <__func__.1448+0x26b>
 804a1d1:	6d                   	insl   (%dx),%es:(%edi)
 804a1d2:	65 6e                	outsb  %gs:(%esi),(%dx)
 804a1d4:	74 00                	je     804a1d6 <__func__.1448+0x20b>
 804a1d6:	00 00                	add    %al,(%eax)
 804a1d8:	55                   	push   %ebp
 804a1d9:	73 65                	jae    804a240 <__func__.1448+0x275>
 804a1db:	72 20                	jb     804a1fd <__func__.1448+0x232>
 804a1dd:	70 72                	jo     804a251 <__func__.1448+0x286>
 804a1df:	6f                   	outsl  %ds:(%esi),(%dx)
 804a1e0:	63 65 73             	arpl   %sp,0x73(%ebp)
 804a1e3:	73 20                	jae    804a205 <__func__.1448+0x23a>
 804a1e5:	41                   	inc    %ecx
 804a1e6:	42                   	inc    %edx
 804a1e7:	4f                   	dec    %edi
 804a1e8:	52                   	push   %edx
 804a1e9:	54                   	push   %esp
 804a1ea:	20 61 74             	and    %ah,0x74(%ecx)
 804a1ed:	20 25 73 3a 25 64    	and    %ah,0x64253a73
 804a1f3:	20 69 6e             	and    %ch,0x6e(%ecx)
 804a1f6:	20 25 73 28 29 3a    	and    %ah,0x3a292873
 804a1fc:	20 00                	and    %al,(%eax)
 804a1fe:	00 00                	add    %al,(%eax)
 804a200:	54                   	push   %esp
 804a201:	68 65 20 60 62       	push   $0x62602065
 804a206:	61                   	popa   
 804a207:	63 6b 74             	arpl   %bp,0x74(%ebx)
 804a20a:	72 61                	jb     804a26d <__func__.1448+0x2a2>
 804a20c:	63 65 27             	arpl   %sp,0x27(%ebp)
 804a20f:	20 70 72             	and    %dh,0x72(%eax)
 804a212:	6f                   	outsl  %ds:(%esi),(%dx)
 804a213:	67 72 61             	addr16 jb 804a277 <__func__.1448+0x2ac>
 804a216:	6d                   	insl   (%dx),%es:(%edi)
 804a217:	20 63 61             	and    %ah,0x61(%ebx)
 804a21a:	6e                   	outsb  %ds:(%esi),(%dx)
 804a21b:	20 6d 61             	and    %ch,0x61(%ebp)
 804a21e:	6b 65 20 63          	imul   $0x63,0x20(%ebp),%esp
 804a222:	61                   	popa   
 804a223:	6c                   	insb   (%dx),%es:(%edi)
 804a224:	6c                   	insb   (%dx),%es:(%edi)
 804a225:	20 73 74             	and    %dh,0x74(%ebx)
 804a228:	61                   	popa   
 804a229:	63 6b 73             	arpl   %bp,0x73(%ebx)
 804a22c:	20 75 73             	and    %dh,0x73(%ebp)
 804a22f:	65 66 75 6c          	gs data16 jne 804a29f <__func__.1448+0x2d4>
 804a233:	2e 0a 52 65          	or     %cs:0x65(%edx),%dl
 804a237:	61                   	popa   
 804a238:	64 20 22             	and    %ah,%fs:(%edx)
 804a23b:	42                   	inc    %edx
 804a23c:	61                   	popa   
 804a23d:	63 6b 74             	arpl   %bp,0x74(%ebx)
 804a240:	72 61                	jb     804a2a3 <__func__.1448+0x2d8>
 804a242:	63 65 73             	arpl   %sp,0x73(%ebp)
 804a245:	22 20                	and    (%eax),%ah
 804a247:	69 6e 20 74 68 65 20 	imul   $0x20656874,0x20(%esi),%ebp
 804a24e:	22 44 65 62          	and    0x62(%ebp,%eiz,2),%al
 804a252:	75 67                	jne    804a2bb <__func__.1448+0x2f0>
 804a254:	67 69 6e 67 20 54 6f 	imul   $0x6f6f5420,0x67(%bp),%ebp
 804a25b:	6f 
 804a25c:	6c                   	insb   (%dx),%es:(%edi)
 804a25d:	73 22                	jae    804a281 <__func__.1448+0x2b6>
 804a25f:	20 63 68             	and    %ah,0x68(%ebx)
 804a262:	61                   	popa   
 804a263:	70 74                	jo     804a2d9 <__func__.1448+0x30e>
 804a265:	65 72 0a             	gs jb  804a272 <__func__.1448+0x2a7>
 804a268:	6f                   	outsl  %ds:(%esi),(%dx)
 804a269:	66 20 74 68 65       	data16 and %dh,0x65(%eax,%ebp,2)
 804a26e:	20 50 69             	and    %dl,0x69(%eax)
 804a271:	6e                   	outsb  %ds:(%esi),(%dx)
 804a272:	74 6f                	je     804a2e3 <__func__.1448+0x318>
 804a274:	73 20                	jae    804a296 <__func__.1448+0x2cb>
 804a276:	64 6f                	outsl  %fs:(%esi),(%dx)
 804a278:	63 75 6d             	arpl   %si,0x6d(%ebp)
 804a27b:	65 6e                	outsb  %gs:(%esi),(%dx)
 804a27d:	74 61                	je     804a2e0 <__func__.1448+0x315>
 804a27f:	74 69                	je     804a2ea <__func__.1448+0x31f>
 804a281:	6f                   	outsl  %ds:(%esi),(%dx)
 804a282:	6e                   	outsb  %ds:(%esi),(%dx)
 804a283:	20 66 6f             	and    %ah,0x6f(%esi)
 804a286:	72 20                	jb     804a2a8 <__func__.1448+0x2dd>
 804a288:	6d                   	insl   (%dx),%es:(%edi)
 804a289:	6f                   	outsl  %ds:(%esi),(%dx)
 804a28a:	72 65                	jb     804a2f1 <__func__.1448+0x326>
 804a28c:	20 69 6e             	and    %ch,0x6e(%ecx)
 804a28f:	66 6f                	outsw  %ds:(%esi),(%dx)
 804a291:	72 6d                	jb     804a300 <__func__.1448+0x335>
 804a293:	61                   	popa   
 804a294:	74 69                	je     804a2ff <__func__.1448+0x334>
 804a296:	6f                   	outsl  %ds:(%esi),(%dx)
 804a297:	6e                   	outsb  %ds:(%esi),(%dx)
 804a298:	2e 00 00             	add    %al,%cs:(%eax)
	...

Disassembly of section .data:

0804b29c <factors.1820>:
 804b29c:	69 a0 04 08 6f a0 04 	imul   $0xa0720804,-0x5f90f7fc(%eax),%esp
 804b2a3:	08 72 a0 
 804b2a6:	04 08                	add    $0x8,%al
 804b2a8:	75 a0                	jne    804b24a <__func__.1448+0x127f>
 804b2aa:	04 08                	add    $0x8,%al
 804b2ac:	78 a0                	js     804b24e <__func__.1448+0x1283>
 804b2ae:	04 08                	add    $0x8,%al
 804b2b0:	00 00                	add    %al,(%eax)
	...

Disassembly of section .bss:

0804b2b4 <explained.1502>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <__executable_start-0x804801c>
   a:	74 75                	je     81 <__executable_start-0x8048013>
   c:	20 34 2e             	and    %dh,(%esi,%ebp,1)
   f:	38 2e                	cmp    %ch,(%esi)
  11:	35 2d 34 75 62       	xor    $0x6275342d,%eax
  16:	75 6e                	jne    86 <__executable_start-0x804800e>
  18:	74 75                	je     8f <__executable_start-0x8048005>
  1a:	34 29                	xor    $0x29,%al
  1c:	20 34 2e             	and    %dh,(%esi,%ebp,1)
  1f:	38 2e                	cmp    %ch,(%esi)
  21:	35                   	.byte 0x35
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 00                	add    $0x0,%al
   c:	00 00                	add    %al,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	a0 80 04 08 2f       	mov    0x2f080480,%al
	...
  1d:	00 00                	add    %al,(%eax)
  1f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  22:	00 00                	add    %al,(%eax)
  24:	02 00                	add    (%eax),%al
  26:	20 01                	and    %al,(%ecx)
  28:	00 00                	add    %al,(%eax)
  2a:	04 00                	add    $0x0,%al
  2c:	00 00                	add    %al,(%eax)
  2e:	00 00                	add    %al,(%eax)
  30:	cf                   	iret   
  31:	80 04 08 1f          	addb   $0x1f,(%eax,%ecx,1)
	...
  3d:	00 00                	add    %al,(%eax)
  3f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  42:	00 00                	add    %al,(%eax)
  44:	02 00                	add    (%eax),%al
  46:	e0 01                	loopne 49 <__executable_start-0x804804b>
  48:	00 00                	add    %al,(%eax)
  4a:	04 00                	add    $0x0,%al
  4c:	00 00                	add    %al,(%eax)
  4e:	00 00                	add    %al,(%eax)
  50:	ee                   	out    %al,(%dx)
  51:	80 04 08 c6          	addb   $0xc6,(%eax,%ecx,1)
  55:	01 00                	add    %eax,(%eax)
	...
  5f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  62:	00 00                	add    %al,(%eax)
  64:	02 00                	add    (%eax),%al
  66:	e9 0a 00 00 04       	jmp    4000075 <__executable_start-0x404801f>
  6b:	00 00                	add    %al,(%eax)
  6d:	00 00                	add    %al,(%eax)
  6f:	00 b4 82 04 08 58 00 	add    %dh,0x580804(%edx,%eax,4)
	...
  7e:	00 00                	add    %al,(%eax)
  80:	1c 00                	sbb    $0x0,%al
  82:	00 00                	add    %al,(%eax)
  84:	02 00                	add    (%eax),%al
  86:	a9 0c 00 00 04       	test   $0x400000c,%eax
  8b:	00 00                	add    %al,(%eax)
  8d:	00 00                	add    %al,(%eax)
  8f:	00 0c 83             	add    %cl,(%ebx,%eax,4)
  92:	04 08                	add    $0x8,%al
  94:	5f                   	pop    %edi
  95:	01 00                	add    %eax,(%eax)
	...
  9f:	00 1c 00             	add    %bl,(%eax,%eax,1)
  a2:	00 00                	add    %al,(%eax)
  a4:	02 00                	add    (%eax),%al
  a6:	6a 10                	push   $0x10
  a8:	00 00                	add    %al,(%eax)
  aa:	04 00                	add    $0x0,%al
  ac:	00 00                	add    %al,(%eax)
  ae:	00 00                	add    %al,(%eax)
  b0:	6b 84 04 08 7a 00 00 	imul   $0x0,0x7a08(%esp,%eax,1),%eax
  b7:	00 
	...
  c0:	1c 00                	sbb    $0x0,%al
  c2:	00 00                	add    %al,(%eax)
  c4:	02 00                	add    (%eax),%al
  c6:	bc 11 00 00 04       	mov    $0x4000011,%esp
  cb:	00 00                	add    %al,(%eax)
  cd:	00 00                	add    %al,(%eax)
  cf:	00 f0                	add    %dh,%al
  d1:	84 04 08             	test   %al,(%eax,%ecx,1)
  d4:	53                   	push   %ebx
  d5:	0d 00 00 00 00       	or     $0x0,%eax
  da:	00 00                	add    %al,(%eax)
  dc:	00 00                	add    %al,(%eax)
  de:	00 00                	add    %al,(%eax)
  e0:	1c 00                	sbb    $0x0,%al
  e2:	00 00                	add    %al,(%eax)
  e4:	02 00                	add    (%eax),%al
  e6:	74 20                	je     108 <__executable_start-0x8047f8c>
  e8:	00 00                	add    %al,(%eax)
  ea:	04 00                	add    $0x0,%al
  ec:	00 00                	add    %al,(%eax)
  ee:	00 00                	add    %al,(%eax)
  f0:	50                   	push   %eax
  f1:	92                   	xchg   %eax,%edx
  f2:	04 08                	add    $0x8,%al
  f4:	b2 08                	mov    $0x8,%dl
	...
  fe:	00 00                	add    %al,(%eax)
 100:	1c 00                	sbb    $0x0,%al
 102:	00 00                	add    %al,(%eax)
 104:	02 00                	add    (%eax),%al
 106:	26 2d 00 00 04 00    	es sub $0x40000,%eax
 10c:	00 00                	add    %al,(%eax)
 10e:	00 00                	add    %al,(%eax)
 110:	10 9b 04 08 6f 02    	adc    %bl,0x26f0804(%ebx)
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	1c 01                	sbb    $0x1,%al
       2:	00 00                	add    %al,(%eax)
       4:	04 00                	add    $0x0,%al
       6:	00 00                	add    %al,(%eax)
       8:	00 00                	add    %al,(%eax)
       a:	04 01                	add    $0x1,%al
       c:	52                   	push   %edx
       d:	00 00                	add    %al,(%eax)
       f:	00 01                	add    %al,(%ecx)
      11:	31 00                	xor    %eax,(%eax)
      13:	00 00                	add    %al,(%eax)
      15:	00 00                	add    %al,(%eax)
      17:	00 00                	add    %al,(%eax)
      19:	a0 80 04 08 2f       	mov    0x2f080480,%al
      1e:	00 00                	add    %al,(%eax)
      20:	00 00                	add    %al,(%eax)
      22:	00 00                	add    %al,(%eax)
      24:	00 02                	add    %al,(%edx)
      26:	04 05                	add    $0x5,%al
      28:	69 6e 74 00 03 04 07 	imul   $0x7040300,0x74(%esi),%ebp
      2f:	7a 02                	jp     33 <__executable_start-0x8048061>
      31:	00 00                	add    %al,(%eax)
      33:	04 4d                	add    $0x4d,%al
      35:	00 00                	add    %al,(%eax)
      37:	00 01                	add    %al,(%ecx)
      39:	08 25 00 00 00 a0    	or     %ah,0xa0000000
      3f:	80 04 08 2f          	addb   $0x2f,(%eax,%ecx,1)
      43:	00 00                	add    %al,(%eax)
      45:	00 01                	add    %al,(%ecx)
      47:	9c                   	pushf  
      48:	b4 00                	mov    $0x0,%ah
      4a:	00 00                	add    %al,(%eax)
      4c:	05 2c 00 00 00       	add    $0x2c,%eax
      51:	01 08                	add    %ecx,(%eax)
      53:	25 00 00 00 02       	and    $0x2000000,%eax
      58:	91                   	xchg   %eax,%ecx
      59:	00 05 22 00 00 00    	add    %al,0x22
      5f:	01 08                	add    %ecx,(%eax)
      61:	b4 00                	mov    $0x0,%ah
      63:	00 00                	add    %al,(%eax)
      65:	02 91 04 06 66 64    	add    0x64660604(%ecx),%dl
      6b:	00 01                	add    %al,(%ecx)
      6d:	0a 25 00 00 00 00    	or     0x0,%ah
      73:	00 00                	add    %al,(%eax)
      75:	00 07                	add    %al,(%edi)
      77:	62 75 66             	bound  %esi,0x66(%ebp)
      7a:	00 01                	add    %al,(%ecx)
      7c:	0b c7                	or     %edi,%eax
      7e:	00 00                	add    %al,(%eax)
      80:	00 02                	add    %al,(%edx)
      82:	74 16                	je     9a <__executable_start-0x8047ffa>
      84:	08 b5 80 04 08 de    	or     %dh,-0x21f7fb80(%ebp)
      8a:	00 00                	add    %al,(%eax)
      8c:	00 9c 00 00 00 09 02 	add    %bl,0x2090000(%eax,%eax,1)
      93:	74 00                	je     95 <__executable_start-0x8047fff>
      95:	05 03 d2 9f 04       	add    $0x49fd203,%eax
      9a:	08 00                	or     %al,(%eax)
      9c:	0a cd                	or     %ch,%cl
      9e:	80 04 08 fe          	addb   $0xfe,(%eax,%ecx,1)
      a2:	00 00                	add    %al,(%eax)
      a4:	00 09                	add    %cl,(%ecx)
      a6:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
      aa:	74 16                	je     c2 <__executable_start-0x8047fd2>
      ac:	09 02                	or     %eax,(%edx)
      ae:	74 08                	je     b8 <__executable_start-0x8047fdc>
      b0:	01 32                	add    %esi,(%edx)
      b2:	00 00                	add    %al,(%eax)
      b4:	0b 04 ba             	or     (%edx,%edi,4),%eax
      b7:	00 00                	add    %al,(%eax)
      b9:	00 0b                	add    %cl,(%ebx)
      bb:	04 c0                	add    $0xc0,%al
      bd:	00 00                	add    %al,(%eax)
      bf:	00 03                	add    %al,(%ebx)
      c1:	01 06                	add    %eax,(%esi)
      c3:	6b 02 00             	imul   $0x0,(%edx),%eax
      c6:	00 0c c0             	add    %cl,(%eax,%eax,8)
      c9:	00 00                	add    %al,(%eax)
      cb:	00 d7                	add    %dl,%bh
      cd:	00 00                	add    %al,(%eax)
      cf:	00 0d d7 00 00 00    	add    %cl,0xd7
      d5:	09 00                	or     %eax,(%eax)
      d7:	03 04 07             	add    (%edi,%eax,1),%eax
      da:	44                   	inc    %esp
      db:	00 00                	add    %al,(%eax)
      dd:	00 0e                	add    %cl,(%esi)
      df:	27                   	daa    
      e0:	00 00                	add    %al,(%eax)
      e2:	00 02                	add    %al,(%edx)
      e4:	1d 25 00 00 00       	sbb    $0x25,%eax
      e9:	f3 00 00             	repz add %al,(%eax)
      ec:	00 0f                	add    %cl,(%edi)
      ee:	f3 00 00             	repz add %al,(%eax)
      f1:	00 00                	add    %al,(%eax)
      f3:	0b 04 f9             	or     (%ecx,%edi,8),%eax
      f6:	00 00                	add    %al,(%eax)
      f8:	00 10                	add    %dl,(%eax)
      fa:	c0 00 00             	rolb   $0x0,(%eax)
      fd:	00 0e                	add    %cl,(%esi)
      ff:	3f                   	aas    
     100:	00 00                	add    %al,(%eax)
     102:	00 02                	add    %al,(%edx)
     104:	1f                   	pop    %ds
     105:	25 00 00 00 1d       	and    $0x1d000000,%eax
     10a:	01 00                	add    %eax,(%eax)
     10c:	00 0f                	add    %cl,(%edi)
     10e:	25 00 00 00 0f       	and    $0xf000000,%eax
     113:	1d 01 00 00 0f       	sbb    $0xf000001,%eax
     118:	2c 00                	sub    $0x0,%al
     11a:	00 00                	add    %al,(%eax)
     11c:	00 11                	add    %dl,(%ecx)
     11e:	04 00                	add    $0x0,%al
     120:	bc 00 00 00 04       	mov    $0x4000000,%esp
     125:	00 dc                	add    %bl,%ah
     127:	00 00                	add    %al,(%eax)
     129:	00 04 01             	add    %al,(%ecx,%eax,1)
     12c:	52                   	push   %edx
     12d:	00 00                	add    %al,(%eax)
     12f:	00 01                	add    %al,(%ecx)
     131:	ad                   	lods   %ds:(%esi),%eax
     132:	00 00                	add    %al,(%eax)
     134:	00 00                	add    %al,(%eax)
     136:	00 00                	add    %al,(%eax)
     138:	00 cf                	add    %cl,%bh
     13a:	80 04 08 1f          	addb   $0x1f,(%eax,%ecx,1)
     13e:	00 00                	add    %al,(%eax)
     140:	00 58 00             	add    %bl,0x0(%eax)
     143:	00 00                	add    %al,(%eax)
     145:	02 04 05 69 6e 74 00 	add    0x746e69(,%eax,1),%al
     14c:	03 a6 00 00 00 01    	add    0x1000000(%esi),%esp
     152:	07                   	pop    %es
     153:	cf                   	iret   
     154:	80 04 08 1f          	addb   $0x1f,(%eax,%ecx,1)
     158:	00 00                	add    %al,(%eax)
     15a:	00 01                	add    %al,(%ecx)
     15c:	9c                   	pushf  
     15d:	85 00                	test   %eax,(%eax)
     15f:	00 00                	add    %al,(%eax)
     161:	04 2c                	add    $0x2c,%al
     163:	00 00                	add    %al,(%eax)
     165:	00 01                	add    %al,(%ecx)
     167:	07                   	pop    %es
     168:	25 00 00 00 02       	and    $0x2000000,%eax
     16d:	91                   	xchg   %eax,%ecx
     16e:	00 04 22             	add    %al,(%edx,%eiz,1)
     171:	00 00                	add    %al,(%eax)
     173:	00 01                	add    %al,(%ecx)
     175:	07                   	pop    %es
     176:	85 00                	test   %eax,(%eax)
     178:	00 00                	add    %al,(%eax)
     17a:	02 91 04 05 e6 80    	add    -0x7f19fafc(%ecx),%dl
     180:	04 08                	add    $0x8,%al
     182:	98                   	cwtl   
     183:	00 00                	add    %al,(%eax)
     185:	00 7b 00             	add    %bh,0x0(%ebx)
     188:	00 00                	add    %al,(%eax)
     18a:	06                   	push   %es
     18b:	02 74 00 03          	add    0x3(%eax,%eax,1),%dh
     18f:	91                   	xchg   %eax,%ecx
     190:	00 06                	add    %al,(%esi)
     192:	06                   	push   %es
     193:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
     197:	91                   	xchg   %eax,%ecx
     198:	04 06                	add    $0x6,%al
     19a:	00 07                	add    %al,(%edi)
     19c:	ee                   	out    %al,(%dx)
     19d:	80 04 08 b2          	addb   $0xb2,(%eax,%ecx,1)
     1a1:	00 00                	add    %al,(%eax)
     1a3:	00 00                	add    %al,(%eax)
     1a5:	08 04 8b             	or     %al,(%ebx,%ecx,4)
     1a8:	00 00                	add    %al,(%eax)
     1aa:	00 08                	add    %cl,(%eax)
     1ac:	04 91                	add    $0x91,%al
     1ae:	00 00                	add    %al,(%eax)
     1b0:	00 09                	add    %cl,(%ecx)
     1b2:	01 06                	add    %eax,(%esi)
     1b4:	6b 02 00             	imul   $0x0,(%edx),%eax
     1b7:	00 0a                	add    %cl,(%edx)
     1b9:	4d                   	dec    %ebp
     1ba:	00 00                	add    %al,(%eax)
     1bc:	00 01                	add    %al,(%ecx)
     1be:	03 25 00 00 00 b2    	add    0xb2000000,%esp
     1c4:	00 00                	add    %al,(%eax)
     1c6:	00 0b                	add    %cl,(%ebx)
     1c8:	25 00 00 00 0b       	and    $0xb000000,%eax
     1cd:	85 00                	test   %eax,(%eax)
     1cf:	00 00                	add    %al,(%eax)
     1d1:	00 0c fa             	add    %cl,(%edx,%edi,8)
     1d4:	00 00                	add    %al,(%eax)
     1d6:	00 02                	add    %al,(%edx)
     1d8:	18 0b                	sbb    %cl,(%ebx)
     1da:	25 00 00 00 00       	and    $0x0,%eax
     1df:	00 05 09 00 00 04    	add    %al,0x4000009
     1e5:	00 89 01 00 00 04    	add    %cl,0x4000001(%ecx)
     1eb:	01 52 00             	add    %edx,0x0(%edx)
     1ee:	00 00                	add    %al,(%eax)
     1f0:	01 d4                	add    %edx,%esp
     1f2:	00 00                	add    %al,(%eax)
     1f4:	00 00                	add    %al,(%eax)
     1f6:	00 00                	add    %al,(%eax)
     1f8:	00 ee                	add    %ch,%dh
     1fa:	80 04 08 c6          	addb   $0xc6,(%eax,%ecx,1)
     1fe:	01 00                	add    %eax,(%eax)
     200:	00 a7 00 00 00 02    	add    %ah,0x2000000(%edi)
     206:	70 01                	jo     209 <__executable_start-0x8047e8b>
     208:	00 00                	add    %al,(%eax)
     20a:	02 08                	add    (%eax),%cl
     20c:	30 00                	xor    %al,(%eax)
     20e:	00 00                	add    %al,(%eax)
     210:	03 04 05 69 6e 74 00 	add    0x746e69(,%eax,1),%eax
     217:	02 6e 01             	add    0x1(%esi),%ch
     21a:	00 00                	add    %al,(%eax)
     21c:	02 0c 30             	add    (%eax,%esi,1),%cl
     21f:	00 00                	add    %al,(%eax)
     221:	00 02                	add    %al,(%edx)
     223:	3c 01                	cmp    $0x1,%al
     225:	00 00                	add    %al,(%eax)
     227:	02 31                	add    (%ecx),%dh
     229:	4d                   	dec    %ebp
     22a:	00 00                	add    %al,(%eax)
     22c:	00 04 04             	add    %al,(%esp,%eax,1)
     22f:	53                   	push   %ebx
     230:	00 00                	add    %al,(%eax)
     232:	00 05 30 00 00 00    	add    %al,0x30
     238:	62 00                	bound  %eax,(%eax)
     23a:	00 00                	add    %al,(%eax)
     23c:	06                   	push   %es
     23d:	30 00                	xor    %al,(%eax)
     23f:	00 00                	add    %al,(%eax)
     241:	00 07                	add    %al,(%edi)
     243:	01 06                	add    %eax,(%esi)
     245:	64 02 00             	add    %fs:(%eax),%al
     248:	00 07                	add    %al,(%edi)
     24a:	02 05 29 01 00 00    	add    0x129,%al
     250:	07                   	pop    %es
     251:	08 05 d3 01 00 00    	or     %al,0x1d3
     257:	07                   	pop    %es
     258:	01 08                	add    %ecx,(%eax)
     25a:	62 02                	bound  %eax,(%edx)
     25c:	00 00                	add    %al,(%eax)
     25e:	07                   	pop    %es
     25f:	02 07                	add    (%edi),%al
     261:	c6 02 00             	movb   $0x0,(%edx)
     264:	00 02                	add    %al,(%edx)
     266:	87 02                	xchg   %eax,(%edx)
     268:	00 00                	add    %al,(%eax)
     26a:	03 1a                	add    (%edx),%ebx
     26c:	90                   	nop
     26d:	00 00                	add    %al,(%eax)
     26f:	00 07                	add    %al,(%edi)
     271:	04 07                	add    $0x7,%al
     273:	7a 02                	jp     277 <__executable_start-0x8047e1d>
     275:	00 00                	add    %al,(%eax)
     277:	07                   	pop    %es
     278:	08 07                	or     %al,(%edi)
     27a:	70 02                	jo     27e <__executable_start-0x8047e16>
     27c:	00 00                	add    %al,(%eax)
     27e:	08 04 04             	or     %al,(%esp,%eax,1)
     281:	08 49 01             	or     %cl,0x1(%ecx)
     284:	00 00                	add    %al,(%eax)
     286:	09 c1                	or     %eax,%ecx
     288:	03 00                	add    (%eax),%eax
     28a:	00 00                	add    %al,(%eax)
     28c:	09 37                	or     %esi,(%edi)
     28e:	03 00                	add    (%eax),%eax
     290:	00 01                	add    %al,(%ecx)
     292:	09 df                	or     %ebx,%edi
     294:	02 00                	add    (%eax),%al
     296:	00 02                	add    %al,(%edx)
     298:	09 20                	or     %esp,(%eax)
     29a:	01 00                	add    %eax,(%eax)
     29c:	00 03                	add    %al,(%ebx)
     29e:	09 63 01             	or     %esp,0x1(%ebx)
     2a1:	00 00                	add    %al,(%eax)
     2a3:	04 09                	add    $0x9,%al
     2a5:	b6 03                	mov    $0x3,%dh
     2a7:	00 00                	add    %al,(%eax)
     2a9:	05 09 55 01 00       	add    $0x15509,%eax
     2ae:	00 06                	add    %al,(%esi)
     2b0:	09 55 02             	or     %edx,0x2(%ebp)
     2b3:	00 00                	add    %al,(%eax)
     2b5:	07                   	pop    %es
     2b6:	09 33                	or     %esi,(%ebx)
     2b8:	01 00                	add    %eax,(%eax)
     2ba:	00 08                	add    %cl,(%eax)
     2bc:	09 9f 02 00 00 09    	or     %ebx,0x9000002(%edi)
     2c2:	09 4c 02 00          	or     %ecx,0x0(%edx,%eax,1)
     2c6:	00 0a                	add    %cl,(%edx)
     2c8:	09 bd 02 00 00 0b    	or     %edi,0xb000002(%ebp)
     2ce:	09 16                	or     %edx,(%esi)
     2d0:	01 00                	add    %eax,(%eax)
     2d2:	00 0c 09             	add    %cl,(%ecx,%ecx,1)
     2d5:	97                   	xchg   %eax,%edi
     2d6:	03 00                	add    (%eax),%eax
     2d8:	00 0d 09 a9 02 00    	add    %cl,0x2a909
     2de:	00 0e                	add    %cl,(%esi)
     2e0:	09 01                	or     %eax,(%ecx)
     2e2:	03 00                	add    (%eax),%eax
     2e4:	00 0f                	add    %cl,(%edi)
     2e6:	09 a0 03 00 00 10    	or     %esp,0x10000003(%eax)
     2ec:	09 0b                	or     %ecx,(%ebx)
     2ee:	02 00                	add    (%eax),%al
     2f0:	00 11                	add    %dl,(%ecx)
     2f2:	09 85 01 00 00 12    	or     %eax,0x12000001(%ebp)
     2f8:	09 aa 03 00 00 13    	or     %ebp,0x13000003(%edx)
     2fe:	09 4e 03             	or     %ecx,0x3(%esi)
     301:	00 00                	add    %al,(%eax)
     303:	14 09                	adc    $0x9,%al
     305:	c0 01 00             	rolb   $0x0,(%ecx)
     308:	00 15 09 ee 02 00    	add    %dl,0x2ee09
     30e:	00 16                	add    %dl,(%esi)
     310:	09 6d 03             	or     %ebp,0x3(%ebp)
     313:	00 00                	add    %al,(%eax)
     315:	17                   	pop    %ss
     316:	09 1c 03             	or     %ebx,(%ebx,%eax,1)
     319:	00 00                	add    %al,(%eax)
     31b:	18 09                	sbb    %cl,(%ecx)
     31d:	17                   	pop    %ss
     31e:	02 00                	add    (%eax),%al
     320:	00 19                	add    %bl,(%ecx)
     322:	09 fb                	or     %edi,%ebx
     324:	01 00                	add    %eax,(%eax)
     326:	00 1a                	add    %bl,(%edx)
     328:	00 0a                	add    %cl,(%edx)
     32a:	10 03                	adc    %al,(%ebx)
     32c:	00 00                	add    %al,(%eax)
     32e:	01 41 ee             	add    %eax,-0x12(%ecx)
     331:	80 04 08 2e          	addb   $0x2e,(%eax,%ecx,1)
     335:	00 00                	add    %al,(%eax)
     337:	00 01                	add    %al,(%ecx)
     339:	9c                   	pushf  
     33a:	b6 01                	mov    $0x1,%dh
     33c:	00 00                	add    %al,(%eax)
     33e:	0b b4 02 00 00 d4 01 	or     0x1d40000(%edx,%eax,1),%esi
     345:	00 00                	add    %al,(%eax)
     347:	05 03 85 9d 04       	add    $0x49d8503,%eax
     34c:	08 0c f1             	or     %cl,(%ecx,%esi,8)
     34f:	80 04 08 07          	addb   $0x7,(%eax,%ecx,1)
     353:	00 00                	add    %al,(%eax)
     355:	00 86 01 00 00 0d    	add    %al,0xd000001(%esi)
     35b:	47                   	inc    %edi
     35c:	03 00                	add    (%eax),%eax
     35e:	00 01                	add    %al,(%ecx)
     360:	43                   	inc    %ebx
     361:	30 00                	xor    %al,(%eax)
     363:	00 00                	add    %al,(%eax)
     365:	00 0e                	add    %cl,(%esi)
     367:	1c 81                	sbb    $0x81,%al
     369:	04 08                	add    $0x8,%al
     36b:	eb 08                	jmp    375 <__executable_start-0x8047d1f>
     36d:	00 00                	add    %al,(%eax)
     36f:	0f 02 74 00 05       	lar    0x5(%eax,%eax,1),%esi
     374:	03 dd                	add    %ebp,%ebx
     376:	9f                   	lahf   
     377:	04 08                	add    $0x8,%al
     379:	0f 02 74 04 02       	lar    0x2(%esp,%eax,1),%esi
     37e:	08 44 0f 02          	or     %al,0x2(%edi,%ecx,1)
     382:	74 08                	je     38c <__executable_start-0x8047d08>
     384:	05 03 85 9d 04       	add    $0x49d8503,%eax
     389:	08 0f                	or     %cl,(%edi)
     38b:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
     38f:	03 b4 a1 04 08 00 00 	add    0x804(%ecx,%eiz,4),%esi
     396:	10 cd                	adc    %cl,%ch
     398:	01 00                	add    %eax,(%eax)
     39a:	00 c6                	add    %al,%dh
     39c:	01 00                	add    %eax,(%eax)
     39e:	00 11                	add    %dl,(%ecx)
     3a0:	c6 01 00             	movb   $0x0,(%ecx)
     3a3:	00 04 00             	add    %al,(%eax,%eax,1)
     3a6:	07                   	pop    %es
     3a7:	04 07                	add    $0x7,%al
     3a9:	44                   	inc    %esp
     3aa:	00 00                	add    %al,(%eax)
     3ac:	00 07                	add    %al,(%edi)
     3ae:	01 06                	add    %eax,(%esi)
     3b0:	6b 02 00             	imul   $0x0,(%edx),%eax
     3b3:	00 12                	add    %dl,(%edx)
     3b5:	b6 01                	mov    $0x1,%dh
     3b7:	00 00                	add    %al,(%eax)
     3b9:	0a fa                	or     %dl,%bh
     3bb:	00 00                	add    %al,(%eax)
     3bd:	00 01                	add    %al,(%ecx)
     3bf:	48                   	dec    %eax
     3c0:	1c 81                	sbb    $0x81,%al
     3c2:	04 08                	add    $0x8,%al
     3c4:	32 00                	xor    (%eax),%al
     3c6:	00 00                	add    %al,(%eax)
     3c8:	01 9c 54 02 00 00 13 	add    %ebx,0x13000002(%esp,%edx,2)
     3cf:	81 03 00 00 01 48    	addl   $0x48010000,(%ebx)
     3d5:	30 00                	xor    %al,(%eax)
     3d7:	00 00                	add    %al,(%eax)
     3d9:	02 91 00 0b b4 02    	add    0x2b40b00(%ecx),%dl
     3df:	00 00                	add    %al,(%eax)
     3e1:	54                   	push   %esp
     3e2:	02 00                	add    (%eax),%al
     3e4:	00 05 03 80 9d 04    	add    %al,0x49d8003
     3ea:	08 0c 1f             	or     %cl,(%edi,%ebx,1)
     3ed:	81 04 08 0b 00 00 00 	addl   $0xb,(%eax,%ecx,1)
     3f4:	24 02                	and    $0x2,%al
     3f6:	00 00                	add    %al,(%eax)
     3f8:	0d 47 03 00 00       	or     $0x347,%eax
     3fd:	01 4a 30             	add    %ecx,0x30(%edx)
     400:	00 00                	add    %al,(%eax)
     402:	00 00                	add    %al,(%eax)
     404:	0e                   	push   %cs
     405:	4e                   	dec    %esi
     406:	81 04 08 eb 08 00 00 	addl   $0x8eb,(%eax,%ecx,1)
     40d:	0f 02 74 00 05       	lar    0x5(%eax,%eax,1),%esi
     412:	03 dd                	add    %ebp,%ebx
     414:	9f                   	lahf   
     415:	04 08                	add    $0x8,%al
     417:	0f 02 74 04 02       	lar    0x2(%esp,%eax,1),%esi
     41c:	08 4b 0f             	or     %cl,0xf(%ebx)
     41f:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
     423:	03 80 9d 04 08 0f    	add    0xf08049d(%eax),%eax
     429:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
     42d:	03 b4 a1 04 08 00 00 	add    0x804(%ecx,%eiz,4),%esi
     434:	12 b6 01 00 00 14    	adc    0x14000001(%esi),%dh
     43a:	bb 01 00 00 01       	mov    $0x1000001,%ebx
     43f:	4f                   	dec    %edi
     440:	25 00 00 00 4e       	and    $0x4e000000,%eax
     445:	81 04 08 0c 00 00 00 	addl   $0xc,(%eax,%ecx,1)
     44c:	01 9c 98 02 00 00 13 	add    %ebx,0x13000002(%eax,%ebx,4)
     453:	90                   	nop
     454:	02 00                	add    (%eax),%al
     456:	00 01                	add    %al,(%ecx)
     458:	4f                   	dec    %edi
     459:	98                   	cwtl   
     45a:	02 00                	add    (%eax),%al
     45c:	00 02                	add    %al,(%edx)
     45e:	91                   	xchg   %eax,%ecx
     45f:	00 15 4e 81 04 08    	add    %dl,0x804814e
     465:	0b 00                	or     (%eax),%eax
     467:	00 00                	add    %al,(%eax)
     469:	16                   	push   %ss
     46a:	47                   	inc    %edi
     46b:	03 00                	add    (%eax),%eax
     46d:	00 01                	add    %al,(%ecx)
     46f:	51                   	push   %ecx
     470:	30 00                	xor    %al,(%eax)
     472:	00 00                	add    %al,(%eax)
     474:	01 50 00             	add    %edx,0x0(%eax)
     477:	00 04 04             	add    %al,(%esp,%eax,1)
     47a:	9e                   	sahf   
     47b:	02 00                	add    (%eax),%al
     47d:	00 12                	add    %dl,(%edx)
     47f:	cd 01                	int    $0x1
     481:	00 00                	add    %al,(%eax)
     483:	14 a7                	adc    $0xa7,%al
     485:	01 00                	add    %eax,(%eax)
     487:	00 01                	add    %al,(%ecx)
     489:	55                   	push   %ebp
     48a:	30 00                	xor    %al,(%eax)
     48c:	00 00                	add    %al,(%eax)
     48e:	5a                   	pop    %edx
     48f:	81 04 08 0c 00 00 00 	addl   $0xc,(%eax,%ecx,1)
     496:	01 9c e2 02 00 00 17 	add    %ebx,0x17000002(%edx,%eiz,8)
     49d:	70 69                	jo     508 <__executable_start-0x8047b8c>
     49f:	64 00 01             	add    %al,%fs:(%ecx)
     4a2:	55                   	push   %ebp
     4a3:	25 00 00 00 02       	and    $0x2000000,%eax
     4a8:	91                   	xchg   %eax,%ecx
     4a9:	00 15 5a 81 04 08    	add    %dl,0x804815a
     4af:	0b 00                	or     (%eax),%eax
     4b1:	00 00                	add    %al,(%eax)
     4b3:	16                   	push   %ss
     4b4:	47                   	inc    %edi
     4b5:	03 00                	add    (%eax),%eax
     4b7:	00 01                	add    %al,(%ecx)
     4b9:	57                   	push   %edi
     4ba:	30 00                	xor    %al,(%eax)
     4bc:	00 00                	add    %al,(%eax)
     4be:	01 50 00             	add    %edx,0x0(%eax)
     4c1:	00 14 7e             	add    %dl,(%esi,%edi,2)
     4c4:	01 00                	add    %eax,(%eax)
     4c6:	00 01                	add    %al,(%ecx)
     4c8:	5b                   	pop    %ebx
     4c9:	31 03                	xor    %eax,(%ebx)
     4cb:	00 00                	add    %al,(%eax)
     4cd:	66 81 04 08 15 00    	addw   $0x15,(%eax,%ecx,1)
     4d3:	00 00                	add    %al,(%eax)
     4d5:	01 9c 31 03 00 00 13 	add    %ebx,0x13000003(%ecx,%esi,1)
     4dc:	5e                   	pop    %esi
     4dd:	01 00                	add    %eax,(%eax)
     4df:	00 01                	add    %al,(%ecx)
     4e1:	5b                   	pop    %ebx
     4e2:	98                   	cwtl   
     4e3:	02 00                	add    (%eax),%al
     4e5:	00 02                	add    %al,(%edx)
     4e7:	91                   	xchg   %eax,%ecx
     4e8:	00 13                	add    %dl,(%ebx)
     4ea:	ca 03 00             	lret   $0x3
     4ed:	00 01                	add    %al,(%ecx)
     4ef:	5b                   	pop    %ebx
     4f0:	90                   	nop
     4f1:	00 00                	add    %al,(%eax)
     4f3:	00 02                	add    %al,(%edx)
     4f5:	91                   	xchg   %eax,%ecx
     4f6:	04 15                	add    $0x15,%al
     4f8:	66 81 04 08 0f 00    	addw   $0xf,(%eax,%ecx,1)
     4fe:	00 00                	add    %al,(%eax)
     500:	18 47 03             	sbb    %al,0x3(%edi)
     503:	00 00                	add    %al,(%eax)
     505:	01 5d 30             	add    %ebx,0x30(%ebp)
     508:	00 00                	add    %al,(%eax)
     50a:	00 13                	add    %dl,(%ebx)
     50c:	00 00                	add    %al,(%eax)
     50e:	00 00                	add    %al,(%eax)
     510:	00 07                	add    %al,(%edi)
     512:	01 02                	add    %eax,(%edx)
     514:	e8 02 00 00 14       	call   1400051b <explained.1502+0xbfb5267>
     519:	40                   	inc    %eax
     51a:	03 00                	add    (%eax),%eax
     51c:	00 01                	add    %al,(%ecx)
     51e:	61                   	popa   
     51f:	31 03                	xor    %eax,(%ebx)
     521:	00 00                	add    %al,(%eax)
     523:	7b 81                	jnp    4a6 <__executable_start-0x8047bee>
     525:	04 08                	add    $0x8,%al
     527:	11 00                	adc    %eax,(%eax)
     529:	00 00                	add    %al,(%eax)
     52b:	01 9c 79 03 00 00 13 	add    %ebx,0x13000003(%ecx,%edi,2)
     532:	5e                   	pop    %esi
     533:	01 00                	add    %eax,(%eax)
     535:	00 01                	add    %al,(%ecx)
     537:	61                   	popa   
     538:	98                   	cwtl   
     539:	02 00                	add    (%eax),%al
     53b:	00 02                	add    %al,(%edx)
     53d:	91                   	xchg   %eax,%ecx
     53e:	00 15 7b 81 04 08    	add    %dl,0x804817b
     544:	0b 00                	or     (%eax),%eax
     546:	00 00                	add    %al,(%eax)
     548:	18 47 03             	sbb    %al,0x3(%edi)
     54b:	00 00                	add    %al,(%eax)
     54d:	01 63 30             	add    %esp,0x30(%ebx)
     550:	00 00                	add    %al,(%eax)
     552:	00 26                	add    %ah,(%esi)
     554:	00 00                	add    %al,(%eax)
     556:	00 00                	add    %al,(%eax)
     558:	00 14 27             	add    %dl,(%edi,%eiz,1)
     55b:	00 00                	add    %al,(%eax)
     55d:	00 01                	add    %al,(%ecx)
     55f:	67 30 00             	xor    %al,(%bx,%si)
     562:	00 00                	add    %al,(%eax)
     564:	8c 81 04 08 0c 00    	mov    %es,0xc0804(%ecx)
     56a:	00 00                	add    %al,(%eax)
     56c:	01 9c b8 03 00 00 13 	add    %ebx,0x13000003(%eax,%edi,4)
     573:	5e                   	pop    %esi
     574:	01 00                	add    %eax,(%eax)
     576:	00 01                	add    %al,(%ecx)
     578:	67 98                	addr16 cwtl 
     57a:	02 00                	add    (%eax),%al
     57c:	00 02                	add    %al,(%edx)
     57e:	91                   	xchg   %eax,%ecx
     57f:	00 15 8c 81 04 08    	add    %dl,0x804818c
     585:	0b 00                	or     (%eax),%eax
     587:	00 00                	add    %al,(%eax)
     589:	16                   	push   %ss
     58a:	47                   	inc    %edi
     58b:	03 00                	add    (%eax),%eax
     58d:	00 01                	add    %al,(%ecx)
     58f:	69 30 00 00 00 01    	imul   $0x1000000,(%eax),%esi
     595:	50                   	push   %eax
     596:	00 00                	add    %al,(%eax)
     598:	14 8f                	adc    $0x8f,%al
     59a:	01 00                	add    %eax,(%eax)
     59c:	00 01                	add    %al,(%ecx)
     59e:	6d                   	insl   (%dx),%es:(%edi)
     59f:	30 00                	xor    %al,(%eax)
     5a1:	00 00                	add    %al,(%eax)
     5a3:	98                   	cwtl   
     5a4:	81 04 08 0c 00 00 00 	addl   $0xc,(%eax,%ecx,1)
     5ab:	01 9c f6 03 00 00 17 	add    %ebx,0x17000003(%esi,%esi,8)
     5b2:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     5b6:	6d                   	insl   (%dx),%es:(%edi)
     5b7:	30 00                	xor    %al,(%eax)
     5b9:	00 00                	add    %al,(%eax)
     5bb:	02 91 00 15 98 81    	add    -0x7e67eb00(%ecx),%dl
     5c1:	04 08                	add    $0x8,%al
     5c3:	0b 00                	or     (%eax),%eax
     5c5:	00 00                	add    %al,(%eax)
     5c7:	16                   	push   %ss
     5c8:	47                   	inc    %edi
     5c9:	03 00                	add    (%eax),%eax
     5cb:	00 01                	add    %al,(%ecx)
     5cd:	6f                   	outsl  %ds:(%esi),(%dx)
     5ce:	30 00                	xor    %al,(%eax)
     5d0:	00 00                	add    %al,(%eax)
     5d2:	01 50 00             	add    %edx,0x0(%eax)
     5d5:	00 14 3f             	add    %dl,(%edi,%edi,1)
     5d8:	00 00                	add    %al,(%eax)
     5da:	00 01                	add    %al,(%ecx)
     5dc:	73 30                	jae    60e <__executable_start-0x8047a86>
     5de:	00 00                	add    %al,(%eax)
     5e0:	00 a4 81 04 08 14 00 	add    %ah,0x140804(%ecx,%eax,4)
     5e7:	00 00                	add    %al,(%eax)
     5e9:	01 9c 50 04 00 00 17 	add    %ebx,0x17000004(%eax,%edx,2)
     5f0:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     5f4:	73 30                	jae    626 <__executable_start-0x8047a6e>
     5f6:	00 00                	add    %al,(%eax)
     5f8:	00 02                	add    %al,(%edx)
     5fa:	91                   	xchg   %eax,%ecx
     5fb:	00 13                	add    %dl,(%ebx)
     5fd:	15 03 00 00 01       	adc    $0x1000003,%eax
     602:	73 50                	jae    654 <__executable_start-0x8047a40>
     604:	04 00                	add    $0x0,%al
     606:	00 02                	add    %al,(%edx)
     608:	91                   	xchg   %eax,%ecx
     609:	04 13                	add    $0x13,%al
     60b:	a9 05 00 00 01       	test   $0x1000005,%eax
     610:	73 90                	jae    5a2 <__executable_start-0x8047af2>
     612:	00 00                	add    %al,(%eax)
     614:	00 02                	add    %al,(%edx)
     616:	91                   	xchg   %eax,%ecx
     617:	08 15 a4 81 04 08    	or     %dl,0x80481a4
     61d:	13 00                	adc    (%eax),%eax
     61f:	00 00                	add    %al,(%eax)
     621:	16                   	push   %ss
     622:	47                   	inc    %edi
     623:	03 00                	add    (%eax),%eax
     625:	00 01                	add    %al,(%ecx)
     627:	75 30                	jne    659 <__executable_start-0x8047a3b>
     629:	00 00                	add    %al,(%eax)
     62b:	00 01                	add    %al,(%ecx)
     62d:	50                   	push   %eax
     62e:	00 00                	add    %al,(%eax)
     630:	19 04 14             	sbb    %eax,(%esp,%edx,1)
     633:	0a 01                	or     (%ecx),%al
     635:	00 00                	add    %al,(%eax)
     637:	01 79 30             	add    %edi,0x30(%ecx)
     63a:	00 00                	add    %al,(%eax)
     63c:	00 b8 81 04 08 14    	add    %bh,0x14080481(%eax)
     642:	00 00                	add    %al,(%eax)
     644:	00 01                	add    %al,(%ecx)
     646:	9c                   	pushf  
     647:	ac                   	lods   %ds:(%esi),%al
     648:	04 00                	add    $0x0,%al
     64a:	00 17                	add    %dl,(%edi)
     64c:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     650:	79 30                	jns    682 <__executable_start-0x8047a12>
     652:	00 00                	add    %al,(%eax)
     654:	00 02                	add    %al,(%edx)
     656:	91                   	xchg   %eax,%ecx
     657:	00 13                	add    %dl,(%ebx)
     659:	15 03 00 00 01       	adc    $0x1000003,%eax
     65e:	79 ac                	jns    60c <__executable_start-0x8047a88>
     660:	04 00                	add    $0x0,%al
     662:	00 02                	add    %al,(%edx)
     664:	91                   	xchg   %eax,%ecx
     665:	04 13                	add    $0x13,%al
     667:	a9 05 00 00 01       	test   $0x1000005,%eax
     66c:	79 90                	jns    5fe <__executable_start-0x8047a96>
     66e:	00 00                	add    %al,(%eax)
     670:	00 02                	add    %al,(%edx)
     672:	91                   	xchg   %eax,%ecx
     673:	08 15 b8 81 04 08    	or     %dl,0x80481b8
     679:	13 00                	adc    (%eax),%eax
     67b:	00 00                	add    %al,(%eax)
     67d:	16                   	push   %ss
     67e:	47                   	inc    %edi
     67f:	03 00                	add    (%eax),%eax
     681:	00 01                	add    %al,(%ecx)
     683:	7b 30                	jnp    6b5 <__executable_start-0x80479df>
     685:	00 00                	add    %al,(%eax)
     687:	00 01                	add    %al,(%ecx)
     689:	50                   	push   %eax
     68a:	00 00                	add    %al,(%eax)
     68c:	04 04                	add    $0x4,%al
     68e:	b2 04                	mov    $0x4,%dl
     690:	00 00                	add    %al,(%eax)
     692:	1a 0a                	sbb    (%edx),%cl
     694:	0b 03                	or     (%ebx),%eax
     696:	00 00                	add    %al,(%eax)
     698:	01 7f cc             	add    %edi,-0x34(%edi)
     69b:	81 04 08 10 00 00 00 	addl   $0x10,(%eax,%ecx,1)
     6a2:	01 9c f9 04 00 00 17 	add    %ebx,0x17000004(%ecx,%edi,8)
     6a9:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     6ad:	7f 30                	jg     6df <__executable_start-0x80479b5>
     6af:	00 00                	add    %al,(%eax)
     6b1:	00 02                	add    %al,(%edx)
     6b3:	91                   	xchg   %eax,%ecx
     6b4:	00 13                	add    %dl,(%ebx)
     6b6:	88 03                	mov    %al,(%ebx)
     6b8:	00 00                	add    %al,(%eax)
     6ba:	01 7f 90             	add    %edi,-0x70(%edi)
     6bd:	00 00                	add    %al,(%eax)
     6bf:	00 02                	add    %al,(%edx)
     6c1:	91                   	xchg   %eax,%ecx
     6c2:	04 15                	add    $0x15,%al
     6c4:	cc                   	int3   
     6c5:	81 04 08 10 00 00 00 	addl   $0x10,(%eax,%ecx,1)
     6cc:	0d 47 03 00 00       	or     $0x347,%eax
     6d1:	01 81 30 00 00 00    	add    %eax,0x30(%ecx)
     6d7:	00 00                	add    %al,(%eax)
     6d9:	14 61                	adc    $0x61,%al
     6db:	03 00                	add    (%eax),%eax
     6dd:	00 01                	add    %al,(%ecx)
     6df:	85 90 00 00 00 dc    	test   %edx,-0x24000000(%eax)
     6e5:	81 04 08 0c 00 00 00 	addl   $0xc,(%eax,%ecx,1)
     6ec:	01 9c 37 05 00 00 17 	add    %ebx,0x17000005(%edi,%esi,1)
     6f3:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     6f7:	85 30                	test   %esi,(%eax)
     6f9:	00 00                	add    %al,(%eax)
     6fb:	00 02                	add    %al,(%edx)
     6fd:	91                   	xchg   %eax,%ecx
     6fe:	00 15 dc 81 04 08    	add    %dl,0x80481dc
     704:	0b 00                	or     (%eax),%eax
     706:	00 00                	add    %al,(%eax)
     708:	16                   	push   %ss
     709:	47                   	inc    %edi
     70a:	03 00                	add    (%eax),%eax
     70c:	00 01                	add    %al,(%ecx)
     70e:	87 30                	xchg   %esi,(%eax)
     710:	00 00                	add    %al,(%eax)
     712:	00 01                	add    %al,(%ecx)
     714:	50                   	push   %eax
     715:	00 00                	add    %al,(%eax)
     717:	0a c1                	or     %cl,%al
     719:	00 00                	add    %al,(%eax)
     71b:	00 01                	add    %al,(%ecx)
     71d:	8b e8                	mov    %eax,%ebp
     71f:	81 04 08 0c 00 00 00 	addl   $0xc,(%eax,%ecx,1)
     726:	01 9c 6f 05 00 00 17 	add    %ebx,0x17000005(%edi,%ebp,2)
     72d:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     731:	8b 30                	mov    (%eax),%esi
     733:	00 00                	add    %al,(%eax)
     735:	00 02                	add    %al,(%edx)
     737:	91                   	xchg   %eax,%ecx
     738:	00 15 e8 81 04 08    	add    %dl,0x80481e8
     73e:	0c 00                	or     $0x0,%al
     740:	00 00                	add    %al,(%eax)
     742:	0d 47 03 00 00       	or     $0x347,%eax
     747:	01 8d 30 00 00 00    	add    %ecx,0x30(%ebp)
     74d:	00 00                	add    %al,(%eax)
     74f:	14 06                	adc    $0x6,%al
     751:	02 00                	add    (%eax),%al
     753:	00 01                	add    %al,(%ecx)
     755:	91                   	xchg   %eax,%ecx
     756:	37                   	aaa    
     757:	00 00                	add    %al,(%eax)
     759:	00 f4                	add    %dh,%ah
     75b:	81 04 08 10 00 00 00 	addl   $0x10,(%eax,%ecx,1)
     762:	01 9c bb 05 00 00 17 	add    %ebx,0x17000005(%ebx,%edi,4)
     769:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     76d:	91                   	xchg   %eax,%ecx
     76e:	30 00                	xor    %al,(%eax)
     770:	00 00                	add    %al,(%eax)
     772:	02 91 00 13 ff 00    	add    0xff1300(%ecx),%dl
     778:	00 00                	add    %al,(%eax)
     77a:	01 91 50 04 00 00    	add    %edx,0x450(%ecx)
     780:	02 91 04 15 f4 81    	add    -0x7e0beafc(%ecx),%dl
     786:	04 08                	add    $0x8,%al
     788:	0f 00 00             	sldt   (%eax)
     78b:	00 16                	add    %dl,(%esi)
     78d:	47                   	inc    %edi
     78e:	03 00                	add    (%eax),%eax
     790:	00 01                	add    %al,(%ecx)
     792:	93                   	xchg   %eax,%ebx
     793:	30 00                	xor    %al,(%eax)
     795:	00 00                	add    %al,(%eax)
     797:	01 50 00             	add    %edx,0x0(%eax)
     79a:	00 0a                	add    %cl,(%edx)
     79c:	66 03 00             	add    (%eax),%ax
     79f:	00 01                	add    %al,(%ecx)
     7a1:	97                   	xchg   %eax,%edi
     7a2:	04 82                	add    $0x82,%al
     7a4:	04 08                	add    $0x8,%al
     7a6:	0c 00                	or     $0x0,%al
     7a8:	00 00                	add    %al,(%eax)
     7aa:	01 9c f4 05 00 00 13 	add    %ebx,0x13000005(%esp,%esi,8)
     7b1:	f5                   	cmc    
     7b2:	01 00                	add    %eax,(%eax)
     7b4:	00 01                	add    %al,(%ecx)
     7b6:	97                   	xchg   %eax,%edi
     7b7:	37                   	aaa    
     7b8:	00 00                	add    %al,(%eax)
     7ba:	00 02                	add    %al,(%edx)
     7bc:	91                   	xchg   %eax,%ecx
     7bd:	00 15 04 82 04 08    	add    %dl,0x8048204
     7c3:	0c 00                	or     $0x0,%al
     7c5:	00 00                	add    %al,(%eax)
     7c7:	0d 47 03 00 00       	or     $0x347,%eax
     7cc:	01 99 30 00 00 00    	add    %ebx,0x30(%ecx)
     7d2:	00 00                	add    %al,(%eax)
     7d4:	14 10                	adc    $0x10,%al
     7d6:	01 00                	add    %eax,(%eax)
     7d8:	00 01                	add    %al,(%ecx)
     7da:	9d                   	popf   
     7db:	31 03                	xor    %eax,(%ebx)
     7dd:	00 00                	add    %al,(%eax)
     7df:	10 82 04 08 11 00    	adc    %al,0x110804(%edx)
     7e5:	00 00                	add    %al,(%eax)
     7e7:	01 9c 35 06 00 00 17 	add    %ebx,0x17000006(%ebp,%esi,1)
     7ee:	64 69 72 00 01 9d 98 	imul   $0x2989d01,%fs:0x0(%edx),%esi
     7f5:	02 
     7f6:	00 00                	add    %al,(%eax)
     7f8:	02 91 00 15 10 82    	add    -0x7defeb00(%ecx),%dl
     7fe:	04 08                	add    $0x8,%al
     800:	0b 00                	or     (%eax),%eax
     802:	00 00                	add    %al,(%eax)
     804:	18 47 03             	sbb    %al,0x3(%edi)
     807:	00 00                	add    %al,(%eax)
     809:	01 9f 30 00 00 00    	add    %ebx,0x30(%edi)
     80f:	39 00                	cmp    %eax,(%eax)
     811:	00 00                	add    %al,(%eax)
     813:	00 00                	add    %al,(%eax)
     815:	14 04                	adc    $0x4,%al
     817:	01 00                	add    %eax,(%eax)
     819:	00 01                	add    %al,(%ecx)
     81b:	a3 31 03 00 00       	mov    %eax,0x331
     820:	21 82 04 08 11 00    	and    %eax,0x110804(%edx)
     826:	00 00                	add    %al,(%eax)
     828:	01 9c 76 06 00 00 17 	add    %ebx,0x17000006(%esi,%esi,2)
     82f:	64 69 72 00 01 a3 98 	imul   $0x298a301,%fs:0x0(%edx),%esi
     836:	02 
     837:	00 00                	add    %al,(%eax)
     839:	02 91 00 15 21 82    	add    -0x7ddeeb00(%ecx),%dl
     83f:	04 08                	add    $0x8,%al
     841:	0b 00                	or     (%eax),%eax
     843:	00 00                	add    %al,(%eax)
     845:	18 47 03             	sbb    %al,0x3(%edi)
     848:	00 00                	add    %al,(%eax)
     84a:	01 a5 30 00 00 00    	add    %esp,0x30(%ebp)
     850:	4c                   	dec    %esp
     851:	00 00                	add    %al,(%eax)
     853:	00 00                	add    %al,(%eax)
     855:	00 14 ea             	add    %dl,(%edx,%ebp,8)
     858:	00 00                	add    %al,(%eax)
     85a:	00 01                	add    %al,(%ecx)
     85c:	a9 31 03 00 00       	test   $0x331,%eax
     861:	32 82 04 08 15 00    	xor    0x150804(%edx),%al
     867:	00 00                	add    %al,(%eax)
     869:	01 9c c4 06 00 00 17 	add    %ebx,0x17000006(%esp,%eax,8)
     870:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     874:	a9 30 00 00 00       	test   $0x30,%eax
     879:	02 91 00 13 47 02    	add    0x2471300(%ecx),%dl
     87f:	00 00                	add    %al,(%eax)
     881:	01 a9 c4 06 00 00    	add    %ebp,0x6c4(%ecx)
     887:	02 91 04 15 32 82    	add    -0x7dcdeafc(%ecx),%dl
     88d:	04 08                	add    $0x8,%al
     88f:	0f 00 00             	sldt   (%eax)
     892:	00 18                	add    %bl,(%eax)
     894:	47                   	inc    %edi
     895:	03 00                	add    (%eax),%eax
     897:	00 01                	add    %al,(%ecx)
     899:	ab                   	stos   %eax,%es:(%edi)
     89a:	30 00                	xor    %al,(%eax)
     89c:	00 00                	add    %al,(%eax)
     89e:	5f                   	pop    %edi
     89f:	00 00                	add    %al,(%eax)
     8a1:	00 00                	add    %al,(%eax)
     8a3:	00 04 04             	add    %al,(%esp,%eax,1)
     8a6:	cd 01                	int    $0x1
     8a8:	00 00                	add    %al,(%eax)
     8aa:	14 99                	adc    $0x99,%al
     8ac:	02 00                	add    (%eax),%al
     8ae:	00 01                	add    %al,(%ecx)
     8b0:	af                   	scas   %es:(%edi),%eax
     8b1:	31 03                	xor    %eax,(%ebx)
     8b3:	00 00                	add    %al,(%eax)
     8b5:	47                   	inc    %edi
     8b6:	82                   	(bad)  
     8b7:	04 08                	add    $0x8,%al
     8b9:	11 00                	adc    %eax,(%eax)
     8bb:	00 00                	add    %al,(%eax)
     8bd:	01 9c 0a 07 00 00 17 	add    %ebx,0x17000007(%edx,%ecx,1)
     8c4:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     8c8:	af                   	scas   %es:(%edi),%eax
     8c9:	30 00                	xor    %al,(%eax)
     8cb:	00 00                	add    %al,(%eax)
     8cd:	02 91 00 15 47 82    	add    -0x7db8eb00(%ecx),%dl
     8d3:	04 08                	add    $0x8,%al
     8d5:	0b 00                	or     (%eax),%eax
     8d7:	00 00                	add    %al,(%eax)
     8d9:	18 47 03             	sbb    %al,0x3(%edi)
     8dc:	00 00                	add    %al,(%eax)
     8de:	01 b1 30 00 00 00    	add    %esi,0x30(%ecx)
     8e4:	72 00                	jb     8e6 <__executable_start-0x80477ae>
     8e6:	00 00                	add    %al,(%eax)
     8e8:	00 00                	add    %al,(%eax)
     8ea:	14 e1                	adc    $0xe1,%al
     8ec:	01 00                	add    %eax,(%eax)
     8ee:	00 01                	add    %al,(%ecx)
     8f0:	b5 30                	mov    $0x30,%ch
     8f2:	00 00                	add    %al,(%eax)
     8f4:	00 58 82             	add    %bl,-0x7e(%eax)
     8f7:	04 08                	add    $0x8,%al
     8f9:	0c 00                	or     $0x0,%al
     8fb:	00 00                	add    %al,(%eax)
     8fd:	01 9c 48 07 00 00 17 	add    %ebx,0x17000007(%eax,%ecx,2)
     904:	66 64 00 01          	data16 add %al,%fs:(%ecx)
     908:	b5 30                	mov    $0x30,%ch
     90a:	00 00                	add    %al,(%eax)
     90c:	00 02                	add    %al,(%edx)
     90e:	91                   	xchg   %eax,%ecx
     90f:	00 15 58 82 04 08    	add    %dl,0x8048258
     915:	0b 00                	or     (%eax),%eax
     917:	00 00                	add    %al,(%eax)
     919:	16                   	push   %ss
     91a:	47                   	inc    %edi
     91b:	03 00                	add    (%eax),%eax
     91d:	00 01                	add    %al,(%ecx)
     91f:	b7 30                	mov    $0x30,%bh
     921:	00 00                	add    %al,(%eax)
     923:	00 01                	add    %al,(%ecx)
     925:	50                   	push   %eax
     926:	00 00                	add    %al,(%eax)
     928:	14 76                	adc    $0x76,%al
     92a:	01 00                	add    %eax,(%eax)
     92c:	00 01                	add    %al,(%ecx)
     92e:	bd 30 00 00 00       	mov    $0x30,%ebp
     933:	64 82                	fs (bad) 
     935:	04 08                	add    $0x8,%al
     937:	10 00                	adc    %al,(%eax)
     939:	00 00                	add    %al,(%eax)
     93b:	01 9c 95 07 00 00 13 	add    %ebx,0x13000007(%ebp,%edx,4)
     942:	91                   	xchg   %eax,%ecx
     943:	03 00                	add    (%eax),%eax
     945:	00 01                	add    %al,(%ecx)
     947:	bd 42 00 00 00       	mov    $0x42,%ebp
     94c:	02 91 00 13 30 03    	add    0x3301300(%ecx),%dl
     952:	00 00                	add    %al,(%eax)
     954:	01 bd 95 07 00 00    	add    %edi,0x795(%ebp)
     95a:	02 91 04 15 64 82    	add    -0x7d9beafc(%ecx),%dl
     960:	04 08                	add    $0x8,%al
     962:	0f 00 00             	sldt   (%eax)
     965:	00 16                	add    %dl,(%esi)
     967:	47                   	inc    %edi
     968:	03 00                	add    (%eax),%eax
     96a:	00 01                	add    %al,(%ecx)
     96c:	bf 30 00 00 00       	mov    $0x30,%edi
     971:	01 50 00             	add    %edx,0x0(%eax)
     974:	00 04 04             	add    %al,(%esp,%eax,1)
     977:	30 00                	xor    %al,(%eax)
     979:	00 00                	add    %al,(%eax)
     97b:	14 c7                	adc    $0xc7,%al
     97d:	00 00                	add    %al,(%eax)
     97f:	00 01                	add    %al,(%ecx)
     981:	c2 30 00             	ret    $0x30
     984:	00 00                	add    %al,(%eax)
     986:	74 82                	je     90a <__executable_start-0x804778a>
     988:	04 08                	add    $0x8,%al
     98a:	10 00                	adc    %al,(%eax)
     98c:	00 00                	add    %al,(%eax)
     98e:	01 9c e8 07 00 00 13 	add    %ebx,0x13000007(%eax,%ebp,8)
     995:	d9 02                	flds   (%edx)
     997:	00 00                	add    %al,(%eax)
     999:	01 c2                	add    %eax,%edx
     99b:	30 00                	xor    %al,(%eax)
     99d:	00 00                	add    %al,(%eax)
     99f:	02 91 00 13 7e 03    	add    0x37e1300(%ecx),%dl
     9a5:	00 00                	add    %al,(%eax)
     9a7:	01 c2                	add    %eax,%edx
     9a9:	95                   	xchg   %eax,%ebp
     9aa:	07                   	pop    %es
     9ab:	00 00                	add    %al,(%eax)
     9ad:	02 91 04 15 74 82    	add    -0x7d8beafc(%ecx),%dl
     9b3:	04 08                	add    $0x8,%al
     9b5:	0f 00 00             	sldt   (%eax)
     9b8:	00 16                	add    %dl,(%esi)
     9ba:	47                   	inc    %edi
     9bb:	03 00                	add    (%eax),%eax
     9bd:	00 01                	add    %al,(%ecx)
     9bf:	c4 30                	les    (%eax),%esi
     9c1:	00 00                	add    %al,(%eax)
     9c3:	00 01                	add    %al,(%ecx)
     9c5:	50                   	push   %eax
     9c6:	00 00                	add    %al,(%eax)
     9c8:	14 37                	adc    $0x37,%al
     9ca:	02 00                	add    (%eax),%al
     9cc:	00 01                	add    %al,(%ecx)
     9ce:	c7                   	(bad)  
     9cf:	30 00                	xor    %al,(%eax)
     9d1:	00 00                	add    %al,(%eax)
     9d3:	84 82 04 08 08 00    	test   %al,0x80804(%edx)
     9d9:	00 00                	add    %al,(%eax)
     9db:	01 9c 19 08 00 00 15 	add    %ebx,0x15000008(%ecx,%ebx,1)
     9e2:	84 82 04 08 07 00    	test   %al,0x70804(%edx)
     9e8:	00 00                	add    %al,(%eax)
     9ea:	16                   	push   %ss
     9eb:	47                   	inc    %edi
     9ec:	03 00                	add    (%eax),%eax
     9ee:	00 01                	add    %al,(%ecx)
     9f0:	c9                   	leave  
     9f1:	30 00                	xor    %al,(%eax)
     9f3:	00 00                	add    %al,(%eax)
     9f5:	01 50 00             	add    %edx,0x0(%eax)
     9f8:	00 0a                	add    %cl,(%edx)
     9fa:	f2 00 00             	repnz add %al,(%eax)
     9fd:	00 01                	add    %al,(%ecx)
     9ff:	cc                   	int3   
     a00:	8c 82 04 08 0c 00    	mov    %es,0xc0804(%edx)
     a06:	00 00                	add    %al,(%eax)
     a08:	01 9c 52 08 00 00 13 	add    %ebx,0x13000008(%edx,%edx,2)
     a0f:	48                   	dec    %eax
     a10:	01 00                	add    %eax,(%eax)
     a12:	00 01                	add    %al,(%ecx)
     a14:	cc                   	int3   
     a15:	30 00                	xor    %al,(%eax)
     a17:	00 00                	add    %al,(%eax)
     a19:	02 91 00 15 8c 82    	add    -0x7d73eb00(%ecx),%dl
     a1f:	04 08                	add    $0x8,%al
     a21:	0c 00                	or     $0x0,%al
     a23:	00 00                	add    %al,(%eax)
     a25:	0d 47 03 00 00       	or     $0x347,%eax
     a2a:	01 ce                	add    %ecx,%esi
     a2c:	30 00                	xor    %al,(%eax)
     a2e:	00 00                	add    %al,(%eax)
     a30:	00 00                	add    %al,(%eax)
     a32:	14 98                	adc    $0x98,%al
     a34:	01 00                	add    %eax,(%eax)
     a36:	00 01                	add    %al,(%ecx)
     a38:	d1                   	(bad)  
     a39:	30 00                	xor    %al,(%eax)
     a3b:	00 00                	add    %al,(%eax)
     a3d:	98                   	cwtl   
     a3e:	82                   	(bad)  
     a3f:	04 08                	add    $0x8,%al
     a41:	08 00                	or     %al,(%eax)
     a43:	00 00                	add    %al,(%eax)
     a45:	01 9c 83 08 00 00 15 	add    %ebx,0x15000008(%ebx,%eax,4)
     a4c:	98                   	cwtl   
     a4d:	82                   	(bad)  
     a4e:	04 08                	add    $0x8,%al
     a50:	07                   	pop    %es
     a51:	00 00                	add    %al,(%eax)
     a53:	00 16                	add    %dl,(%esi)
     a55:	47                   	inc    %edi
     a56:	03 00                	add    (%eax),%eax
     a58:	00 01                	add    %al,(%ecx)
     a5a:	d3                   	(bad)  
     a5b:	30 00                	xor    %al,(%eax)
     a5d:	00 00                	add    %al,(%eax)
     a5f:	01 50 00             	add    %edx,0x0(%eax)
     a62:	00 14 28             	add    %dl,(%eax,%ebp,1)
     a65:	02 00                	add    (%eax),%al
     a67:	00 01                	add    %al,(%ecx)
     a69:	d6                   	(bad)  
     a6a:	30 00                	xor    %al,(%eax)
     a6c:	00 00                	add    %al,(%eax)
     a6e:	a0 82 04 08 08       	mov    0x8080482,%al
     a73:	00 00                	add    %al,(%eax)
     a75:	00 01                	add    %al,(%ecx)
     a77:	9c                   	pushf  
     a78:	b4 08                	mov    $0x8,%ah
     a7a:	00 00                	add    %al,(%eax)
     a7c:	15 a0 82 04 08       	adc    $0x80482a0,%eax
     a81:	07                   	pop    %es
     a82:	00 00                	add    %al,(%eax)
     a84:	00 16                	add    %dl,(%esi)
     a86:	47                   	inc    %edi
     a87:	03 00                	add    (%eax),%eax
     a89:	00 01                	add    %al,(%ecx)
     a8b:	d8 30                	fdivs  (%eax)
     a8d:	00 00                	add    %al,(%eax)
     a8f:	00 01                	add    %al,(%ecx)
     a91:	50                   	push   %eax
     a92:	00 00                	add    %al,(%eax)
     a94:	0a ac 01 00 00 01 db 	or     -0x24ff0000(%ecx,%eax,1),%ch
     a9b:	a8 82                	test   $0x82,%al
     a9d:	04 08                	add    $0x8,%al
     a9f:	0c 00                	or     $0x0,%al
     aa1:	00 00                	add    %al,(%eax)
     aa3:	01 9c eb 08 00 00 17 	add    %ebx,0x17000008(%ebx,%ebp,8)
     aaa:	73 00                	jae    aac <__executable_start-0x80475e8>
     aac:	01 db                	add    %ebx,%ebx
     aae:	85 00                	test   %eax,(%eax)
     ab0:	00 00                	add    %al,(%eax)
     ab2:	02 91 00 15 a8 82    	add    -0x7d57eb00(%ecx),%dl
     ab8:	04 08                	add    $0x8,%al
     aba:	0c 00                	or     $0x0,%al
     abc:	00 00                	add    %al,(%eax)
     abe:	0d 47 03 00 00       	or     $0x347,%eax
     ac3:	01 dd                	add    %ebx,%ebp
     ac5:	30 00                	xor    %al,(%eax)
     ac7:	00 00                	add    %al,(%eax)
     ac9:	00 00                	add    %al,(%eax)
     acb:	1b e9                	sbb    %ecx,%ebp
     acd:	01 00                	add    %eax,(%eax)
     acf:	00 05 10 06 98 02    	add    %al,0x2980610
     ad5:	00 00                	add    %al,(%eax)
     ad7:	06                   	push   %es
     ad8:	30 00                	xor    %al,(%eax)
     ada:	00 00                	add    %al,(%eax)
     adc:	06                   	push   %es
     add:	98                   	cwtl   
     ade:	02 00                	add    (%eax),%al
     ae0:	00 06                	add    %al,(%esi)
     ae2:	98                   	cwtl   
     ae3:	02 00                	add    (%eax),%al
     ae5:	00 1c 00             	add    %bl,(%eax,%eax,1)
     ae8:	00 bc 01 00 00 04 00 	add    %bh,0x40000(%ecx,%eax,1)
     aef:	e3 02                	jecxz  af3 <__executable_start-0x80475a1>
     af1:	00 00                	add    %al,(%eax)
     af3:	04 01                	add    $0x1,%al
     af5:	52                   	push   %edx
     af6:	00 00                	add    %al,(%eax)
     af8:	00 01                	add    %al,(%ecx)
     afa:	f1                   	icebp  
     afb:	03 00                	add    (%eax),%eax
     afd:	00 00                	add    %al,(%eax)
     aff:	00 00                	add    %al,(%eax)
     b01:	00 b4 82 04 08 58 00 	add    %dh,0x580804(%edx,%eax,4)
     b08:	00 00                	add    %al,(%eax)
     b0a:	8a 01                	mov    (%ecx),%al
     b0c:	00 00                	add    %al,(%eax)
     b0e:	02 e9                	add    %cl,%ch
     b10:	03 00                	add    (%eax),%eax
     b12:	00 03                	add    %al,(%ebx)
     b14:	07                   	pop    %es
     b15:	30 00                	xor    %al,(%eax)
     b17:	00 00                	add    %al,(%eax)
     b19:	03 04 df             	add    (%edi,%ebx,8),%eax
     b1c:	03 00                	add    (%eax),%eax
     b1e:	00 3a                	add    %bh,(%edx)
     b20:	00 00                	add    %al,(%eax)
     b22:	00 04 01             	add    %al,(%ecx,%eax,1)
     b25:	06                   	push   %es
     b26:	6b 02 00             	imul   $0x0,(%edx),%eax
     b29:	00 05 04 05 69 6e    	add    %al,0x6e690504
     b2f:	74 00                	je     b31 <__executable_start-0x8047563>
     b31:	04 04                	add    $0x4,%al
     b33:	07                   	pop    %es
     b34:	7a 02                	jp     b38 <__executable_start-0x804755c>
     b36:	00 00                	add    %al,(%eax)
     b38:	04 01                	add    $0x1,%al
     b3a:	06                   	push   %es
     b3b:	64 02 00             	add    %fs:(%eax),%al
     b3e:	00 04 02             	add    %al,(%edx,%eax,1)
     b41:	05 29 01 00 00       	add    $0x129,%eax
     b46:	04 08                	add    $0x8,%al
     b48:	05 d3 01 00 00       	add    $0x1d3,%eax
     b4d:	04 01                	add    $0x1,%al
     b4f:	08 62 02             	or     %ah,0x2(%edx)
     b52:	00 00                	add    %al,(%eax)
     b54:	04 02                	add    $0x2,%al
     b56:	07                   	pop    %es
     b57:	c6 02 00             	movb   $0x0,(%edx)
     b5a:	00 04 08             	add    %al,(%eax,%ecx,1)
     b5d:	07                   	pop    %es
     b5e:	70 02                	jo     b62 <__executable_start-0x8047532>
     b60:	00 00                	add    %al,(%eax)
     b62:	06                   	push   %es
     b63:	e9 01 00 00 01       	jmp    1000b69 <__executable_start-0x704752b>
     b68:	0a b4 82 04 08 58 00 	or     0x580804(%edx,%eax,4),%dh
     b6f:	00 00                	add    %al,(%eax)
     b71:	01 9c 51 01 00 00 07 	add    %ebx,0x7000001(%ecx,%edx,2)
     b78:	5e                   	pop    %esi
     b79:	01 00                	add    %eax,(%eax)
     b7b:	00 01                	add    %al,(%ecx)
     b7d:	0a 51 01             	or     0x1(%ecx),%dl
     b80:	00 00                	add    %al,(%eax)
     b82:	02 91 00 07 94 02    	add    0x2940700(%ecx),%dl
     b88:	00 00                	add    %al,(%eax)
     b8a:	01 0a                	add    %ecx,(%edx)
     b8c:	41                   	inc    %ecx
     b8d:	00 00                	add    %al,(%eax)
     b8f:	00 02                	add    %al,(%edx)
     b91:	91                   	xchg   %eax,%ecx
     b92:	04 07                	add    $0x7,%al
     b94:	05 04 00 00 01       	add    $0x1000004,%eax
     b99:	0a 51 01             	or     0x1(%ecx),%dl
     b9c:	00 00                	add    %al,(%eax)
     b9e:	02 91 08 07 d7 03    	add    0x3d70708(%ecx),%dl
     ba4:	00 00                	add    %al,(%eax)
     ba6:	01 0b                	add    %ecx,(%ebx)
     ba8:	51                   	push   %ecx
     ba9:	01 00                	add    %eax,(%eax)
     bab:	00 02                	add    %al,(%edx)
     bad:	91                   	xchg   %eax,%ecx
     bae:	0c 08                	or     $0x8,%al
     bb0:	09 30                	or     %esi,(%eax)
     bb2:	04 00                	add    $0x0,%al
     bb4:	00 01                	add    %al,(%ecx)
     bb6:	0d 25 00 00 00       	or     $0x25,%eax
     bbb:	85 00                	test   %eax,(%eax)
     bbd:	00 00                	add    %al,(%eax)
     bbf:	0a db                	or     %bl,%bl
     bc1:	82                   	(bad)  
     bc2:	04 08                	add    $0x8,%al
     bc4:	5c                   	pop    %esp
     bc5:	01 00                	add    %eax,(%eax)
     bc7:	00 06                	add    %al,(%esi)
     bc9:	01 00                	add    %eax,(%eax)
     bcb:	00 0b                	add    %cl,(%ebx)
     bcd:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
     bd1:	03 d8                	add    %eax,%ebx
     bd3:	a1 04 08 0b 02       	mov    0x20b0804,%eax
     bd8:	74 04                	je     bde <__executable_start-0x80474b6>
     bda:	03 91 00 06 0b 02    	add    0x20b0600(%ecx),%edx
     be0:	74 08                	je     bea <__executable_start-0x80474aa>
     be2:	03 91 04 06 0b 02    	add    0x20b0604(%ecx),%edx
     be8:	74 0c                	je     bf6 <__executable_start-0x804749e>
     bea:	03 91 08 06 00 0a    	add    0xa000608(%ecx),%edx
     bf0:	ef                   	out    %eax,(%dx)
     bf1:	82                   	(bad)  
     bf2:	04 08                	add    $0x8,%al
     bf4:	72 01                	jb     bf7 <__executable_start-0x804749d>
     bf6:	00 00                	add    %al,(%eax)
     bf8:	23 01                	and    (%ecx),%eax
     bfa:	00 00                	add    %al,(%eax)
     bfc:	0b 02                	or     (%edx),%eax
     bfe:	74 00                	je     c00 <__executable_start-0x8047494>
     c00:	03 91 0c 06 0b 02    	add    0x20b060c(%ecx),%edx
     c06:	74 04                	je     c0c <__executable_start-0x8047488>
     c08:	02 91 10 00 0a fb    	add    -0x4f5fff0(%ecx),%dl
     c0e:	82                   	(bad)  
     c0f:	04 08                	add    $0x8,%al
     c11:	92                   	xchg   %eax,%edx
     c12:	01 00                	add    %eax,(%eax)
     c14:	00 37                	add    %dh,(%edi)
     c16:	01 00                	add    %eax,(%eax)
     c18:	00 0b                	add    %cl,(%ebx)
     c1a:	02 74 00 01          	add    0x1(%eax,%eax,1),%dh
     c1e:	3a 00                	cmp    (%eax),%al
     c20:	0c 00                	or     $0x0,%al
     c22:	83 04 08 ab          	addl   $0xffffffab,(%eax,%ecx,1)
     c26:	01 00                	add    %eax,(%eax)
     c28:	00 0d 0c 83 04 08    	add    %cl,0x804830c
     c2e:	b2 01                	mov    $0x1,%dl
     c30:	00 00                	add    %al,(%eax)
     c32:	0b 02                	or     (%edx),%eax
     c34:	74 00                	je     c36 <__executable_start-0x804745e>
     c36:	01 31                	add    %esi,(%ecx)
     c38:	00 00                	add    %al,(%eax)
     c3a:	0e                   	push   %cs
     c3b:	04 57                	add    $0x57,%al
     c3d:	01 00                	add    %eax,(%eax)
     c3f:	00 0f                	add    %cl,(%edi)
     c41:	3a 00                	cmp    (%eax),%al
     c43:	00 00                	add    %al,(%eax)
     c45:	10 aa 06 00 00 02    	adc    %ch,0x2000006(%edx)
     c4b:	13 41 00             	adc    0x0(%ecx),%eax
     c4e:	00 00                	add    %al,(%eax)
     c50:	72 01                	jb     c53 <__executable_start-0x8047441>
     c52:	00 00                	add    %al,(%eax)
     c54:	11 51 01             	adc    %edx,0x1(%ecx)
     c57:	00 00                	add    %al,(%eax)
     c59:	08 00                	or     %al,(%eax)
     c5b:	10 69 04             	adc    %ch,0x4(%ecx)
     c5e:	00 00                	add    %al,(%eax)
     c60:	02 15 41 00 00 00    	add    0x41,%dl
     c66:	8c 01                	mov    %es,(%ecx)
     c68:	00 00                	add    %al,(%eax)
     c6a:	11 51 01             	adc    %edx,0x1(%ecx)
     c6d:	00 00                	add    %al,(%eax)
     c6f:	11 8c 01 00 00 00 0e 	adc    %ecx,0xe000000(%ecx,%eax,1)
     c76:	04 3a                	add    $0x3a,%al
     c78:	00 00                	add    %al,(%eax)
     c7a:	00 12                	add    %dl,(%edx)
     c7c:	1e                   	push   %ds
     c7d:	04 00                	add    $0x0,%al
     c7f:	00 04 00             	add    %al,(%eax,%eax,1)
     c82:	28 04 00             	sub    %al,(%eax,%eax,1)
     c85:	00 41 00             	add    %al,0x0(%ecx)
     c88:	00 00                	add    %al,(%eax)
     c8a:	ab                   	stos   %eax,%es:(%edi)
     c8b:	01 00                	add    %eax,(%eax)
     c8d:	00 11                	add    %dl,(%ecx)
     c8f:	41                   	inc    %ecx
     c90:	00 00                	add    %al,(%eax)
     c92:	00 00                	add    %al,(%eax)
     c94:	13 0e                	adc    (%esi),%ecx
     c96:	04 00                	add    $0x0,%al
     c98:	00 05 12 14 fa 00    	add    %al,0xfa1412
     c9e:	00 00                	add    %al,(%eax)
     ca0:	06                   	push   %es
     ca1:	18 11                	sbb    %dl,(%ecx)
     ca3:	41                   	inc    %ecx
     ca4:	00 00                	add    %al,(%eax)
     ca6:	00 00                	add    %al,(%eax)
     ca8:	00 bd 03 00 00 04    	add    %bh,0x4000003(%ebp)
     cae:	00 f6                	add    %dh,%dh
     cb0:	03 00                	add    (%eax),%eax
     cb2:	00 04 01             	add    %al,(%ecx,%eax,1)
     cb5:	52                   	push   %edx
     cb6:	00 00                	add    %al,(%eax)
     cb8:	00 01                	add    %al,(%ecx)
     cba:	4c                   	dec    %esp
     cbb:	04 00                	add    $0x0,%al
     cbd:	00 00                	add    %al,(%eax)
     cbf:	00 00                	add    %al,(%eax)
     cc1:	00 0c 83             	add    %cl,(%ebx,%eax,4)
     cc4:	04 08                	add    $0x8,%al
     cc6:	5f                   	pop    %edi
     cc7:	01 00                	add    %eax,(%eax)
     cc9:	00 19                	add    %bl,(%ecx)
     ccb:	02 00                	add    (%eax),%al
     ccd:	00 02                	add    %al,(%edx)
     ccf:	e9 03 00 00 02       	jmp    2000cd7 <__executable_start-0x60473bd>
     cd4:	07                   	pop    %es
     cd5:	30 00                	xor    %al,(%eax)
     cd7:	00 00                	add    %al,(%eax)
     cd9:	03 04 df             	add    (%edi,%ebx,8),%eax
     cdc:	03 00                	add    (%eax),%eax
     cde:	00 3a                	add    %bh,(%edx)
     ce0:	00 00                	add    %al,(%eax)
     ce2:	00 04 01             	add    %al,(%ecx,%eax,1)
     ce5:	06                   	push   %es
     ce6:	6b 02 00             	imul   $0x0,(%edx),%eax
     ce9:	00 05 04 05 69 6e    	add    %al,0x6e690504
     cef:	74 00                	je     cf1 <__executable_start-0x80473a3>
     cf1:	04 04                	add    $0x4,%al
     cf3:	07                   	pop    %es
     cf4:	7a 02                	jp     cf8 <__executable_start-0x804739c>
     cf6:	00 00                	add    %al,(%eax)
     cf8:	04 01                	add    $0x1,%al
     cfa:	06                   	push   %es
     cfb:	64 02 00             	add    %fs:(%eax),%al
     cfe:	00 04 02             	add    %al,(%edx,%eax,1)
     d01:	05 29 01 00 00       	add    $0x129,%eax
     d06:	04 08                	add    $0x8,%al
     d08:	05 d3 01 00 00       	add    $0x1d3,%eax
     d0d:	04 01                	add    $0x1,%al
     d0f:	08 62 02             	or     %ah,0x2(%edx)
     d12:	00 00                	add    %al,(%eax)
     d14:	04 02                	add    $0x2,%al
     d16:	07                   	pop    %es
     d17:	c6 02 00             	movb   $0x0,(%edx)
     d1a:	00 04 08             	add    %al,(%eax,%ecx,1)
     d1d:	07                   	pop    %es
     d1e:	70 02                	jo     d22 <__executable_start-0x8047372>
     d20:	00 00                	add    %al,(%eax)
     d22:	06                   	push   %es
     d23:	77 04                	ja     d29 <__executable_start-0x804736b>
     d25:	00 00                	add    %al,(%eax)
     d27:	4c                   	dec    %esp
     d28:	01 31                	add    %esi,(%ecx)
     d2a:	b4 00                	mov    $0x0,%ah
     d2c:	00 00                	add    %al,(%eax)
     d2e:	07                   	pop    %es
     d2f:	62 75 66             	bound  %esi,0x66(%ebp)
     d32:	00 01                	add    %al,(%ecx)
     d34:	33 b4 00 00 00 00 07 	xor    0x7000000(%eax,%eax,1),%esi
     d3b:	70 00                	jo     d3d <__executable_start-0x8047357>
     d3d:	01 34 cb             	add    %esi,(%ebx,%ecx,8)
     d40:	00 00                	add    %al,(%eax)
     d42:	00 40 08             	add    %al,0x8(%eax)
     d45:	8d 04 00             	lea    (%eax,%eax,1),%eax
     d48:	00 01                	add    %al,(%ecx)
     d4a:	35 41 00 00 00       	xor    $0x41,%eax
     d4f:	44                   	inc    %esp
     d50:	08 3e                	or     %bh,(%esi)
     d52:	04 00                	add    $0x0,%al
     d54:	00 01                	add    %al,(%ecx)
     d56:	36 41                	ss inc %ecx
     d58:	00 00                	add    %al,(%eax)
     d5a:	00 48 00             	add    %cl,0x0(%eax)
     d5d:	09 3a                	or     %edi,(%edx)
     d5f:	00 00                	add    %al,(%eax)
     d61:	00 c4                	add    %al,%ah
     d63:	00 00                	add    %al,(%eax)
     d65:	00 0a                	add    %cl,(%edx)
     d67:	c4 00                	les    (%eax),%eax
     d69:	00 00                	add    %al,(%eax)
     d6b:	3f                   	aas    
     d6c:	00 04 04             	add    %al,(%esp,%eax,1)
     d6f:	07                   	pop    %es
     d70:	44                   	inc    %esp
     d71:	00 00                	add    %al,(%eax)
     d73:	00 0b                	add    %cl,(%ebx)
     d75:	04 3a                	add    $0x3a,%al
     d77:	00 00                	add    %al,(%eax)
     d79:	00 0c 71             	add    %cl,(%ecx,%esi,2)
     d7c:	04 00                	add    $0x0,%al
     d7e:	00 01                	add    %al,(%ecx)
     d80:	59                   	pop    %ecx
     d81:	0c 83                	or     $0x83,%al
     d83:	04 08                	add    $0x8,%al
     d85:	2a 00                	sub    (%eax),%al
     d87:	00 00                	add    %al,(%eax)
     d89:	01 9c 07 01 00 00 0d 	add    %ebx,0xd000001(%edi,%eax,1)
     d90:	61                   	popa   
     d91:	75 78                	jne    e0b <__executable_start-0x8047289>
     d93:	00 01                	add    %al,(%ecx)
     d95:	59                   	pop    %ecx
     d96:	07                   	pop    %es
     d97:	01 00                	add    %eax,(%eax)
     d99:	00 b1 00 00 00 0e    	add    %dh,0xe000000(%ecx)
     d9f:	2e 83 04 08 68       	addl   $0x68,%cs:(%eax,%ecx,1)
     da4:	03 00                	add    (%eax),%eax
     da6:	00 0f                	add    %cl,(%edi)
     da8:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
     dac:	73 00                	jae    dae <__executable_start-0x80472e6>
     dae:	00 00                	add    %al,(%eax)
     db0:	0b 04 79             	or     (%ecx,%edi,2),%eax
     db3:	00 00                	add    %al,(%eax)
     db5:	00 0c 84             	add    %cl,(%esp,%eax,4)
     db8:	04 00                	add    $0x0,%al
     dba:	00 01                	add    %al,(%ecx)
     dbc:	4e                   	dec    %esi
     dbd:	36 83 04 08 2f       	addl   $0x2f,%ss:(%eax,%ecx,1)
     dc2:	00 00                	add    %al,(%eax)
     dc4:	00 01                	add    %al,(%ecx)
     dc6:	9c                   	pushf  
     dc7:	5c                   	pop    %esp
     dc8:	01 00                	add    %eax,(%eax)
     dca:	00 10                	add    %dl,(%eax)
     dcc:	63 00                	arpl   %ax,(%eax)
     dce:	01 4e 3a             	add    %ecx,0x3a(%esi)
     dd1:	00 00                	add    %al,(%eax)
     dd3:	00 02                	add    %al,(%edx)
     dd5:	91                   	xchg   %eax,%ecx
     dd6:	00 11                	add    %dl,(%ecx)
     dd8:	62 04 00             	bound  %eax,(%eax,%eax,1)
     ddb:	00 01                	add    %al,(%ecx)
     ddd:	4e                   	dec    %esi
     dde:	5c                   	pop    %esp
     ddf:	01 00                	add    %eax,(%eax)
     de1:	00 02                	add    %al,(%edx)
     de3:	91                   	xchg   %eax,%ecx
     de4:	04 12                	add    $0x12,%al
     de6:	61                   	popa   
     de7:	75 78                	jne    e61 <__executable_start-0x8047233>
     de9:	00 01                	add    %al,(%ecx)
     deb:	50                   	push   %eax
     dec:	07                   	pop    %es
     ded:	01 00                	add    %eax,(%eax)
     def:	00 dd                	add    %bl,%ch
     df1:	00 00                	add    %al,(%eax)
     df3:	00 0e                	add    %cl,(%esi)
     df5:	5c                   	pop    %esp
     df6:	83 04 08 d1          	addl   $0xffffffd1,(%eax,%ecx,1)
     dfa:	00 00                	add    %al,(%eax)
     dfc:	00 0f                	add    %cl,(%edi)
     dfe:	01 50 02             	add    %edx,0x2(%eax)
     e01:	73 00                	jae    e03 <__executable_start-0x8047291>
     e03:	00 00                	add    %al,(%eax)
     e05:	13 04 14             	adc    (%esp,%edx,1),%eax
     e08:	28 04 00             	sub    %al,(%eax,%eax,1)
     e0b:	00 01                	add    %al,(%ecx)
     e0d:	29 41 00             	sub    %eax,0x0(%ecx)
     e10:	00 00                	add    %al,(%eax)
     e12:	65 83 04 08 2f       	addl   $0x2f,%gs:(%eax,%ecx,1)
     e17:	00 00                	add    %al,(%eax)
     e19:	00 01                	add    %al,(%ecx)
     e1b:	9c                   	pushf  
     e1c:	ae                   	scas   %es:(%edi),%al
     e1d:	01 00                	add    %eax,(%eax)
     e1f:	00 10                	add    %dl,(%eax)
     e21:	63 00                	arpl   %ax,(%eax)
     e23:	01 29                	add    %ebp,(%ecx)
     e25:	41                   	inc    %ecx
     e26:	00 00                	add    %al,(%eax)
     e28:	00 02                	add    %al,(%edx)
     e2a:	91                   	xchg   %eax,%ecx
     e2b:	00 15 63 32 00 01    	add    %dl,0x1003263
     e31:	2b 3a                	sub    (%edx),%edi
     e33:	00 00                	add    %al,(%eax)
     e35:	00 02                	add    %al,(%edx)
     e37:	91                   	xchg   %eax,%ecx
     e38:	6f                   	outsl  %ds:(%esi),(%dx)
     e39:	0e                   	push   %cs
     e3a:	8d 83 04 08 68 03    	lea    0x3680804(%ebx),%eax
     e40:	00 00                	add    %al,(%eax)
     e42:	0f 02 74 00 01       	lar    0x1(%eax,%eax,1),%esi
     e47:	31 0f                	xor    %ecx,(%edi)
     e49:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
     e4d:	91                   	xchg   %eax,%ecx
     e4e:	6f                   	outsl  %ds:(%esi),(%dx)
     e4f:	0f 02 74 08 01       	lar    0x1(%eax,%ecx,1),%esi
     e54:	31 00                	xor    %eax,(%eax)
     e56:	00 14 a0             	add    %dl,(%eax,%eiz,4)
     e59:	04 00                	add    $0x0,%al
     e5b:	00 01                	add    %al,(%ecx)
     e5d:	1f                   	pop    %ds
     e5e:	41                   	inc    %ecx
     e5f:	00 00                	add    %al,(%eax)
     e61:	00 94 83 04 08 45 00 	add    %dl,0x450804(%ebx,%eax,4)
     e68:	00 00                	add    %al,(%eax)
     e6a:	01 9c 01 02 00 00 0d 	add    %ebx,0xd000002(%ecx,%eax,1)
     e71:	73 00                	jae    e73 <__executable_start-0x8047221>
     e73:	01 1f                	add    %ebx,(%edi)
     e75:	01 02                	add    %eax,(%edx)
     e77:	00 00                	add    %al,(%eax)
     e79:	fc                   	cld    
     e7a:	00 00                	add    %al,(%eax)
     e7c:	00 16                	add    %dl,(%esi)
     e7e:	c3                   	ret    
     e7f:	83 04 08 68          	addl   $0x68,(%eax,%ecx,1)
     e83:	03 00                	add    (%eax),%eax
     e85:	00 f0                	add    %dh,%al
     e87:	01 00                	add    %eax,(%eax)
     e89:	00 0f                	add    %cl,(%edi)
     e8b:	02 74 00 01          	add    0x1(%eax,%eax,1),%dh
     e8f:	31 0f                	xor    %ecx,(%edi)
     e91:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
     e95:	91                   	xchg   %eax,%ecx
     e96:	00 06                	add    %al,(%esi)
     e98:	00 0e                	add    %cl,(%esi)
     e9a:	cf                   	iret   
     e9b:	83 04 08 5e          	addl   $0x5e,(%eax,%ecx,1)
     e9f:	01 00                	add    %eax,(%eax)
     ea1:	00 0f                	add    %cl,(%edi)
     ea3:	02 74 00 01          	add    0x1(%eax,%eax,1),%dh
     ea7:	3a 00                	cmp    (%eax),%al
     ea9:	00 0b                	add    %cl,(%ebx)
     eab:	04 07                	add    $0x7,%al
     ead:	02 00                	add    (%eax),%al
     eaf:	00 17                	add    %dl,(%edi)
     eb1:	3a 00                	cmp    (%eax),%al
     eb3:	00 00                	add    %al,(%eax)
     eb5:	14 35                	adc    $0x35,%al
     eb7:	04 00                	add    $0x0,%al
     eb9:	00 01                	add    %al,(%ecx)
     ebb:	40                   	inc    %eax
     ebc:	41                   	inc    %ecx
     ebd:	00 00                	add    %al,(%eax)
     ebf:	00 d9                	add    %bl,%cl
     ec1:	83 04 08 4c          	addl   $0x4c,(%eax,%ecx,1)
     ec5:	00 00                	add    %al,(%eax)
     ec7:	00 01                	add    %al,(%ecx)
     ec9:	9c                   	pushf  
     eca:	9e                   	sahf   
     ecb:	02 00                	add    (%eax),%al
     ecd:	00 11                	add    %dl,(%ecx)
     ecf:	3e 04 00             	ds add $0x0,%al
     ed2:	00 01                	add    %al,(%ecx)
     ed4:	40                   	inc    %eax
     ed5:	41                   	inc    %ecx
     ed6:	00 00                	add    %al,(%eax)
     ed8:	00 02                	add    %al,(%edx)
     eda:	91                   	xchg   %eax,%ecx
     edb:	00 11                	add    %dl,(%ecx)
     edd:	45                   	inc    %ebp
     ede:	04 00                	add    $0x0,%al
     ee0:	00 01                	add    %al,(%ecx)
     ee2:	40                   	inc    %eax
     ee3:	01 02                	add    %eax,(%edx)
     ee5:	00 00                	add    %al,(%eax)
     ee7:	02 91 04 11 30 04    	add    0x4301104(%ecx),%dl
     eed:	00 00                	add    %al,(%eax)
     eef:	01 40 25             	add    %eax,0x25(%eax)
     ef2:	00 00                	add    %al,(%eax)
     ef4:	00 02                	add    %al,(%edx)
     ef6:	91                   	xchg   %eax,%ecx
     ef7:	08 15 61 75 78 00    	or     %dl,0x787561
     efd:	01 42 79             	add    %eax,0x79(%edx)
     f00:	00 00                	add    %al,(%eax)
     f02:	00 03                	add    %al,(%ebx)
     f04:	91                   	xchg   %eax,%ecx
     f05:	a4                   	movsb  %ds:(%esi),%es:(%edi)
     f06:	7f 16                	jg     f1e <__executable_start-0x8047176>
     f08:	15 84 04 08 8e       	adc    $0x8e080484,%eax
     f0d:	03 00                	add    (%eax),%eax
     f0f:	00 8d 02 00 00 0f    	add    %cl,0xf000002(%ebp)
     f15:	02 74 00 03          	add    0x3(%eax,%eax,1),%dh
     f19:	91                   	xchg   %eax,%ecx
     f1a:	04 06                	add    $0x6,%al
     f1c:	0f 02 74 04 03       	lar    0x3(%esp,%eax,1),%esi
     f21:	91                   	xchg   %eax,%ecx
     f22:	08 06                	or     %al,(%esi)
     f24:	0f 02 74 08 05       	lar    0x5(%eax,%ecx,1),%esi
     f29:	03 36                	add    (%esi),%esi
     f2b:	83 04 08 0f          	addl   $0xf,(%eax,%ecx,1)
     f2f:	02 74 0c 02          	add    0x2(%esp,%ecx,1),%dh
     f33:	73 00                	jae    f35 <__executable_start-0x804715f>
     f35:	00 0e                	add    %cl,(%esi)
     f37:	1c 84                	sbb    $0x84,%al
     f39:	04 08                	add    $0x8,%al
     f3b:	d1 00                	roll   (%eax)
     f3d:	00 00                	add    %al,(%eax)
     f3f:	0f 01 50 02          	lgdtl  0x2(%eax)
     f43:	73 00                	jae    f45 <__executable_start-0x804714f>
     f45:	00 00                	add    %al,(%eax)
     f47:	14 69                	adc    $0x69,%al
     f49:	04 00                	add    $0x0,%al
     f4b:	00 01                	add    %al,(%ecx)
     f4d:	09 41 00             	or     %eax,0x0(%ecx)
     f50:	00 00                	add    %al,(%eax)
     f52:	25 84 04 08 23       	and    $0x23080484,%eax
     f57:	00 00                	add    %al,(%eax)
     f59:	00 01                	add    %al,(%ecx)
     f5b:	9c                   	pushf  
     f5c:	f4                   	hlt    
     f5d:	02 00                	add    (%eax),%al
     f5f:	00 11                	add    %dl,(%ecx)
     f61:	45                   	inc    %ebp
     f62:	04 00                	add    $0x0,%al
     f64:	00 01                	add    %al,(%ecx)
     f66:	09 01                	or     %eax,(%ecx)
     f68:	02 00                	add    (%eax),%al
     f6a:	00 02                	add    %al,(%edx)
     f6c:	91                   	xchg   %eax,%ecx
     f6d:	00 11                	add    %dl,(%ecx)
     f6f:	30 04 00             	xor    %al,(%eax,%eax,1)
     f72:	00 01                	add    %al,(%ecx)
     f74:	09 25 00 00 00 02    	or     %esp,0x2000000
     f7a:	91                   	xchg   %eax,%ecx
     f7b:	04 0e                	add    $0xe,%al
     f7d:	44                   	inc    %esp
     f7e:	84 04 08             	test   %al,(%eax,%ecx,1)
     f81:	0c 02                	or     $0x2,%al
     f83:	00 00                	add    %al,(%eax)
     f85:	0f 02 74 00 01       	lar    0x1(%eax,%eax,1),%esi
     f8a:	31 0f                	xor    %ecx,(%edi)
     f8c:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
     f90:	91                   	xchg   %eax,%ecx
     f91:	00 06                	add    %al,(%esi)
     f93:	0f 02 74 08 03       	lar    0x3(%eax,%ecx,1),%esi
     f98:	91                   	xchg   %eax,%ecx
     f99:	04 06                	add    $0x6,%al
     f9b:	00 00                	add    %al,(%eax)
     f9d:	14 36                	adc    $0x36,%al
     f9f:	04 00                	add    $0x0,%al
     fa1:	00 01                	add    %al,(%ecx)
     fa3:	10 41 00             	adc    %al,0x0(%ecx)
     fa6:	00 00                	add    %al,(%eax)
     fa8:	48                   	dec    %eax
     fa9:	84 04 08             	test   %al,(%eax,%ecx,1)
     fac:	23 00                	and    (%eax),%eax
     fae:	00 00                	add    %al,(%eax)
     fb0:	01 9c 68 03 00 00 11 	add    %ebx,0x11000003(%eax,%ebp,2)
     fb7:	3e 04 00             	ds add $0x0,%al
     fba:	00 01                	add    %al,(%ecx)
     fbc:	10 41 00             	adc    %al,0x0(%ecx)
     fbf:	00 00                	add    %al,(%eax)
     fc1:	02 91 00 11 45 04    	add    0x4451100(%ecx),%dl
     fc7:	00 00                	add    %al,(%eax)
     fc9:	01 10                	add    %edx,(%eax)
     fcb:	01 02                	add    %eax,(%edx)
     fcd:	00 00                	add    %al,(%eax)
     fcf:	02 91 04 18 19 30    	add    0x30191804(%ecx),%dl
     fd5:	04 00                	add    $0x0,%al
     fd7:	00 01                	add    %al,(%ecx)
     fd9:	12 25 00 00 00 10    	adc    0x10000000,%ah
     fdf:	01 00                	add    %eax,(%eax)
     fe1:	00 1a                	add    %bl,(%edx)
     fe3:	47                   	inc    %edi
     fe4:	03 00                	add    (%eax),%eax
     fe6:	00 01                	add    %al,(%ecx)
     fe8:	13 41 00             	adc    0x0(%ecx),%eax
     feb:	00 00                	add    %al,(%eax)
     fed:	01 50 0e             	add    %edx,0xe(%eax)
     ff0:	67 84 04             	test   %al,(%si)
     ff3:	08 0c 02             	or     %cl,(%edx,%eax,1)
     ff6:	00 00                	add    %al,(%eax)
     ff8:	0f 02 74 00 03       	lar    0x3(%eax,%eax,1),%esi
     ffd:	91                   	xchg   %eax,%ecx
     ffe:	00 06                	add    %al,(%esi)
    1000:	0f 02 74 04 03       	lar    0x3(%esp,%eax,1),%esi
    1005:	91                   	xchg   %eax,%ecx
    1006:	04 06                	add    $0x6,%al
    1008:	0f 02 74 08 02       	lar    0x2(%eax,%ecx,1),%esi
    100d:	91                   	xchg   %eax,%ecx
    100e:	08 00                	or     %al,(%eax)
    1010:	00 1b                	add    %bl,(%ebx)
    1012:	0a 01                	or     (%ecx),%al
    1014:	00 00                	add    %al,(%eax)
    1016:	03 20                	add    (%eax),%esp
    1018:	41                   	inc    %ecx
    1019:	00 00                	add    %al,(%eax)
    101b:	00 87 03 00 00 1c    	add    %al,0x1c000003(%edi)
    1021:	41                   	inc    %ecx
    1022:	00 00                	add    %al,(%eax)
    1024:	00 1c 87             	add    %bl,(%edi,%eax,4)
    1027:	03 00                	add    (%eax),%eax
    1029:	00 1c 48             	add    %bl,(%eax,%ecx,2)
    102c:	00 00                	add    %al,(%eax)
    102e:	00 00                	add    %al,(%eax)
    1030:	0b 04 8d 03 00 00 1d 	or     0x1d000003(,%ecx,4),%eax
    1037:	1e                   	push   %ds
    1038:	67 04 00             	addr16 add $0x0,%al
    103b:	00 04 1f             	add    %al,(%edi,%ebx,1)
    103e:	ae                   	scas   %es:(%edi),%al
    103f:	03 00                	add    (%eax),%eax
    1041:	00 1c 01             	add    %bl,(%ecx,%eax,1)
    1044:	02 00                	add    (%eax),%al
    1046:	00 1c 25 00 00 00 1c 	add    %bl,0x1c000000(,%eiz,1)
    104d:	ae                   	scas   %es:(%edi),%al
    104e:	03 00                	add    (%eax),%eax
    1050:	00 1c 5c             	add    %bl,(%esp,%ebx,2)
    1053:	01 00                	add    %eax,(%eax)
    1055:	00 00                	add    %al,(%eax)
    1057:	0b 04 b4             	or     (%esp,%esi,4),%eax
    105a:	03 00                	add    (%eax),%eax
    105c:	00 1f                	add    %bl,(%edi)
    105e:	1c 3a                	sbb    $0x3a,%al
    1060:	00 00                	add    %al,(%eax)
    1062:	00 1c 5c             	add    %bl,(%esp,%ebx,2)
    1065:	01 00                	add    %eax,(%eax)
    1067:	00 00                	add    %al,(%eax)
    1069:	00 4e 01             	add    %cl,0x1(%esi)
    106c:	00 00                	add    %al,(%eax)
    106e:	04 00                	add    $0x0,%al
    1070:	8f 05 00 00 04 01    	popl   0x1040000
    1076:	52                   	push   %edx
    1077:	00 00                	add    %al,(%eax)
    1079:	00 01                	add    %al,(%ecx)
    107b:	b9 04 00 00 00       	mov    $0x4,%ecx
    1080:	00 00                	add    %al,(%eax)
    1082:	00 6b 84             	add    %ch,-0x7c(%ebx)
    1085:	04 08                	add    $0x8,%al
    1087:	7a 00                	jp     1089 <__executable_start-0x804700b>
    1089:	00 00                	add    %al,(%eax)
    108b:	bb 02 00 00 02       	mov    $0x2000002,%ebx
    1090:	01 06                	add    %eax,(%esi)
    1092:	6b 02 00             	imul   $0x0,(%edx),%eax
    1095:	00 03                	add    %al,(%ebx)
    1097:	04 05                	add    $0x5,%al
    1099:	69 6e 74 00 02 04 07 	imul   $0x7040200,0x74(%esi),%ebp
    10a0:	7a 02                	jp     10a4 <__executable_start-0x8046ff0>
    10a2:	00 00                	add    %al,(%eax)
    10a4:	02 01                	add    (%ecx),%al
    10a6:	06                   	push   %es
    10a7:	64 02 00             	add    %fs:(%eax),%al
    10aa:	00 02                	add    %al,(%edx)
    10ac:	02 05 29 01 00 00    	add    0x129,%al
    10b2:	02 08                	add    (%eax),%cl
    10b4:	05 d3 01 00 00       	add    $0x1d3,%eax
    10b9:	02 01                	add    (%ecx),%al
    10bb:	08 62 02             	or     %ah,0x2(%edx)
    10be:	00 00                	add    %al,(%eax)
    10c0:	02 02                	add    (%edx),%al
    10c2:	07                   	pop    %es
    10c3:	c6 02 00             	movb   $0x0,(%edx)
    10c6:	00 04 87             	add    %al,(%edi,%eax,4)
    10c9:	02 00                	add    (%eax),%al
    10cb:	00 02                	add    %al,(%edx)
    10cd:	1a 33                	sbb    (%ebx),%dh
    10cf:	00 00                	add    %al,(%eax)
    10d1:	00 02                	add    %al,(%edx)
    10d3:	08 07                	or     %al,(%edi)
    10d5:	70 02                	jo     10d9 <__executable_start-0x8046fbb>
    10d7:	00 00                	add    %al,(%eax)
    10d9:	04 a5                	add    $0xa5,%al
    10db:	04 00                	add    $0x0,%al
    10dd:	00 02                	add    %al,(%edx)
    10df:	24 5d                	and    $0x5d,%al
    10e1:	00 00                	add    %al,(%eax)
    10e3:	00 05 0e 04 00 00    	add    %al,0x40e
    10e9:	01 0d 6b 84 04 08    	add    %ecx,0x804846b
    10ef:	7a 00                	jp     10f1 <__executable_start-0x8046fa3>
    10f1:	00 00                	add    %al,(%eax)
    10f3:	01 9c 0c 01 00 00 06 	add    %ebx,0x6000001(%esp,%ecx,1)
    10fa:	af                   	scas   %es:(%edi),%eax
    10fb:	04 00                	add    $0x0,%al
    10fd:	00 01                	add    %al,(%ecx)
    10ff:	0f 0c                	(bad)  
    1101:	01 00                	add    %eax,(%eax)
    1103:	00 05 03 b4 b2 04    	add    %al,0x4b2b403
    1109:	08 07                	or     %al,(%edi)
    110b:	c8 04 00 00          	enter  $0x4,$0x0
    110f:	01 10                	add    %edx,(%eax)
    1111:	13 01                	adc    (%ecx),%eax
    1113:	00 00                	add    %al,(%eax)
    1115:	3c 01                	cmp    $0x1,%al
    1117:	00 00                	add    %al,(%eax)
    1119:	08 85 84 04 08 1b    	or     %al,0x1b080484(%ebp)
    111f:	01 00                	add    %eax,(%eax)
    1121:	00 c7                	add    %al,%bh
    1123:	00 00                	add    %al,(%eax)
    1125:	00 09                	add    %cl,(%ecx)
    1127:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    112b:	03 f3                	add    %ebx,%esi
    112d:	9f                   	lahf   
    112e:	04 08                	add    $0x8,%al
    1130:	00 08                	add    %cl,(%eax)
    1132:	a8 84                	test   $0x84,%al
    1134:	04 08                	add    $0x8,%al
    1136:	1b 01                	sbb    (%ecx),%eax
    1138:	00 00                	add    %al,(%eax)
    113a:	df 00                	fild   (%eax)
    113c:	00 00                	add    %al,(%eax)
    113e:	09 02                	or     %eax,(%edx)
    1140:	74 00                	je     1142 <__executable_start-0x8046f52>
    1142:	05 03 fe 9f 04       	add    $0x49ffe03,%eax
    1147:	08 00                	or     %al,(%eax)
    1149:	08 c3                	or     %al,%bl
    114b:	84 04 08             	test   %al,(%eax,%ecx,1)
    114e:	3c 01                	cmp    $0x1,%al
    1150:	00 00                	add    %al,(%eax)
    1152:	f7 00 00 00 09 02    	testl  $0x2090000,(%eax)
    1158:	74 00                	je     115a <__executable_start-0x8046f3a>
    115a:	05 03 df a0 04       	add    $0x4a0df03,%eax
    115f:	08 00                	or     %al,(%eax)
    1161:	0a df                	or     %bh,%bl
    1163:	84 04 08             	test   %al,(%eax,%ecx,1)
    1166:	3c 01                	cmp    $0x1,%al
    1168:	00 00                	add    %al,(%eax)
    116a:	09 02                	or     %eax,(%edx)
    116c:	74 00                	je     116e <__executable_start-0x8046f26>
    116e:	05 03 00 a2 04       	add    $0x4a20003,%eax
    1173:	08 00                	or     %al,(%eax)
    1175:	00 02                	add    %al,(%edx)
    1177:	01 02                	add    %eax,(%edx)
    1179:	e8 02 00 00 0b       	call   b001180 <explained.1502+0x2fb5ecc>
    117e:	04 19                	add    $0x19,%al
    1180:	01 00                	add    %eax,(%eax)
    1182:	00 0c 04             	add    %cl,(%esp,%eax,1)
    1185:	0d aa 06 00 00       	or     $0x6aa,%eax
    118a:	03 13                	add    (%ebx),%edx
    118c:	2c 00                	sub    $0x0,%al
    118e:	00 00                	add    %al,(%eax)
    1190:	31 01                	xor    %eax,(%ecx)
    1192:	00 00                	add    %al,(%eax)
    1194:	0e                   	push   %cs
    1195:	31 01                	xor    %eax,(%ecx)
    1197:	00 00                	add    %al,(%eax)
    1199:	0f 00 0b             	str    (%ebx)
    119c:	04 37                	add    $0x37,%al
    119e:	01 00                	add    %eax,(%eax)
    11a0:	00 10                	add    %dl,(%eax)
    11a2:	25 00 00 00 11       	and    $0x11000000,%eax
    11a7:	96                   	xchg   %eax,%esi
    11a8:	04 00                	add    $0x0,%al
    11aa:	00 04 00             	add    %al,(%eax,%eax,1)
    11ad:	a0 04 00 00 2c       	mov    0x2c000004,%al
    11b2:	00 00                	add    %al,(%eax)
    11b4:	00 0e                	add    %cl,(%esi)
    11b6:	31 01                	xor    %eax,(%ecx)
    11b8:	00 00                	add    %al,(%eax)
    11ba:	00 00                	add    %al,(%eax)
    11bc:	b4 0e                	mov    $0xe,%ah
    11be:	00 00                	add    %al,(%eax)
    11c0:	04 00                	add    $0x0,%al
    11c2:	6f                   	outsl  %ds:(%esi),(%dx)
    11c3:	06                   	push   %es
    11c4:	00 00                	add    %al,(%eax)
    11c6:	04 01                	add    $0x1,%al
    11c8:	52                   	push   %edx
    11c9:	00 00                	add    %al,(%eax)
    11cb:	00 01                	add    %al,(%ecx)
    11cd:	71 05                	jno    11d4 <__executable_start-0x8046ec0>
    11cf:	00 00                	add    %al,(%eax)
    11d1:	00 00                	add    %al,(%eax)
    11d3:	00 00                	add    %al,(%eax)
    11d5:	f0 84 04 08          	lock test %al,(%eax,%ecx,1)
    11d9:	53                   	push   %ebx
    11da:	0d 00 00 2c 03       	or     $0x32c0000,%eax
    11df:	00 00                	add    %al,(%eax)
    11e1:	02 08                	add    (%eax),%cl
    11e3:	07                   	pop    %es
    11e4:	70 02                	jo     11e8 <__executable_start-0x8046eac>
    11e6:	00 00                	add    %al,(%eax)
    11e8:	02 04 07             	add    (%edi,%eax,1),%al
    11eb:	7a 02                	jp     11ef <__executable_start-0x8046ea5>
    11ed:	00 00                	add    %al,(%eax)
    11ef:	03 04 05 69 6e 74 00 	add    0x746e69(,%eax,1),%eax
    11f6:	04 e9                	add    $0xe9,%al
    11f8:	03 00                	add    (%eax),%eax
    11fa:	00 03                	add    %al,(%ebx)
    11fc:	07                   	pop    %es
    11fd:	45                   	inc    %ebp
    11fe:	00 00                	add    %al,(%eax)
    1200:	00 05 04 df 03 00    	add    %al,0x3df04
    1206:	00 4f 00             	add    %cl,0x0(%edi)
    1209:	00 00                	add    %al,(%eax)
    120b:	02 01                	add    (%ecx),%al
    120d:	06                   	push   %es
    120e:	6b 02 00             	imul   $0x0,(%edx),%eax
    1211:	00 04 f6             	add    %al,(%esi,%esi,8)
    1214:	04 00                	add    $0x0,%al
    1216:	00 04 0a             	add    %al,(%edx,%ecx,1)
    1219:	2c 00                	sub    $0x0,%al
    121b:	00 00                	add    %al,(%eax)
    121d:	02 01                	add    (%ecx),%al
    121f:	06                   	push   %es
    1220:	64 02 00             	add    %fs:(%eax),%al
    1223:	00 02                	add    %al,(%edx)
    1225:	02 05 29 01 00 00    	add    0x129,%al
    122b:	04 ee                	add    $0xee,%al
    122d:	04 00                	add    $0x0,%al
    122f:	00 05 10 7a 00 00    	add    %al,0x7a10
    1235:	00 02                	add    %al,(%edx)
    1237:	08 05 d3 01 00 00    	or     %al,0x1d3
    123d:	04 15                	add    $0x15,%al
    123f:	05 00 00 05 14       	add    $0x14050000,%eax
    1244:	8c 00                	mov    %es,(%eax)
    1246:	00 00                	add    %al,(%eax)
    1248:	02 01                	add    (%ecx),%al
    124a:	08 62 02             	or     %ah,0x2(%edx)
    124d:	00 00                	add    %al,(%eax)
    124f:	02 02                	add    (%edx),%al
    1251:	07                   	pop    %es
    1252:	c6 02 00             	movb   $0x0,(%edx)
    1255:	00 04 87             	add    %al,(%edi,%eax,4)
    1258:	02 00                	add    (%eax),%al
    125a:	00 05 1a 2c 00 00    	add    %al,0x2c1a
    1260:	00 04 ed 04 00 00 05 	add    %al,0x5000004(,%ebp,8)
    1267:	1d 25 00 00 00       	sbb    $0x25,%eax
    126c:	04 a5                	add    $0xa5,%al
    126e:	04 00                	add    $0x0,%al
    1270:	00 05 24 9a 00 00    	add    %al,0x9a24
    1276:	00 04 d7             	add    %al,(%edi,%edx,8)
    1279:	05 00 00 05 27       	add    $0x27050000,%eax
    127e:	6f                   	outsl  %ds:(%esi),(%dx)
    127f:	00 00                	add    %al,(%eax)
    1281:	00 04 d6             	add    %al,(%esi,%edx,8)
    1284:	05 00 00 05 2b       	add    $0x2b050000,%eax
    1289:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    128a:	00 00                	add    %al,(%eax)
    128c:	00 06                	add    %al,(%esi)
    128e:	48                   	dec    %eax
    128f:	06                   	push   %es
    1290:	00 00                	add    %al,(%eax)
    1292:	0c 01                	or     $0x1,%al
    1294:	09 00                	or     %eax,(%eax)
    1296:	01 00                	add    %eax,(%eax)
    1298:	00 07                	add    %al,(%edi)
    129a:	70 00                	jo     129c <__executable_start-0x8046df8>
    129c:	01 0b                	add    %ecx,(%ebx)
    129e:	00 01                	add    %al,(%ecx)
    12a0:	00 00                	add    %al,(%eax)
    12a2:	00 08                	add    %cl,(%eax)
    12a4:	a1 06 00 00 01       	mov    0x1000006,%eax
    12a9:	0c 33                	or     $0x33,%al
    12ab:	00 00                	add    %al,(%eax)
    12ad:	00 04 08             	add    %al,(%eax,%ecx,1)
    12b0:	9d                   	popf   
    12b1:	06                   	push   %es
    12b2:	00 00                	add    %al,(%eax)
    12b4:	01 0d 33 00 00 00    	add    %ecx,0x33
    12ba:	08 00                	or     %al,(%eax)
    12bc:	09 04 4f             	or     %eax,(%edi,%ecx,2)
    12bf:	00 00                	add    %al,(%eax)
    12c1:	00 0a                	add    %cl,(%edx)
    12c3:	04 01                	add    $0x1,%al
    12c5:	62 33                	bound  %esi,(%ebx)
    12c7:	01 00                	add    %eax,(%eax)
    12c9:	00 0b                	add    %cl,(%ebx)
    12cb:	b1 06                	mov    $0x6,%cl
    12cd:	00 00                	add    %al,(%eax)
    12cf:	01 0b                	add    %ecx,(%ebx)
    12d1:	6c                   	insb   (%dx),%es:(%edi)
    12d2:	05 00 00 02 0b       	add    $0xb020000,%eax
    12d7:	ae                   	scas   %es:(%edi),%al
    12d8:	05 00 00 04 0b       	add    $0xb040000,%eax
    12dd:	42                   	inc    %edx
    12de:	06                   	push   %es
    12df:	00 00                	add    %al,(%eax)
    12e1:	08 0b                	or     %cl,(%ebx)
    12e3:	10 05 00 00 10 0b    	adc    %al,0xb100000
    12e9:	de 04 00             	fiadd  (%eax,%eax,1)
    12ec:	00 20                	add    %ah,(%eax)
    12ee:	00 0a                	add    %cl,(%edx)
    12f0:	04 01                	add    $0x1,%al
    12f2:	75 6c                	jne    1360 <__executable_start-0x8046d34>
    12f4:	01 00                	add    %eax,(%eax)
    12f6:	00 0b                	add    %cl,(%ebx)
    12f8:	51                   	push   %ecx
    12f9:	05 00 00 01 0b       	add    $0xb010000,%eax
    12fe:	85 06                	test   %eax,(%esi)
    1300:	00 00                	add    %al,(%eax)
    1302:	02 0c 49             	add    (%ecx,%ecx,2),%cl
    1305:	4e                   	dec    %esi
    1306:	54                   	push   %esp
    1307:	00 03                	add    %al,(%ebx)
    1309:	0b 0d 06 00 00 04    	or     0x4000006,%ecx
    130f:	0b 1e                	or     (%esi),%ebx
    1311:	06                   	push   %es
    1312:	00 00                	add    %al,(%eax)
    1314:	05 0b 1a 06 00       	add    $0x61a0b,%eax
    1319:	00 06                	add    %al,(%esi)
    131b:	0b 67 06             	or     0x6(%edi),%esp
    131e:	00 00                	add    %al,(%eax)
    1320:	07                   	pop    %es
    1321:	0b 66 05             	or     0x5(%esi),%esp
    1324:	00 00                	add    %al,(%eax)
    1326:	08 00                	or     %al,(%eax)
    1328:	06                   	push   %es
    1329:	8b 06                	mov    (%esi),%eax
    132b:	00 00                	add    %al,(%eax)
    132d:	10 01                	adc    %al,(%ecx)
    132f:	5e                   	pop    %esi
    1330:	a9 01 00 00 08       	test   $0x8000001,%eax
    1335:	b4 05                	mov    $0x5,%ah
    1337:	00 00                	add    %al,(%eax)
    1339:	01 6a 06             	add    %ebp,0x6(%edx)
    133c:	01 00                	add    %eax,(%eax)
    133e:	00 00                	add    %al,(%eax)
    1340:	08 39                	or     %bh,(%ecx)
    1342:	05 00 00 01 6d       	add    $0x6d010000,%eax
    1347:	33 00                	xor    (%eax),%eax
    1349:	00 00                	add    %al,(%eax)
    134b:	04 08                	add    $0x8,%al
    134d:	b7 06                	mov    $0x6,%bh
    134f:	00 00                	add    %al,(%eax)
    1351:	01 71 33             	add    %esi,0x33(%ecx)
    1354:	00 00                	add    %al,(%eax)
    1356:	00 08                	add    %cl,(%eax)
    1358:	08 48 00             	or     %cl,0x0(%eax)
    135b:	00 00                	add    %al,(%eax)
    135d:	01 7f 33             	add    %edi,0x33(%edi)
    1360:	01 00                	add    %eax,(%eax)
    1362:	00 0c 00             	add    %cl,(%eax,%eax,1)
    1365:	06                   	push   %es
    1366:	80 05 00 00 10 01 82 	addb   $0x82,0x1100000
    136d:	e4 01                	in     $0x1,%al
    136f:	00 00                	add    %al,(%eax)
    1371:	08 88 05 00 00 01    	or     %cl,0x1000005(%eax)
    1377:	84 33                	test   %dh,(%ebx)
    1379:	00 00                	add    %al,(%eax)
    137b:	00 00                	add    %al,(%eax)
    137d:	08 5f 05             	or     %bl,0x5(%edi)
    1380:	00 00                	add    %al,(%eax)
    1382:	01 85 e4 01 00 00    	add    %eax,0x1e4(%ebp)
    1388:	04 07                	add    $0x7,%al
    138a:	78 00                	js     138c <__executable_start-0x8046d08>
    138c:	01 86 33 00 00 00    	add    %eax,0x33(%esi)
    1392:	08 08                	or     %cl,(%eax)
    1394:	fd                   	std    
    1395:	04 00                	add    $0x0,%al
    1397:	00 01                	add    %al,(%ecx)
    1399:	87 33                	xchg   %esi,(%ebx)
    139b:	00 00                	add    %al,(%eax)
    139d:	00 0c 00             	add    %cl,(%eax,%eax,1)
    13a0:	09 04 ea             	or     %eax,(%edx,%ebp,8)
    13a3:	01 00                	add    %eax,(%eax)
    13a5:	00 0d 4f 00 00 00    	add    %cl,0x4f
    13ab:	0e                   	push   %cs
    13ac:	d6                   	(bad)  
    13ad:	04 00                	add    $0x0,%al
    13af:	00 02                	add    %al,(%edx)
    13b1:	07                   	pop    %es
    13b2:	33 00                	xor    (%eax),%eax
    13b4:	00 00                	add    %al,(%eax)
    13b6:	03 09                	add    (%ecx),%ecx
    13b8:	02 00                	add    (%eax),%al
    13ba:	00 0f                	add    %cl,(%edi)
    13bc:	63 00                	arpl   %ax,(%eax)
    13be:	02 07                	add    (%edi),%al
    13c0:	33 00                	xor    (%eax),%eax
    13c2:	00 00                	add    %al,(%eax)
    13c4:	00 0e                	add    %cl,(%esi)
    13c6:	23 06                	and    (%esi),%eax
    13c8:	00 00                	add    %al,(%eax)
    13ca:	02 12                	add    (%edx),%dl
    13cc:	33 00                	xor    (%eax),%eax
    13ce:	00 00                	add    %al,(%eax)
    13d0:	03 23                	add    (%ebx),%esp
    13d2:	02 00                	add    (%eax),%al
    13d4:	00 0f                	add    %cl,(%edi)
    13d6:	63 00                	arpl   %ax,(%eax)
    13d8:	02 12                	add    (%edx),%dl
    13da:	33 00                	xor    (%eax),%eax
    13dc:	00 00                	add    %al,(%eax)
    13de:	00 10                	add    %dl,(%eax)
    13e0:	28 05 00 00 01 2e    	sub    %al,0x2e010000
    13e6:	f0 84 04 08          	lock test %al,(%eax,%ecx,1)
    13ea:	22 00                	and    (%eax),%al
    13ec:	00 00                	add    %al,(%eax)
    13ee:	01 9c 62 02 00 00 11 	add    %ebx,0x11000002(%edx,%eiz,2)
    13f5:	63 68 00             	arpl   %bp,0x0(%eax)
    13f8:	01 2e                	add    %ebp,(%esi)
    13fa:	4f                   	dec    %edi
    13fb:	00 00                	add    %al,(%eax)
    13fd:	00 02                	add    %al,(%edx)
    13ff:	91                   	xchg   %eax,%ecx
    1400:	00 12                	add    %dl,(%edx)
    1402:	62 04 00             	bound  %eax,(%eax,%eax,1)
    1405:	00 01                	add    %al,(%ecx)
    1407:	2e 62 02             	bound  %eax,%cs:(%edx)
    140a:	00 00                	add    %al,(%eax)
    140c:	02 91 04 13 61 75    	add    0x75611304(%ecx),%dl
    1412:	78 00                	js     1414 <__executable_start-0x8046c80>
    1414:	01 30                	add    %esi,(%eax)
    1416:	64 02 00             	add    %fs:(%eax),%al
    1419:	00 02                	add    %al,(%edx)
    141b:	91                   	xchg   %eax,%ecx
    141c:	04 00                	add    $0x0,%al
    141e:	14 04                	adc    $0x4,%al
    1420:	09 04 d1             	or     %eax,(%ecx,%edx,8)
    1423:	00 00                	add    %al,(%eax)
    1425:	00 15 1d 05 00 00    	add    %dl,0x51d
    142b:	01 27                	add    %esp,(%edi)
    142d:	02 12                	add    (%edx),%dl
    142f:	85 04 08             	test   %eax,(%eax,%ecx,1)
    1432:	2c 00                	sub    $0x0,%al
    1434:	00 00                	add    %al,(%eax)
    1436:	01 9c d3 02 00 00 16 	add    %ebx,0x16000002(%ebx,%edx,8)
    143d:	63 68 00             	arpl   %bp,0x0(%eax)
    1440:	01 27                	add    %esp,(%edi)
    1442:	02 4f 00             	add    0x0(%edi),%cl
    1445:	00 00                	add    %al,(%eax)
    1447:	4f                   	dec    %edi
    1448:	01 00                	add    %eax,(%eax)
    144a:	00 16                	add    %dl,(%esi)
    144c:	63 6e 74             	arpl   %bp,0x74(%esi)
    144f:	00 01                	add    %al,(%ecx)
    1451:	27                   	daa    
    1452:	02 56 00             	add    0x0(%esi),%dl
    1455:	00 00                	add    %al,(%eax)
    1457:	7b 01                	jnp    145a <__executable_start-0x8046c3a>
    1459:	00 00                	add    %al,(%eax)
    145b:	17                   	pop    %ss
    145c:	7e 06                	jle    1464 <__executable_start-0x8046c30>
    145e:	00 00                	add    %al,(%eax)
    1460:	01 27                	add    %esp,(%edi)
    1462:	02 e3                	add    %bl,%ah
    1464:	02 00                	add    (%eax),%al
    1466:	00 c2                	add    %al,%dl
    1468:	01 00                	add    %eax,(%eax)
    146a:	00 18                	add    %bl,(%eax)
    146c:	61                   	popa   
    146d:	75 78                	jne    14e7 <__executable_start-0x8046bad>
    146f:	00 01                	add    %al,(%ecx)
    1471:	27                   	daa    
    1472:	02 62 02             	add    0x2(%edx),%ah
    1475:	00 00                	add    %al,(%eax)
    1477:	02 91 00 19 31 85    	add    -0x7acee700(%ecx),%dl
    147d:	04 08                	add    $0x8,%al
    147f:	1a 02                	sbb    (%edx),%al
    1481:	74 00                	je     1483 <__executable_start-0x8046c11>
    1483:	02 75 00             	add    0x0(%ebp),%dh
    1486:	1a 02                	sbb    (%edx),%al
    1488:	74 04                	je     148e <__executable_start-0x8046c06>
    148a:	02 77 00             	add    0x0(%edi),%dh
    148d:	00 00                	add    %al,(%eax)
    148f:	1b e3                	sbb    %ebx,%esp
    1491:	02 00                	add    (%eax),%al
    1493:	00 1c 4f             	add    %bl,(%edi,%ecx,2)
    1496:	00 00                	add    %al,(%eax)
    1498:	00 1c 62             	add    %bl,(%edx,%eiz,2)
    149b:	02 00                	add    (%eax),%al
    149d:	00 00                	add    %al,(%eax)
    149f:	09 04 d3             	or     %eax,(%ebx,%edx,8)
    14a2:	02 00                	add    (%eax),%al
    14a4:	00 1d ba 05 00 00    	add    %bl,0x5ba
    14aa:	01 d6                	add    %edx,%esi
    14ac:	01 3e                	add    %edi,(%esi)
    14ae:	85 04 08             	test   %eax,(%eax,%ecx,1)
    14b1:	2c 03                	sub    $0x3,%al
    14b3:	00 00                	add    %al,(%eax)
    14b5:	01 9c b0 04 00 00 17 	add    %ebx,0x17000004(%eax,%esi,4)
    14bc:	14 06                	adc    $0x6,%al
    14be:	00 00                	add    %al,(%eax)
    14c0:	01 d6                	add    %edx,%esi
    14c2:	01 c6                	add    %eax,%esi
    14c4:	00 00                	add    %al,(%eax)
    14c6:	00 ee                	add    %ch,%dh
    14c8:	01 00                	add    %eax,(%eax)
    14ca:	00 17                	add    %dl,(%edi)
    14cc:	38 06                	cmp    %al,(%esi)
    14ce:	00 00                	add    %al,(%eax)
    14d0:	01 d6                	add    %edx,%esi
    14d2:	01 b0 04 00 00 66    	add    %esi,0x66000004(%eax)
    14d8:	02 00                	add    (%eax),%al
    14da:	00 1e                	add    %bl,(%esi)
    14dc:	56                   	push   %esi
    14dd:	05 00 00 01 d6       	add    $0xd6010000,%eax
    14e2:	01 b0 04 00 00 02    	add    %esi,0x2000004(%eax)
    14e8:	91                   	xchg   %eax,%ecx
    14e9:	00 18                	add    %bl,(%eax)
    14eb:	62 00                	bound  %eax,(%eax)
    14ed:	01 d7                	add    %edx,%edi
    14ef:	01 b7 04 00 00 02    	add    %esi,0x2000004(%edi)
    14f5:	91                   	xchg   %eax,%ecx
    14f6:	04 18                	add    $0x18,%al
    14f8:	63 00                	arpl   %ax,(%eax)
    14fa:	01 d8                	add    %ebx,%eax
    14fc:	01 c2                	add    %eax,%edx
    14fe:	04 00                	add    $0x0,%al
    1500:	00 02                	add    %al,(%edx)
    1502:	91                   	xchg   %eax,%ecx
    1503:	08 1e                	or     %bl,(%esi)
    1505:	7e 06                	jle    150d <__executable_start-0x8046b87>
    1507:	00 00                	add    %al,(%eax)
    1509:	01 d9                	add    %ebx,%ecx
    150b:	01 e3                	add    %esp,%ebx
    150d:	02 00                	add    (%eax),%al
    150f:	00 02                	add    %al,(%edx)
    1511:	91                   	xchg   %eax,%ecx
    1512:	0c 18                	or     $0x18,%al
    1514:	61                   	popa   
    1515:	75 78                	jne    158f <__executable_start-0x8046b05>
    1517:	00 01                	add    %al,(%ecx)
    1519:	d9 01                	flds   (%ecx)
    151b:	62 02                	bound  %eax,(%edx)
    151d:	00 00                	add    %al,(%eax)
    151f:	02 91 10 1f 62 75    	add    0x75621f10(%ecx),%dl
    1525:	66 00 01             	data16 add %al,(%ecx)
    1528:	db 01                	fildl  (%ecx)
    152a:	cd 04                	int    $0x4
    152c:	00 00                	add    %al,(%eax)
    152e:	03 91 a0 7f 20 63    	add    0x63207fa0(%ecx),%edx
    1534:	70 00                	jo     1536 <__executable_start-0x8046b5e>
    1536:	01 db                	add    %ebx,%ebx
    1538:	01 00                	add    %eax,(%eax)
    153a:	01 00                	add    %eax,(%eax)
    153c:	00 87 02 00 00 20    	add    %al,0x20000002(%edi)
    1542:	78 00                	js     1544 <__executable_start-0x8046b50>
    1544:	01 dc                	add    %ebx,%esp
    1546:	01 33                	add    %esi,(%ebx)
    1548:	00 00                	add    %al,(%eax)
    154a:	00 2c 03             	add    %ch,(%ebx,%eax,1)
    154d:	00 00                	add    %al,(%eax)
    154f:	21 33                	and    %esi,(%ebx)
    1551:	06                   	push   %es
    1552:	00 00                	add    %al,(%eax)
    1554:	01 dd                	add    %ebx,%ebp
    1556:	01 33                	add    %esi,(%ebx)
    1558:	00 00                	add    %al,(%eax)
    155a:	00 57 03             	add    %dl,0x3(%edi)
    155d:	00 00                	add    %al,(%eax)
    155f:	21 b7 06 00 00 01    	and    %esi,0x1000006(%edi)
    1565:	de 01                	fiadd  (%ecx)
    1567:	33 00                	xor    (%eax),%eax
    1569:	00 00                	add    %al,(%eax)
    156b:	78 03                	js     1570 <__executable_start-0x8046b24>
    156d:	00 00                	add    %al,(%eax)
    156f:	21 08                	and    %ecx,(%eax)
    1571:	05 00 00 01 df       	add    $0xdf010000,%eax
    1576:	01 33                	add    %esi,(%ebx)
    1578:	00 00                	add    %al,(%eax)
    157a:	00 8b 03 00 00 21    	add    %cl,0x21000003(%ebx)
    1580:	03 06                	add    (%esi),%eax
    1582:	00 00                	add    %al,(%eax)
    1584:	01 e0                	add    %esp,%eax
    1586:	01 33                	add    %esi,(%ebx)
    1588:	00 00                	add    %al,(%eax)
    158a:	00 bb 03 00 00 22    	add    %bh,0x22000003(%ebx)
    1590:	81 87 04 08 6a 02 00 	addl   $0x3fc0000,0x26a0804(%edi)
    1597:	00 fc 03 
    159a:	00 00                	add    %al,(%eax)
    159c:	1a 01                	sbb    (%ecx),%al
    159e:	50                   	push   %eax
    159f:	02 08                	add    (%eax),%cl
    15a1:	20 1a                	and    %bl,(%edx)
    15a3:	01 52 02             	add    %edx,0x2(%edx)
    15a6:	77 00                	ja     15a8 <__executable_start-0x8046aec>
    15a8:	1a 01                	sbb    (%ecx),%al
    15aa:	51                   	push   %ecx
    15ab:	03 91 0c 06 1a 02    	add    0x21a060c(%ecx),%edx
    15b1:	74 00                	je     15b3 <__executable_start-0x8046ae1>
    15b3:	03 91 10 06 00 23    	add    0x23000610(%ecx),%edx
    15b9:	a0 87 04 08 17       	mov    0x17080487,%al
    15be:	04 00                	add    $0x0,%al
    15c0:	00 1a                	add    %bl,(%edx)
    15c2:	02 74 00 04          	add    0x4(%eax,%eax,1),%dh
    15c6:	91                   	xchg   %eax,%ecx
    15c7:	90                   	nop
    15c8:	7f 06                	jg     15d0 <__executable_start-0x8046ac4>
    15ca:	1a 02                	sbb    (%edx),%al
    15cc:	74 04                	je     15d2 <__executable_start-0x8046ac2>
    15ce:	03 91 10 06 00 23    	add    0x23000610(%ecx),%edx
    15d4:	c0 87 04 08 30 04 00 	rolb   $0x0,0x4300804(%edi)
    15db:	00 1a                	add    %bl,(%edx)
    15dd:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    15e1:	08 30                	or     %dh,(%eax)
    15e3:	1a 02                	sbb    (%edx),%al
    15e5:	74 04                	je     15eb <__executable_start-0x8046aa9>
    15e7:	03 91 10 06 00 23    	add    0x23000610(%ecx),%edx
    15ed:	da 87 04 08 50 04    	fiaddl 0x4500804(%edi)
    15f3:	00 00                	add    %al,(%eax)
    15f5:	1a 02                	sbb    (%edx),%al
    15f7:	74 00                	je     15f9 <__executable_start-0x8046a9b>
    15f9:	09 91 94 7f 94 01    	or     %edx,0x1947f94(%ecx)
    15ff:	48                   	dec    %eax
    1600:	24 48                	and    $0x48,%al
    1602:	26 1a 02             	sbb    %es:(%edx),%al
    1605:	74 04                	je     160b <__executable_start-0x8046a89>
    1607:	03 91 10 06 00 22    	add    0x22000610(%ecx),%edx
    160d:	03 88 04 08 6a 02    	add    0x26a0804(%eax),%ecx
    1613:	00 00                	add    %al,(%eax)
    1615:	79 04                	jns    161b <__executable_start-0x8046a79>
    1617:	00 00                	add    %al,(%eax)
    1619:	1a 01                	sbb    (%ecx),%al
    161b:	50                   	push   %eax
    161c:	02 08                	add    (%eax),%cl
    161e:	30 1a                	xor    %bl,(%edx)
    1620:	01 52 02             	add    %edx,0x2(%edx)
    1623:	77 00                	ja     1625 <__executable_start-0x8046a6f>
    1625:	1a 01                	sbb    (%ecx),%al
    1627:	51                   	push   %ecx
    1628:	03 91 0c 06 1a 02    	add    0x21a060c(%ecx),%edx
    162e:	74 00                	je     1630 <__executable_start-0x8046a64>
    1630:	03 91 10 06 00 23    	add    0x23000610(%ecx),%edx
    1636:	2e 88 04 08          	mov    %al,%cs:(%eax,%ecx,1)
    163a:	8a 04 00             	mov    (%eax,%eax,1),%al
    163d:	00 1a                	add    %bl,(%edx)
    163f:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    1643:	75 00                	jne    1645 <__executable_start-0x8046a4f>
    1645:	00 24 5f             	add    %ah,(%edi,%ebx,2)
    1648:	88 04 08             	mov    %al,(%eax,%ecx,1)
    164b:	6a 02                	push   $0x2
    164d:	00 00                	add    %al,(%eax)
    164f:	1a 01                	sbb    (%ecx),%al
    1651:	50                   	push   %eax
    1652:	02 08                	add    (%eax),%cl
    1654:	20 1a                	and    %bl,(%edx)
    1656:	01 52 02             	add    %edx,0x2(%edx)
    1659:	77 00                	ja     165b <__executable_start-0x8046a39>
    165b:	1a 01                	sbb    (%ecx),%al
    165d:	51                   	push   %ecx
    165e:	03 91 0c 06 1a 02    	add    0x21a060c(%ecx),%edx
    1664:	74 00                	je     1666 <__executable_start-0x8046a2e>
    1666:	03 91 10 06 00 00    	add    0x610(%ecx),%edx
    166c:	02 01                	add    (%ecx),%al
    166e:	02 e8                	add    %al,%ch
    1670:	02 00                	add    (%eax),%al
    1672:	00 09                	add    %cl,(%ecx)
    1674:	04 bd                	add    $0xbd,%al
    1676:	04 00                	add    $0x0,%al
    1678:	00 0d a9 01 00 00    	add    %cl,0x1a9
    167e:	09 04 c8             	or     %eax,(%eax,%ecx,8)
    1681:	04 00                	add    $0x0,%al
    1683:	00 0d 6c 01 00 00    	add    %cl,0x16c
    1689:	25 4f 00 00 00       	and    $0x4f,%eax
    168e:	dd 04 00             	fldl   (%eax,%eax,1)
    1691:	00 26                	add    %ah,(%esi)
    1693:	dd 04 00             	fldl   (%eax,%eax,1)
    1696:	00 3f                	add    %bh,(%edi)
    1698:	00 02                	add    %al,(%edx)
    169a:	04 07                	add    $0x7,%al
    169c:	44                   	inc    %esp
    169d:	00 00                	add    %al,(%eax)
    169f:	00 15 70 06 00 00    	add    %dl,0x670
    16a5:	01 31                	add    %esi,(%ecx)
    16a7:	02 6a 88             	add    -0x78(%edx),%ch
    16aa:	04 08                	add    $0x8,%al
    16ac:	84 00                	test   %al,(%eax)
    16ae:	00 00                	add    %al,(%eax)
    16b0:	01 9c a4 05 00 00 17 	add    %ebx,0x17000005(%esp,%eiz,4)
    16b7:	77 06                	ja     16bf <__executable_start-0x80469d5>
    16b9:	00 00                	add    %al,(%eax)
    16bb:	01 31                	add    %esi,(%ecx)
    16bd:	02 e4                	add    %ah,%ah
    16bf:	01 00                	add    %eax,(%eax)
    16c1:	00 e5                	add    %ah,%ch
    16c3:	03 00                	add    (%eax),%eax
    16c5:	00 17                	add    %dl,(%edi)
    16c7:	a1 06 00 00 01       	mov    0x1000006,%eax
    16cc:	31 02                	xor    %eax,(%edx)
    16ce:	33 00                	xor    (%eax),%eax
    16d0:	00 00                	add    %al,(%eax)
    16d2:	11 04 00             	adc    %eax,(%eax,%eax,1)
    16d5:	00 16                	add    %dl,(%esi)
    16d7:	63 00                	arpl   %ax,(%eax)
    16d9:	01 32                	add    %esi,(%edx)
    16db:	02 a4 05 00 00 3b 04 	add    0x43b0000(%ebp,%eax,1),%ah
    16e2:	00 00                	add    %al,(%eax)
    16e4:	1e                   	push   %ds
    16e5:	7e 06                	jle    16ed <__executable_start-0x80469a7>
    16e7:	00 00                	add    %al,(%eax)
    16e9:	01 33                	add    %esi,(%ebx)
    16eb:	02 e3                	add    %bl,%ah
    16ed:	02 00                	add    (%eax),%al
    16ef:	00 02                	add    %al,(%edx)
    16f1:	91                   	xchg   %eax,%ecx
    16f2:	00 18                	add    %bl,(%eax)
    16f4:	61                   	popa   
    16f5:	75 78                	jne    176f <__executable_start-0x8046925>
    16f7:	00 01                	add    %al,(%ecx)
    16f9:	33 02                	xor    (%edx),%eax
    16fb:	62 02                	bound  %eax,(%edx)
    16fd:	00 00                	add    %al,(%eax)
    16ff:	02 91 04 20 69 00    	add    0x692004(%ecx),%dl
    1705:	01 35 02 33 00 00    	add    %esi,0x3302
    170b:	00 5a 04             	add    %bl,0x4(%edx)
    170e:	00 00                	add    %al,(%eax)
    1710:	22 a2 88 04 08 6a    	and    0x6a080488(%edx),%ah
    1716:	02 00                	add    (%eax),%al
    1718:	00 75 05             	add    %dh,0x5(%ebp)
    171b:	00 00                	add    %al,(%eax)
    171d:	1a 01                	sbb    (%ecx),%al
    171f:	50                   	push   %eax
    1720:	02 08                	add    (%eax),%cl
    1722:	20 1a                	and    %bl,(%edx)
    1724:	01 51 02             	add    %edx,0x2(%ecx)
    1727:	76 00                	jbe    1729 <__executable_start-0x804696b>
    1729:	1a 02                	sbb    (%edx),%al
    172b:	74 00                	je     172d <__executable_start-0x8046967>
    172d:	02 77 00             	add    0x0(%edi),%dh
    1730:	00 23                	add    %ah,(%ebx)
    1732:	ba 88 04 08 86       	mov    $0x86080488,%edx
    1737:	05 00 00 1a 02       	add    $0x21a0000,%eax
    173c:	74 04                	je     1742 <__executable_start-0x8046952>
    173e:	02 77 00             	add    0x0(%edi),%dh
    1741:	00 24 e6             	add    %ah,(%esi,%eiz,8)
    1744:	88 04 08             	mov    %al,(%eax,%ecx,1)
    1747:	6a 02                	push   $0x2
    1749:	00 00                	add    %al,(%eax)
    174b:	1a 01                	sbb    (%ecx),%al
    174d:	50                   	push   %eax
    174e:	02 08                	add    (%eax),%cl
    1750:	20 1a                	and    %bl,(%edx)
    1752:	01 51 02             	add    %edx,0x2(%ecx)
    1755:	76 00                	jbe    1757 <__executable_start-0x804693d>
    1757:	1a 02                	sbb    (%edx),%al
    1759:	74 00                	je     175b <__executable_start-0x8046939>
    175b:	02 77 00             	add    0x0(%edi),%dh
    175e:	00 00                	add    %al,(%eax)
    1760:	09 04 6c             	or     %eax,(%esp,%ebp,2)
    1763:	01 00                	add    %eax,(%eax)
    1765:	00 27                	add    %ah,(%edi)
    1767:	aa                   	stos   %al,%es:(%edi)
    1768:	06                   	push   %es
    1769:	00 00                	add    %al,(%eax)
    176b:	01 4f 33             	add    %ecx,0x33(%edi)
    176e:	00 00                	add    %al,(%eax)
    1770:	00 ee                	add    %ch,%dh
    1772:	88 04 08             	mov    %al,(%eax,%ecx,1)
    1775:	1b 00                	sbb    (%eax),%eax
    1777:	00 00                	add    %al,(%eax)
    1779:	01 9c 08 06 00 00 12 	add    %ebx,0x12000006(%eax,%ecx,1)
    1780:	45                   	inc    %ebp
    1781:	04 00                	add    $0x0,%al
    1783:	00 01                	add    %al,(%ecx)
    1785:	4f                   	dec    %edi
    1786:	e4 01                	in     $0x1,%al
    1788:	00 00                	add    %al,(%eax)
    178a:	02 91 00 28 29 30    	add    0x30292800(%ecx),%dl
    1790:	04 00                	add    $0x0,%al
    1792:	00 01                	add    %al,(%ecx)
    1794:	51                   	push   %ecx
    1795:	3a 00                	cmp    (%eax),%al
    1797:	00 00                	add    %al,(%eax)
    1799:	a3 04 00 00 2a       	mov    %eax,0x2a000004
    179e:	47                   	inc    %edi
    179f:	03 00                	add    (%eax),%eax
    17a1:	00 01                	add    %al,(%ecx)
    17a3:	52                   	push   %edx
    17a4:	33 00                	xor    (%eax),%eax
    17a6:	00 00                	add    %al,(%eax)
    17a8:	01 50 24             	add    %edx,0x24(%eax)
    17ab:	05 89 04 08 4d       	add    $0x4d080489,%eax
    17b0:	0e                   	push   %cs
    17b1:	00 00                	add    %al,(%eax)
    17b3:	1a 02                	sbb    (%edx),%al
    17b5:	74 00                	je     17b7 <__executable_start-0x80468dd>
    17b7:	03 91 00 06 1a 02    	add    0x21a0600(%ecx),%edx
    17bd:	74 04                	je     17c3 <__executable_start-0x80468d1>
    17bf:	02 91 04 00 00 2b    	add    0x2b000004(%ecx),%dl
    17c5:	a8 06                	test   $0x6,%al
    17c7:	00 00                	add    %al,(%eax)
    17c9:	01 41 02             	add    %eax,0x2(%ecx)
    17cc:	09 89 04 08 2b 00    	or     %ecx,0x2b0804(%ecx)
    17d2:	00 00                	add    %al,(%eax)
    17d4:	01 9c 86 06 00 00 1e 	add    %ebx,0x1e000006(%esi,%eax,4)
    17db:	45                   	inc    %ebp
    17dc:	04 00                	add    $0x0,%al
    17de:	00 01                	add    %al,(%ecx)
    17e0:	41                   	inc    %ecx
    17e1:	02 e4                	add    %ah,%ah
    17e3:	01 00                	add    %eax,(%eax)
    17e5:	00 02                	add    %al,(%edx)
    17e7:	91                   	xchg   %eax,%ecx
    17e8:	00 1e                	add    %bl,(%esi)
    17ea:	7e 06                	jle    17f2 <__executable_start-0x80468a2>
    17ec:	00 00                	add    %al,(%eax)
    17ee:	01 42 02             	add    %eax,0x2(%edx)
    17f1:	e3 02                	jecxz  17f5 <__executable_start-0x804689f>
    17f3:	00 00                	add    %al,(%eax)
    17f5:	02 91 04 18 61 75    	add    0x75611804(%ecx),%dl
    17fb:	78 00                	js     17fd <__executable_start-0x8046897>
    17fd:	01 42 02             	add    %eax,0x2(%edx)
    1800:	62 02                	bound  %eax,(%edx)
    1802:	00 00                	add    %al,(%eax)
    1804:	02 91 08 28 21 30    	add    0x30212808(%ecx),%dl
    180a:	04 00                	add    $0x0,%al
    180c:	00 01                	add    %al,(%ecx)
    180e:	44                   	inc    %esp
    180f:	02 3a                	add    (%edx),%bh
    1811:	00 00                	add    %al,(%eax)
    1813:	00 cf                	add    %cl,%bh
    1815:	04 00                	add    $0x0,%al
    1817:	00 24 30             	add    %ah,(%eax,%esi,1)
    181a:	89 04 08             	mov    %eax,(%eax,%ecx,1)
    181d:	c8 06 00 00          	enter  $0x6,$0x0
    1821:	1a 02                	sbb    (%edx),%al
    1823:	74 00                	je     1825 <__executable_start-0x804686f>
    1825:	03 91 00 06 1a 02    	add    0x21a0600(%ecx),%edx
    182b:	74 04                	je     1831 <__executable_start-0x8046863>
    182d:	02 91 0c 1a 02 74    	add    0x74021a0c(%ecx),%dl
    1833:	08 03                	or     %al,(%ebx)
    1835:	91                   	xchg   %eax,%ecx
    1836:	04 06                	add    $0x6,%al
    1838:	1a 02                	sbb    (%edx),%al
    183a:	74 0c                	je     1848 <__executable_start-0x804684c>
    183c:	03 91 08 06 00 00    	add    0x608(%ecx),%edx
    1842:	2c 56                	sub    $0x56,%al
    1844:	06                   	push   %es
    1845:	00 00                	add    %al,(%eax)
    1847:	01 54 01 e4          	add    %edx,-0x1c(%ecx,%eax,1)
    184b:	01 00                	add    %eax,(%eax)
    184d:	00 01                	add    %al,(%ecx)
    184f:	c2 06 00             	ret    $0x6
    1852:	00 2d 45 04 00 00    	add    %ch,0x445
    1858:	01 54 01 e4          	add    %edx,-0x1c(%ecx,%eax,1)
    185c:	01 00                	add    %eax,(%eax)
    185e:	00 2e                	add    %ch,(%esi)
    1860:	63 00                	arpl   %ax,(%eax)
    1862:	01 54 01 a4          	add    %edx,-0x5c(%ecx,%eax,1)
    1866:	05 00 00 2d 30       	add    $0x302d0000,%eax
    186b:	04 00                	add    $0x0,%al
    186d:	00 01                	add    %al,(%ecx)
    186f:	55                   	push   %ebp
    1870:	01 c2                	add    %eax,%edx
    1872:	06                   	push   %es
    1873:	00 00                	add    %al,(%eax)
    1875:	2f                   	das    
    1876:	3f                   	aas    
    1877:	05 00 00 01 74       	add    $0x74010000,%eax
    187c:	01 00                	add    %eax,(%eax)
    187e:	09 04 3a             	or     %eax,(%edx,%edi,1)
    1881:	00 00                	add    %al,(%eax)
    1883:	00 30                	add    %dh,(%eax)
    1885:	67 04 00             	addr16 add $0x0,%al
    1888:	00 01                	add    %al,(%ecx)
    188a:	9d                   	popf   
    188b:	34 89                	xor    $0x89,%al
    188d:	04 08                	add    $0x8,%al
    188f:	3e 06                	ds push %es
    1891:	00 00                	add    %al,(%eax)
    1893:	01 9c 56 0a 00 00 31 	add    %ebx,0x3100000a(%esi,%edx,2)
    189a:	45                   	inc    %ebp
    189b:	04 00                	add    $0x0,%al
    189d:	00 01                	add    %al,(%ecx)
    189f:	9d                   	popf   
    18a0:	e4 01                	in     $0x1,%al
    18a2:	00 00                	add    %al,(%eax)
    18a4:	fb                   	sti    
    18a5:	04 00                	add    $0x0,%al
    18a7:	00 31                	add    %dh,(%ecx)
    18a9:	30 04 00             	xor    %al,(%eax,%eax,1)
    18ac:	00 01                	add    %al,(%ecx)
    18ae:	9d                   	popf   
    18af:	3a 00                	cmp    (%eax),%al
    18b1:	00 00                	add    %al,(%eax)
    18b3:	60                   	pusha  
    18b4:	05 00 00 12 7e       	add    $0x7e120000,%eax
    18b9:	06                   	push   %es
    18ba:	00 00                	add    %al,(%eax)
    18bc:	01 9e e3 02 00 00    	add    %ebx,0x2e3(%esi)
    18c2:	02 91 08 11 61 75    	add    0x75611108(%ecx),%dl
    18c8:	78 00                	js     18ca <__executable_start-0x80467ca>
    18ca:	01 9e 62 02 00 00    	add    %ebx,0x262(%esi)
    18d0:	02 91 0c 32 b4 02    	add    0x2b4320c(%ecx),%dl
    18d6:	00 00                	add    %al,(%eax)
    18d8:	66 0a 00             	data16 or (%eax),%al
    18db:	00 05 03 34 9f 04    	add    %al,0x49f3403
    18e1:	08 33                	or     %dh,(%ebx)
    18e3:	00 00                	add    %al,(%eax)
    18e5:	00 00                	add    %al,(%eax)
    18e7:	13 63 00             	adc    0x0(%ebx),%esp
    18ea:	01 a2 6c 01 00 00    	add    %esp,0x16c(%edx)
    18f0:	02 91 50 34 86 06    	add    0x6863450(%ecx),%dl
    18f6:	00 00                	add    %al,(%eax)
    18f8:	93                   	xchg   %eax,%ebx
    18f9:	89 04 08             	mov    %eax,(%eax,%ecx,1)
    18fc:	18 00                	sbb    %al,(%eax)
    18fe:	00 00                	add    %al,(%eax)
    1900:	01 b4 a5 07 00 00 35 	add    %esi,0x35000007(%ebp,%eiz,4)
    1907:	ad                   	lods   %ds:(%esi),%eax
    1908:	06                   	push   %es
    1909:	00 00                	add    %al,(%eax)
    190b:	35 a3 06 00 00       	xor    $0x6a3,%eax
    1910:	36 97                	ss xchg %eax,%edi
    1912:	06                   	push   %es
    1913:	00 00                	add    %al,(%eax)
    1915:	6f                   	outsl  %ds:(%esi),(%dx)
    1916:	07                   	pop    %es
    1917:	00 00                	add    %al,(%eax)
    1919:	33 18                	xor    (%eax),%ebx
    191b:	00 00                	add    %al,(%eax)
    191d:	00 37                	add    %dh,(%edi)
    191f:	b9 06 00 00 d2       	mov    $0xd2000006,%ecx
    1924:	89 04 08             	mov    %eax,(%eax,%ecx,1)
    1927:	38 ef                	cmp    %ch,%bh
    1929:	01 00                	add    %eax,(%eax)
    192b:	00 fe                	add    %bh,%dh
    192d:	89 04 08             	mov    %eax,(%eax,%ecx,1)
    1930:	30 00                	xor    %al,(%eax)
    1932:	00 00                	add    %al,(%eax)
    1934:	01 83 01 89 07 00    	add    %eax,0x78901(%ebx)
    193a:	00 36                	add    %dh,(%esi)
    193c:	ff 01                	incl   (%ecx)
    193e:	00 00                	add    %al,(%eax)
    1940:	2d 08 00 00 00       	sub    $0x8,%eax
    1945:	39 ef                	cmp    %ebp,%edi
    1947:	01 00                	add    %eax,(%eax)
    1949:	00 85 8a 04 08 48    	add    %al,0x4808048a(%ebp)
    194f:	00 00                	add    %al,(%eax)
    1951:	00 01                	add    %al,(%ecx)
    1953:	99                   	cltd   
    1954:	01 36                	add    %esi,(%esi)
    1956:	ff 01                	incl   (%ecx)
    1958:	00 00                	add    %al,(%eax)
    195a:	a3 08 00 00 00       	mov    %eax,0x8
    195f:	00 00                	add    %al,(%eax)
    1961:	3a 65 8b             	cmp    -0x75(%ebp),%ah
    1964:	04 08                	add    $0x8,%al
    1966:	57                   	push   %edi
    1967:	01 00                	add    %eax,(%eax)
    1969:	00 30                	add    %dh,(%eax)
    196b:	08 00                	or     %al,(%eax)
    196d:	00 29                	add    %ch,(%ecx)
    196f:	14 06                	adc    $0x6,%al
    1971:	00 00                	add    %al,(%eax)
    1973:	01 bd bb 00 00 00    	add    %edi,0xbb(%ebp)
    1979:	26 09 00             	or     %eax,%es:(%eax)
    197c:	00 22                	add    %ah,(%edx)
    197e:	5d                   	pop    %ebp
    197f:	8c 04 08             	mov    %es,(%eax,%ecx,1)
    1982:	67 0e                	addr16 push %cs
    1984:	00 00                	add    %al,(%eax)
    1986:	f4                   	hlt    
    1987:	07                   	pop    %es
    1988:	00 00                	add    %al,(%eax)
    198a:	1a 02                	sbb    (%edx),%al
    198c:	74 00                	je     198e <__executable_start-0x8046706>
    198e:	05 03 09 a0 04       	add    $0x4a00903,%eax
    1993:	08 1a                	or     %bl,(%edx)
    1995:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    1999:	08 dc                	or     %bl,%ah
    199b:	1a 02                	sbb    (%edx),%al
    199d:	74 08                	je     19a7 <__executable_start-0x80466ed>
    199f:	05 03 34 9f 04       	add    $0x49f3403,%eax
    19a4:	08 1a                	or     %bl,(%edx)
    19a6:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    19aa:	03 b4 a1 04 08 00 24 	add    0x24000804(%ecx,%eiz,4),%esi
    19b1:	bc 8c 04 08 e9       	mov    $0xe908048c,%esp
    19b6:	02 00                	add    (%eax),%al
    19b8:	00 1a                	add    %bl,(%edx)
    19ba:	01 51 01             	add    %edx,0x1(%ecx)
    19bd:	31 1a                	xor    %ebx,(%edx)
    19bf:	02 74 00 06          	add    0x6(%eax,%eax,1),%dh
    19c3:	91                   	xchg   %eax,%ecx
    19c4:	ac                   	lods   %ds:(%esi),%al
    19c5:	7f 06                	jg     19cd <__executable_start-0x80466c7>
    19c7:	4f                   	dec    %edi
    19c8:	25 1a 02 74 04       	and    $0x474021a,%eax
    19cd:	05 03 70 9f 04       	add    $0x49f7003,%eax
    19d2:	08 1a                	or     %bl,(%edx)
    19d4:	02 74 08 02          	add    0x2(%eax,%ecx,1),%dh
    19d8:	77 00                	ja     19da <__executable_start-0x80466ba>
    19da:	1a 02                	sbb    (%edx),%al
    19dc:	74 0c                	je     19ea <__executable_start-0x80466aa>
    19de:	03 91 08 06 1a 02    	add    0x21a0608(%ecx),%edx
    19e4:	74 10                	je     19f6 <__executable_start-0x804669e>
    19e6:	03 91 0c 06 00 00    	add    0x60c(%ecx),%edx
    19ec:	3a c1                	cmp    %cl,%al
    19ee:	8c 04 08             	mov    %es,(%eax,%ecx,1)
    19f1:	79 01                	jns    19f4 <__executable_start-0x80466a0>
    19f3:	00 00                	add    %al,(%eax)
    19f5:	ee                   	out    %al,(%dx)
    19f6:	08 00                	or     %al,(%eax)
    19f8:	00 29                	add    %ch,(%ecx)
    19fa:	14 06                	adc    $0x6,%al
    19fc:	00 00                	add    %al,(%eax)
    19fe:	01 ea                	add    %ebp,%edx
    1a00:	c6 00 00             	movb   $0x0,(%eax)
    1a03:	00 c6                	add    %al,%dh
    1a05:	09 00                	or     %eax,(%eax)
    1a07:	00 3b                	add    %bh,(%ebx)
    1a09:	62 00                	bound  %eax,(%eax)
    1a0b:	01 eb                	add    %ebp,%ebx
    1a0d:	b7 04                	mov    $0x4,%bh
    1a0f:	00 00                	add    %al,(%eax)
    1a11:	55                   	push   %ebp
    1a12:	0a 00                	or     (%eax),%al
    1a14:	00 22                	add    %ah,(%edx)
    1a16:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    1a17:	8d 04 08             	lea    (%eax,%ecx,1),%eax
    1a1a:	67 0e                	addr16 push %cs
    1a1c:	00 00                	add    %al,(%eax)
    1a1e:	8d 08                	lea    (%eax),%ecx
    1a20:	00 00                	add    %al,(%eax)
    1a22:	1a 02                	sbb    (%edx),%al
    1a24:	74 00                	je     1a26 <__executable_start-0x804666e>
    1a26:	05 03 09 a0 04       	add    $0x4a00903,%eax
    1a2b:	08 1a                	or     %bl,(%edx)
    1a2d:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    1a31:	0a 0b                	or     (%ebx),%cl
    1a33:	01 1a                	add    %ebx,(%edx)
    1a35:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    1a39:	03 34 9f             	add    (%edi,%ebx,4),%esi
    1a3c:	04 08                	add    $0x8,%al
    1a3e:	1a 02                	sbb    (%edx),%al
    1a40:	74 0c                	je     1a4e <__executable_start-0x8046646>
    1a42:	05 03 b4 a1 04       	add    $0x4a1b403,%eax
    1a47:	08 00                	or     %al,(%eax)
    1a49:	22 f9                	and    %cl,%bh
    1a4b:	8d 04 08             	lea    (%eax,%ecx,1),%eax
    1a4e:	67 0e                	addr16 push %cs
    1a50:	00 00                	add    %al,(%eax)
    1a52:	c1 08 00             	rorl   $0x0,(%eax)
    1a55:	00 1a                	add    %bl,(%edx)
    1a57:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    1a5b:	03 09                	add    (%ecx),%ecx
    1a5d:	a0 04 08 1a 02       	mov    0x21a0804,%al
    1a62:	74 04                	je     1a68 <__executable_start-0x804662c>
    1a64:	03 0a                	add    (%edx),%ecx
    1a66:	14 01                	adc    $0x1,%al
    1a68:	1a 02                	sbb    (%edx),%al
    1a6a:	74 08                	je     1a74 <__executable_start-0x8046620>
    1a6c:	05 03 34 9f 04       	add    $0x49f3403,%eax
    1a71:	08 1a                	or     %bl,(%edx)
    1a73:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    1a77:	03 b4 a1 04 08 00 24 	add    0x24000804(%ecx,%eiz,4),%esi
    1a7e:	3a 8e 04 08 e9 02    	cmp    0x2e90804(%esi),%cl
    1a84:	00 00                	add    %al,(%eax)
    1a86:	1a 01                	sbb    (%ecx),%al
    1a88:	51                   	push   %ecx
    1a89:	01 30                	add    %esi,(%eax)
    1a8b:	1a 02                	sbb    (%edx),%al
    1a8d:	74 00                	je     1a8f <__executable_start-0x8046605>
    1a8f:	01 30                	add    %esi,(%eax)
    1a91:	1a 02                	sbb    (%edx),%al
    1a93:	74 08                	je     1a9d <__executable_start-0x80465f7>
    1a95:	02 77 00             	add    0x0(%edi),%dh
    1a98:	1a 02                	sbb    (%edx),%al
    1a9a:	74 0c                	je     1aa8 <__executable_start-0x80465ec>
    1a9c:	03 91 08 06 1a 02    	add    0x21a0608(%ecx),%edx
    1aa2:	74 10                	je     1ab4 <__executable_start-0x80465e0>
    1aa4:	03 91 0c 06 00 00    	add    0x60c(%ecx),%edx
    1aaa:	3a 3f                	cmp    (%edi),%bh
    1aac:	8e 04 08             	mov    (%eax,%ecx,1),%es
    1aaf:	2d 00 00 00 35       	sub    $0x35000000,%eax
    1ab4:	09 00                	or     %eax,(%eax)
    1ab6:	00 1f                	add    %bl,(%edi)
    1ab8:	63 68 00             	arpl   %bp,0x0(%eax)
    1abb:	01 1e                	add    %ebx,(%esi)
    1abd:	01 4f 00             	add    %ecx,0x0(%edi)
    1ac0:	00 00                	add    %al,(%eax)
    1ac2:	02 91 4f 24 6a 8e    	add    -0x7195dbb1(%ecx),%dl
    1ac8:	04 08                	add    $0x8,%al
    1aca:	e4 04                	in     $0x4,%al
    1acc:	00 00                	add    %al,(%eax)
    1ace:	1a 01                	sbb    (%ecx),%al
    1ad0:	50                   	push   %eax
    1ad1:	02 91 4f 1a 01 52    	add    0x52011a4f(%ecx),%dl
    1ad7:	01 31                	add    %esi,(%ecx)
    1ad9:	1a 01                	sbb    (%ecx),%al
    1adb:	51                   	push   %ecx
    1adc:	02 91 50 1a 02 74    	add    0x74021a50(%ecx),%dl
    1ae2:	00 03                	add    %al,(%ebx)
    1ae4:	91                   	xchg   %eax,%ecx
    1ae5:	08 06                	or     %al,(%esi)
    1ae7:	1a 02                	sbb    (%edx),%al
    1ae9:	74 04                	je     1aef <__executable_start-0x80465a5>
    1aeb:	03 91 0c 06 00 00    	add    0x60c(%ecx),%edx
    1af1:	3a 71 8e             	cmp    -0x72(%ecx),%dh
    1af4:	04 08                	add    $0x8,%al
    1af6:	3a 00                	cmp    (%eax),%al
    1af8:	00 00                	add    %al,(%eax)
    1afa:	8c 09                	mov    %cs,(%ecx)
    1afc:	00 00                	add    %al,(%eax)
    1afe:	20 73 00             	and    %dh,0x0(%ebx)
    1b01:	01 26                	add    %esp,(%esi)
    1b03:	01 e4                	add    %esp,%esp
    1b05:	01 00                	add    %eax,(%eax)
    1b07:	00 95 0a 00 00 22    	add    %dl,0x2200000a(%ebp)
    1b0d:	8d 8e 04 08 88 0e    	lea    0xe880804(%esi),%ecx
    1b13:	00 00                	add    %al,(%eax)
    1b15:	65 09 00             	or     %eax,%gs:(%eax)
    1b18:	00 1a                	add    %bl,(%edx)
    1b1a:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    1b1e:	77 00                	ja     1b20 <__executable_start-0x8046574>
    1b20:	00 24 a9             	add    %ah,(%ecx,%ebp,4)
    1b23:	8e 04 08             	mov    (%eax,%ecx,1),%es
    1b26:	e4 04                	in     $0x4,%al
    1b28:	00 00                	add    %al,(%eax)
    1b2a:	1a 01                	sbb    (%ecx),%al
    1b2c:	50                   	push   %eax
    1b2d:	02 77 00             	add    0x0(%edi),%dh
    1b30:	1a 01                	sbb    (%ecx),%al
    1b32:	51                   	push   %ecx
    1b33:	02 91 50 1a 02 74    	add    0x74021a50(%ecx),%dl
    1b39:	00 03                	add    %al,(%ebx)
    1b3b:	91                   	xchg   %eax,%ecx
    1b3c:	08 06                	or     %al,(%esi)
    1b3e:	1a 02                	sbb    (%edx),%al
    1b40:	74 04                	je     1b46 <__executable_start-0x804654e>
    1b42:	03 91 0c 06 00 00    	add    0x60c(%ecx),%edx
    1b48:	3a b0 8e 04 08 46    	cmp    0x4608048e(%eax),%dh
    1b4e:	00 00                	add    %al,(%eax)
    1b50:	00 de                	add    %bl,%dh
    1b52:	09 00                	or     %eax,(%eax)
    1b54:	00 20                	add    %ah,(%eax)
    1b56:	70 00                	jo     1b58 <__executable_start-0x804653c>
    1b58:	01 35 01 62 02 00    	add    %esi,0x26201
    1b5e:	00 a8 0a 00 00 24    	add    %ch,0x2400000a(%eax)
    1b64:	f4                   	hlt    
    1b65:	8e 04 08             	mov    (%eax,%ecx,1),%es
    1b68:	e9 02 00 00 1a       	jmp    1a001b6f <explained.1502+0x11fb68bb>
    1b6d:	01 51 01             	add    %edx,0x1(%ecx)
    1b70:	30 1a                	xor    %bl,(%edx)
    1b72:	02 74 00 01          	add    0x1(%eax,%eax,1),%dh
    1b76:	30 1a                	xor    %bl,(%edx)
    1b78:	02 74 04 05          	add    0x5(%esp,%eax,1),%dh
    1b7c:	03 50 9f             	add    -0x61(%eax),%edx
    1b7f:	04 08                	add    $0x8,%al
    1b81:	1a 02                	sbb    (%edx),%al
    1b83:	74 08                	je     1b8d <__executable_start-0x8046507>
    1b85:	02 77 00             	add    0x0(%edi),%dh
    1b88:	1a 02                	sbb    (%edx),%al
    1b8a:	74 0c                	je     1b98 <__executable_start-0x80464fc>
    1b8c:	03 91 08 06 1a 02    	add    0x21a0608(%ecx),%edx
    1b92:	74 10                	je     1ba4 <__executable_start-0x80464f0>
    1b94:	03 91 0c 06 00 00    	add    0x60c(%ecx),%edx
    1b9a:	23 64 89 04          	and    0x4(%ecx,%ecx,4),%esp
    1b9e:	08 ef                	or     %ch,%bh
    1ba0:	09 00                	or     %eax,(%eax)
    1ba2:	00 1a                	add    %bl,(%edx)
    1ba4:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    1ba8:	73 00                	jae    1baa <__executable_start-0x80464ea>
    1baa:	00 23                	add    %ah,(%ebx)
    1bac:	8c 89 04 08 08 0a    	mov    %cs,0xa080804(%ecx)
    1bb2:	00 00                	add    %al,(%eax)
    1bb4:	1a 02                	sbb    (%edx),%al
    1bb6:	74 00                	je     1bb8 <__executable_start-0x80464dc>
    1bb8:	02 08                	add    (%eax),%cl
    1bba:	25 1a 02 74 04       	and    $0x474021a,%eax
    1bbf:	03 91 0c 06 00 22    	add    0x2200060c(%ecx),%edx
    1bc5:	1b 8f 04 08 08 06    	sbb    0x6080804(%edi),%ecx
    1bcb:	00 00                	add    %al,(%eax)
    1bcd:	30 0a                	xor    %cl,(%edx)
    1bcf:	00 00                	add    %al,(%eax)
    1bd1:	1a 02                	sbb    (%edx),%al
    1bd3:	74 00                	je     1bd5 <__executable_start-0x80464bf>
    1bd5:	05 03 18 a0 04       	add    $0x4a01803,%eax
    1bda:	08 1a                	or     %bl,(%edx)
    1bdc:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    1be0:	91                   	xchg   %eax,%ecx
    1be1:	08 06                	or     %al,(%esi)
    1be3:	1a 02                	sbb    (%edx),%al
    1be5:	74 08                	je     1bef <__executable_start-0x80464a5>
    1be7:	03 91 0c 06 00 24    	add    0x2400060c(%ecx),%edx
    1bed:	40                   	inc    %eax
    1bee:	8f 04 08             	popl   (%eax,%ecx,1)
    1bf1:	08 06                	or     %al,(%esi)
    1bf3:	00 00                	add    %al,(%eax)
    1bf5:	1a 02                	sbb    (%edx),%al
    1bf7:	74 00                	je     1bf9 <__executable_start-0x804649b>
    1bf9:	05 03 2e a0 04       	add    $0x4a02e03,%eax
    1bfe:	08 1a                	or     %bl,(%edx)
    1c00:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    1c04:	91                   	xchg   %eax,%ecx
    1c05:	08 06                	or     %al,(%esi)
    1c07:	1a 02                	sbb    (%edx),%al
    1c09:	74 08                	je     1c13 <__executable_start-0x8046481>
    1c0b:	03 91 0c 06 00 00    	add    0x60c(%ecx),%edx
    1c11:	00 25 4f 00 00 00    	add    %ah,0x4f
    1c17:	66 0a 00             	data16 or (%eax),%al
    1c1a:	00 26                	add    %ah,(%esi)
    1c1c:	dd 04 00             	fldl   (%eax,%eax,1)
    1c1f:	00 09                	add    %cl,(%ecx)
    1c21:	00 0d 56 0a 00 00    	add    %cl,0xa56
    1c27:	27                   	daa    
    1c28:	f0 05 00 00 01 1a    	lock add $0x1a010000,%eax
    1c2e:	33 00                	xor    (%eax),%eax
    1c30:	00 00                	add    %al,(%eax)
    1c32:	72 8f                	jb     1bc3 <__executable_start-0x80464d1>
    1c34:	04 08                	add    $0x8,%al
    1c36:	7d 00                	jge    1c38 <__executable_start-0x804645c>
    1c38:	00 00                	add    %al,(%eax)
    1c3a:	01 9c 25 0b 00 00 12 	add    %ebx,0x1200000b(%ebp,%eiz,1)
    1c41:	15 03 00 00 01       	adc    $0x1000003,%eax
    1c46:	1a 00                	sbb    (%eax),%al
    1c48:	01 00                	add    %eax,(%eax)
    1c4a:	00 02                	add    %al,(%edx)
    1c4c:	91                   	xchg   %eax,%ecx
    1c4d:	00 12                	add    %dl,(%edx)
    1c4f:	e4 04                	in     $0x4,%al
    1c51:	00 00                	add    %al,(%eax)
    1c53:	01 1a                	add    %ebx,(%edx)
    1c55:	56                   	push   %esi
    1c56:	00 00                	add    %al,(%eax)
    1c58:	00 02                	add    %al,(%edx)
    1c5a:	91                   	xchg   %eax,%ecx
    1c5b:	04 12                	add    $0x12,%al
    1c5d:	45                   	inc    %ebp
    1c5e:	04 00                	add    $0x0,%al
    1c60:	00 01                	add    %al,(%ecx)
    1c62:	1a e4                	sbb    %ah,%ah
    1c64:	01 00                	add    %eax,(%eax)
    1c66:	00 02                	add    %al,(%edx)
    1c68:	91                   	xchg   %eax,%ecx
    1c69:	08 12                	or     %dl,(%edx)
    1c6b:	30 04 00             	xor    %al,(%eax,%eax,1)
    1c6e:	00 01                	add    %al,(%ecx)
    1c70:	1a 3a                	sbb    (%edx),%bh
    1c72:	00 00                	add    %al,(%eax)
    1c74:	00 02                	add    %al,(%edx)
    1c76:	91                   	xchg   %eax,%ecx
    1c77:	0c 13                	or     $0x13,%al
    1c79:	61                   	popa   
    1c7a:	75 78                	jne    1cf4 <__executable_start-0x80463a0>
    1c7c:	00 01                	add    %al,(%ecx)
    1c7e:	1d d1 00 00 00       	sbb    $0xd1,%eax
    1c83:	02 91 64 22 b9 8f    	add    -0x7046dd9c(%ecx),%dl
    1c89:	04 08                	add    $0x8,%al
    1c8b:	c8 06 00 00          	enter  $0x6,$0x0
    1c8f:	f9                   	stc    
    1c90:	0a 00                	or     (%eax),%al
    1c92:	00 1a                	add    %bl,(%edx)
    1c94:	02 74 00 03          	add    0x3(%eax,%eax,1),%dh
    1c98:	91                   	xchg   %eax,%ecx
    1c99:	08 06                	or     %al,(%esi)
    1c9b:	1a 02                	sbb    (%edx),%al
    1c9d:	74 04                	je     1ca3 <__executable_start-0x80463f1>
    1c9f:	03 91 0c 06 1a 02    	add    0x21a060c(%ecx),%edx
    1ca5:	74 08                	je     1caf <__executable_start-0x80463e5>
    1ca7:	05 03 f0 84 04       	add    $0x484f003,%eax
    1cac:	08 1a                	or     %bl,(%edx)
    1cae:	02 74 0c 02          	add    0x2(%esp,%ecx,1),%dh
    1cb2:	91                   	xchg   %eax,%ecx
    1cb3:	64 00 24 e6          	add    %ah,%fs:(%esi,%eiz,8)
    1cb7:	8f 04 08             	popl   (%eax,%ecx,1)
    1cba:	c8 06 00 00          	enter  $0x6,$0x0
    1cbe:	1a 02                	sbb    (%edx),%al
    1cc0:	74 00                	je     1cc2 <__executable_start-0x80463d2>
    1cc2:	03 91 08 06 1a 02    	add    0x21a0608(%ecx),%edx
    1cc8:	74 04                	je     1cce <__executable_start-0x80463c6>
    1cca:	03 91 0c 06 1a 02    	add    0x21a060c(%ecx),%edx
    1cd0:	74 08                	je     1cda <__executable_start-0x80463ba>
    1cd2:	05 03 f0 84 04       	add    $0x484f003,%eax
    1cd7:	08 1a                	or     %bl,(%edx)
    1cd9:	02 74 0c 02          	add    0x2(%esp,%ecx,1),%dh
    1cdd:	91                   	xchg   %eax,%ecx
    1cde:	64 00 00             	add    %al,%fs:(%eax)
    1ce1:	27                   	daa    
    1ce2:	f1                   	icebp  
    1ce3:	05 00 00 01 3e       	add    $0x3e010000,%eax
    1ce8:	33 00                	xor    (%eax),%eax
    1cea:	00 00                	add    %al,(%eax)
    1cec:	ef                   	out    %eax,(%dx)
    1ced:	8f 04 08             	popl   (%eax,%ecx,1)
    1cf0:	2b 00                	sub    (%eax),%eax
    1cf2:	00 00                	add    %al,(%eax)
    1cf4:	01 9c af 0b 00 00 12 	add    %ebx,0x1200000b(%edi,%ebp,4)
    1cfb:	15 03 00 00 01       	adc    $0x1000003,%eax
    1d00:	3e 00 01             	add    %al,%ds:(%ecx)
    1d03:	00 00                	add    %al,(%eax)
    1d05:	02 91 00 12 e4 04    	add    0x4e41200(%ecx),%dl
    1d0b:	00 00                	add    %al,(%eax)
    1d0d:	01 3e                	add    %edi,(%esi)
    1d0f:	56                   	push   %esi
    1d10:	00 00                	add    %al,(%eax)
    1d12:	00 02                	add    %al,(%edx)
    1d14:	91                   	xchg   %eax,%ecx
    1d15:	04 12                	add    $0x12,%al
    1d17:	45                   	inc    %ebp
    1d18:	04 00                	add    $0x0,%al
    1d1a:	00 01                	add    %al,(%ecx)
    1d1c:	3e e4 01             	ds in  $0x1,%al
    1d1f:	00 00                	add    %al,(%eax)
    1d21:	02 91 08 28 29 30    	add    0x30292808(%ecx),%dl
    1d27:	04 00                	add    $0x0,%al
    1d29:	00 01                	add    %al,(%ecx)
    1d2b:	40                   	inc    %eax
    1d2c:	3a 00                	cmp    (%eax),%al
    1d2e:	00 00                	add    %al,(%eax)
    1d30:	bb 0a 00 00 2a       	mov    $0x2a00000a,%ebx
    1d35:	47                   	inc    %edi
    1d36:	03 00                	add    (%eax),%eax
    1d38:	00 01                	add    %al,(%ecx)
    1d3a:	41                   	inc    %ecx
    1d3b:	33 00                	xor    (%eax),%eax
    1d3d:	00 00                	add    %al,(%eax)
    1d3f:	01 50 24             	add    %edx,0x24(%eax)
    1d42:	16                   	push   %ss
    1d43:	90                   	nop
    1d44:	04 08                	add    $0x8,%al
    1d46:	6b 0a 00             	imul   $0x0,(%edx),%ecx
    1d49:	00 1a                	add    %bl,(%edx)
    1d4b:	02 74 00 03          	add    0x3(%eax,%eax,1),%dh
    1d4f:	91                   	xchg   %eax,%ecx
    1d50:	00 06                	add    %al,(%esi)
    1d52:	1a 02                	sbb    (%edx),%al
    1d54:	74 04                	je     1d5a <__executable_start-0x804633a>
    1d56:	03 91 04 06 1a 02    	add    0x21a0604(%ecx),%edx
    1d5c:	74 08                	je     1d66 <__executable_start-0x804632e>
    1d5e:	03 91 08 06 1a 02    	add    0x21a0608(%ecx),%edx
    1d64:	74 0c                	je     1d72 <__executable_start-0x8046322>
    1d66:	02 91 0c 00 00 2b    	add    0x2b00000c(%ecx),%dl
    1d6c:	fa                   	cli    
    1d6d:	05 00 00 01 51       	add    $0x51010000,%eax
    1d72:	02 1a                	add    (%edx),%bl
    1d74:	90                   	nop
    1d75:	04 08                	add    $0x8,%al
    1d77:	9f                   	lahf   
    1d78:	01 00                	add    %eax,(%eax)
    1d7a:	00 01                	add    %al,(%ecx)
    1d7c:	9c                   	pushf  
    1d7d:	62 0d 00 00 18 6f    	bound  %ecx,0x6f180000
    1d83:	66 73 00             	data16 jae 1d86 <__executable_start-0x804630e>
    1d86:	01 51 02             	add    %edx,0x2(%ecx)
    1d89:	b0 00                	mov    $0x0,%al
    1d8b:	00 00                	add    %al,(%eax)
    1d8d:	02 91 00 1e 03 05    	add    0x5031e00(%ecx),%dl
    1d93:	00 00                	add    %al,(%eax)
    1d95:	01 51 02             	add    %edx,0x2(%ecx)
    1d98:	62 0d 00 00 02 91    	bound  %ecx,0x91020000
    1d9e:	04 17                	add    $0x17,%al
    1da0:	a9 05 00 00 01       	test   $0x1000005,%eax
    1da5:	51                   	push   %ecx
    1da6:	02 56 00             	add    0x0(%esi),%dl
    1da9:	00 00                	add    %al,(%eax)
    1dab:	e7 0a                	out    %eax,$0xa
    1dad:	00 00                	add    %al,(%eax)
    1daf:	1e                   	push   %ds
    1db0:	c9                   	leave  
    1db1:	05 00 00 01 51       	add    $0x51010000,%eax
    1db6:	02 b0 04 00 00 02    	add    0x2000004(%eax),%dh
    1dbc:	91                   	xchg   %eax,%ecx
    1dbd:	0c 1f                	or     $0x1f,%al
    1dbf:	62 75 66             	bound  %esi,0x66(%ebp)
    1dc2:	00 01                	add    %al,(%ecx)
    1dc4:	53                   	push   %ebx
    1dc5:	02 69 0d             	add    0xd(%ecx),%ch
    1dc8:	00 00                	add    %al,(%eax)
    1dca:	02 91 04 3c e0 05    	add    0x5e03c04(%ecx),%dl
    1dd0:	00 00                	add    %al,(%eax)
    1dd2:	01 54 02 74          	add    %edx,0x74(%edx,%eax,1)
    1dd6:	0d 00 00 10 3d       	or     $0x3d100000,%eax
    1ddb:	35 90 04 08 72       	xor    $0x72080490,%eax
    1de0:	01 00                	add    %eax,(%eax)
    1de2:	00 21                	add    %ah,(%ecx)
    1de4:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    1de5:	00 00                	add    %al,(%eax)
    1de7:	00 01                	add    %al,(%ecx)
    1de9:	58                   	pop    %eax
    1dea:	02 56 00             	add    0x0(%esi),%dl
    1ded:	00 00                	add    %al,(%eax)
    1def:	18 0b                	sbb    %cl,(%ebx)
    1df1:	00 00                	add    %al,(%eax)
    1df3:	20 65 6e             	and    %ah,0x6e(%ebp)
    1df6:	64 00 01             	add    %al,%fs:(%ecx)
    1df9:	58                   	pop    %eax
    1dfa:	02 56 00             	add    0x0(%esi),%dl
    1dfd:	00 00                	add    %al,(%eax)
    1dff:	77 0b                	ja     1e0c <__executable_start-0x8046288>
    1e01:	00 00                	add    %al,(%eax)
    1e03:	20 6e 00             	and    %ch,0x0(%esi)
    1e06:	01 58 02             	add    %ebx,0x2(%eax)
    1e09:	56                   	push   %esi
    1e0a:	00 00                	add    %al,(%eax)
    1e0c:	00 c3                	add    %al,%bl
    1e0e:	0b 00                	or     (%eax),%eax
    1e10:	00 20                	add    %ah,(%eax)
    1e12:	69 00 01 59 02 56    	imul   $0x56025901,(%eax),%eax
    1e18:	00 00                	add    %al,(%eax)
    1e1a:	00 e2                	add    %ah,%dl
    1e1c:	0b 00                	or     (%eax),%eax
    1e1e:	00 3e                	add    %bh,(%esi)
    1e20:	09 02                	or     %eax,(%edx)
    1e22:	00 00                	add    %al,(%eax)
    1e24:	48                   	dec    %eax
    1e25:	91                   	xchg   %eax,%ecx
    1e26:	04 08                	add    $0x8,%al
    1e28:	03 00                	add    (%eax),%eax
    1e2a:	00 00                	add    %al,(%eax)
    1e2c:	01 72 02             	add    %esi,0x2(%edx)
    1e2f:	81 0c 00 00 36 19 02 	orl    $0x2193600,(%eax,%eax,1)
    1e36:	00 00                	add    %al,(%eax)
    1e38:	5c                   	pop    %esp
    1e39:	0c 00                	or     $0x0,%al
    1e3b:	00 00                	add    %al,(%eax)
    1e3d:	22 7c 90 04          	and    0x4(%eax,%edx,4),%bh
    1e41:	08 aa 05 00 00 99    	or     %ch,-0x66fffffb(%edx)
    1e47:	0c 00                	or     $0x0,%al
    1e49:	00 1a                	add    %bl,(%edx)
    1e4b:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    1e4f:	03 45 a0             	add    -0x60(%ebp),%eax
    1e52:	04 08                	add    $0x8,%al
    1e54:	00 22                	add    %ah,(%edx)
    1e56:	91                   	xchg   %eax,%ecx
    1e57:	90                   	nop
    1e58:	04 08                	add    $0x8,%al
    1e5a:	aa                   	stos   %al,%es:(%edi)
    1e5b:	05 00 00 b1 0c       	add    $0xcb10000,%eax
    1e60:	00 00                	add    %al,(%eax)
    1e62:	1a 02                	sbb    (%edx),%al
    1e64:	74 00                	je     1e66 <__executable_start-0x804622e>
    1e66:	05 03 4d a0 04       	add    $0x4a04d03,%eax
    1e6b:	08 00                	or     %al,(%eax)
    1e6d:	22 d7                	and    %bh,%dl
    1e6f:	90                   	nop
    1e70:	04 08                	add    $0x8,%al
    1e72:	aa                   	stos   %al,%es:(%edi)
    1e73:	05 00 00 db 0c       	add    $0xcdb0000,%eax
    1e78:	00 00                	add    %al,(%eax)
    1e7a:	1a 02                	sbb    (%edx),%al
    1e7c:	74 00                	je     1e7e <__executable_start-0x8046216>
    1e7e:	05 03 51 a0 04       	add    $0x4a05103,%eax
    1e83:	08 1a                	or     %bl,(%edx)
    1e85:	02 74 08 0d          	add    0xd(%eax,%ecx,1),%dh
    1e89:	08 20                	or     %ah,(%eax)
    1e8b:	08 2d 73 00 37 2e    	or     %ch,0x2e370073
    1e91:	28 01                	sub    %al,(%ecx)
    1e93:	00 16                	add    %dl,(%esi)
    1e95:	13 00                	adc    (%eax),%eax
    1e97:	22 fc                	and    %ah,%bh
    1e99:	90                   	nop
    1e9a:	04 08                	add    $0x8,%al
    1e9c:	aa                   	stos   %al,%es:(%edi)
    1e9d:	05 00 00 f3 0c       	add    $0xcf30000,%eax
    1ea2:	00 00                	add    %al,(%eax)
    1ea4:	1a 02                	sbb    (%edx),%al
    1ea6:	74 00                	je     1ea8 <__executable_start-0x80461ec>
    1ea8:	05 03 4d a0 04       	add    $0x4a04d03,%eax
    1ead:	08 00                	or     %al,(%eax)
    1eaf:	22 10                	and    (%eax),%dl
    1eb1:	91                   	xchg   %eax,%ecx
    1eb2:	04 08                	add    $0x8,%al
    1eb4:	a2 0e 00 00 08       	mov    %al,0x800000e
    1eb9:	0d 00 00 1a 02       	or     $0x21a0000,%eax
    1ebe:	74 00                	je     1ec0 <__executable_start-0x80461d4>
    1ec0:	02 08                	add    (%eax),%cl
    1ec2:	7c 00                	jl     1ec4 <__executable_start-0x80461d0>
    1ec4:	22 25 91 04 08 a2    	and    0xa2080491,%ah
    1eca:	0e                   	push   %cs
    1ecb:	00 00                	add    %al,(%eax)
    1ecd:	1d 0d 00 00 1a       	sbb    $0x1a00000d,%eax
    1ed2:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    1ed6:	08 20                	or     %ah,(%eax)
    1ed8:	00 3f                	add    %bh,(%edi)
    1eda:	5f                   	pop    %edi
    1edb:	91                   	xchg   %eax,%ecx
    1edc:	04 08                	add    $0x8,%al
    1ede:	a2 0e 00 00 22       	mov    %al,0x2200000e
    1ee3:	7b 91                	jnp    1e76 <__executable_start-0x804621e>
    1ee5:	04 08                	add    $0x8,%al
    1ee7:	a2 0e 00 00 3b       	mov    %al,0x3b00000e
    1eec:	0d 00 00 1a 02       	or     $0x21a0000,%eax
    1ef1:	74 00                	je     1ef3 <__executable_start-0x80461a1>
    1ef3:	02 08                	add    (%eax),%cl
    1ef5:	20 00                	and    %al,(%eax)
    1ef7:	22 8f 91 04 08 a2    	and    -0x5df7fb6f(%edi),%cl
    1efd:	0e                   	push   %cs
    1efe:	00 00                	add    %al,(%eax)
    1f00:	50                   	push   %eax
    1f01:	0d 00 00 1a 02       	or     $0x21a0000,%eax
    1f06:	74 00                	je     1f08 <__executable_start-0x804618c>
    1f08:	02 08                	add    (%eax),%cl
    1f0a:	7c 00                	jl     1f0c <__executable_start-0x8046188>
    1f0c:	24 9b                	and    $0x9b,%al
    1f0e:	91                   	xchg   %eax,%ecx
    1f0f:	04 08                	add    $0x8,%al
    1f11:	a2 0e 00 00 1a       	mov    %al,0x1a00000e
    1f16:	02 74 00 01          	add    0x1(%eax,%eax,1),%dh
    1f1a:	3a 00                	cmp    (%eax),%al
    1f1c:	00 00                	add    %al,(%eax)
    1f1e:	09 04 68             	or     %eax,(%eax,%ebp,2)
    1f21:	0d 00 00 40 09       	or     $0x9400000,%eax
    1f26:	04 6f                	add    $0x6f,%al
    1f28:	0d 00 00 0d 81       	or     $0x810d0000,%eax
    1f2d:	00 00                	add    %al,(%eax)
    1f2f:	00 0d 56 00 00 00    	add    %cl,0x56
    1f35:	2b 94 05 00 00 01 82 	sub    -0x7dff0000(%ebp,%eax,1),%edx
    1f3c:	02 b9 91 04 08 8a    	add    -0x75f7fb6f(%ecx),%bh
    1f42:	00 00                	add    %al,(%eax)
    1f44:	00 01                	add    %al,(%ecx)
    1f46:	9c                   	pushf  
    1f47:	f3 0d 00 00 17 a9    	repz or $0xa9170000,%eax
    1f4d:	05 00 00 01 82       	add    $0x82010000,%eax
    1f52:	02 a5 00 00 00 a4    	add    -0x5c000000(%ebp),%ah
    1f58:	0c 00                	or     $0x0,%al
    1f5a:	00 41 60             	add    %al,0x60(%ecx)
    1f5d:	00 00                	add    %al,(%eax)
    1f5f:	00 de                	add    %bl,%dh
    1f61:	0d 00 00 42 2b       	or     $0x2b420000,%eax
    1f66:	06                   	push   %es
    1f67:	00 00                	add    %al,(%eax)
    1f69:	01 88 02 f3 0d 00    	add    %ecx,0xdf302(%eax)
    1f6f:	00 05 03 9c b2 04    	add    %al,0x4b29c03
    1f75:	08 20                	or     %ah,(%eax)
    1f77:	66 70 00             	data16 jo 1f7a <__executable_start-0x804611a>
    1f7a:	01 89 02 03 0e 00    	add    %ecx,0xe0302(%ecx)
    1f80:	00 f4                	add    %dh,%ah
    1f82:	0c 00                	or     $0x0,%al
    1f84:	00 24 3d 92 04 08 aa 	add    %ah,-0x55f7fb6e(,%edi,1)
    1f8b:	05 00 00 1a 02       	add    $0x21a0000,%eax
    1f90:	74 00                	je     1f92 <__executable_start-0x8046102>
    1f92:	05 03 61 a0 04       	add    $0x4a06103,%eax
    1f97:	08 00                	or     %al,(%eax)
    1f99:	00 24 fd 91 04 08 aa 	add    %ah,-0x55f7fb6f(,%edi,8)
    1fa0:	05 00 00 1a 02       	add    $0x21a0000,%eax
    1fa5:	74 00                	je     1fa7 <__executable_start-0x80460ed>
    1fa7:	05 03 5a a0 04       	add    $0x4a05a03,%eax
    1fac:	08 00                	or     %al,(%eax)
    1fae:	00 25 e4 01 00 00    	add    %ah,0x1e4
    1fb4:	03 0e                	add    (%esi),%ecx
    1fb6:	00 00                	add    %al,(%eax)
    1fb8:	26 dd 04 00          	fldl   %es:(%eax,%eax,1)
    1fbc:	00 05 00 09 04 e4    	add    %al,0xe4040900
    1fc2:	01 00                	add    %eax,(%eax)
    1fc4:	00 2a                	add    %ch,(%edx)
    1fc6:	4a                   	dec    %edx
    1fc7:	05 00 00 01 8a       	add    $0x8a010000,%eax
    1fcc:	bd 04 00 00 05       	mov    $0x5000004,%ebp
    1fd1:	03 70 9f             	add    -0x61(%eax),%esi
    1fd4:	04 08                	add    $0x8,%al
    1fd6:	2a cf                	sub    %bh,%cl
    1fd8:	05 00 00 01 8b       	add    $0x8b010000,%eax
    1fdd:	bd 04 00 00 05       	mov    $0x5000004,%ebp
    1fe2:	03 60 9f             	add    -0x61(%eax),%esp
    1fe5:	04 08                	add    $0x8,%al
    1fe7:	2a e9                	sub    %cl,%ch
    1fe9:	05 00 00 01 8c       	add    $0x8c010000,%eax
    1fee:	bd 04 00 00 05       	mov    $0x5000004,%ebp
    1ff3:	03 50 9f             	add    -0x61(%eax),%edx
    1ff6:	04 08                	add    $0x8,%al
    1ff8:	2a 8d 05 00 00 01    	sub    0x1000005(%ebp),%cl
    1ffe:	8d bd 04 00 00 05    	lea    0x5000004(%ebp),%edi
    2004:	03 40 9f             	add    -0x61(%eax),%eax
    2007:	04 08                	add    $0x8,%al
    2009:	43                   	inc    %ebx
    200a:	69 04 00 00 06 15 33 	imul   $0x33150600,(%eax,%eax,1),%eax
    2011:	00 00                	add    %al,(%eax)
    2013:	00 67 0e             	add    %ah,0xe(%edi)
    2016:	00 00                	add    %al,(%eax)
    2018:	1c e4                	sbb    $0xe4,%al
    201a:	01 00                	add    %eax,(%eax)
    201c:	00 1c 00             	add    %bl,(%eax,%eax,1)
    201f:	01 00                	add    %eax,(%eax)
    2021:	00 00                	add    %al,(%eax)
    2023:	44                   	inc    %esp
    2024:	e9 01 00 00 09       	jmp    900202a <explained.1502+0xfb6d76>
    2029:	10 88 0e 00 00 1c    	adc    %cl,0x1c00000e(%eax)
    202f:	e4 01                	in     $0x1,%al
    2031:	00 00                	add    %al,(%eax)
    2033:	1c 33                	sbb    $0x33,%al
    2035:	00 00                	add    %al,(%eax)
    2037:	00 1c e4             	add    %bl,(%esp,%eiz,8)
    203a:	01 00                	add    %eax,(%eax)
    203c:	00 1c e4             	add    %bl,(%esp,%eiz,8)
    203f:	01 00                	add    %eax,(%eax)
    2041:	00 28                	add    %ch,(%eax)
    2043:	00 43 ce             	add    %al,-0x32(%ebx)
    2046:	04 00                	add    $0x0,%al
    2048:	00 07                	add    %al,(%edi)
    204a:	1a 56 00             	sbb    0x0(%esi),%dl
    204d:	00 00                	add    %al,(%eax)
    204f:	a2 0e 00 00 1c       	mov    %al,0x1c00000e
    2054:	e4 01                	in     $0x1,%al
    2056:	00 00                	add    %al,(%eax)
    2058:	1c 56                	sbb    $0x56,%al
    205a:	00 00                	add    %al,(%eax)
    205c:	00 00                	add    %al,(%eax)
    205e:	45                   	inc    %ebp
    205f:	1e                   	push   %ds
    2060:	04 00                	add    $0x0,%al
    2062:	00 08                	add    %cl,(%eax)
    2064:	00 28                	add    %ch,(%eax)
    2066:	04 00                	add    $0x0,%al
    2068:	00 33                	add    %dh,(%ebx)
    206a:	00 00                	add    %al,(%eax)
    206c:	00 1c 33             	add    %bl,(%ebx,%esi,1)
    206f:	00 00                	add    %al,(%eax)
    2071:	00 00                	add    %al,(%eax)
    2073:	00 ae 0c 00 00 04    	add    %ch,0x400000c(%esi)
    2079:	00 2c 0a             	add    %ch,(%edx,%ecx,1)
    207c:	00 00                	add    %al,(%eax)
    207e:	04 01                	add    $0x1,%al
    2080:	52                   	push   %edx
    2081:	00 00                	add    %al,(%eax)
    2083:	00 01                	add    %al,(%ecx)
    2085:	37                   	aaa    
    2086:	07                   	pop    %es
    2087:	00 00                	add    %al,(%eax)
    2089:	00 00                	add    %al,(%eax)
    208b:	00 00                	add    %al,(%eax)
    208d:	50                   	push   %eax
    208e:	92                   	xchg   %eax,%edx
    208f:	04 08                	add    $0x8,%al
    2091:	b2 08                	mov    $0x8,%dl
    2093:	00 00                	add    %al,(%eax)
    2095:	4b                   	dec    %ebx
    2096:	06                   	push   %es
    2097:	00 00                	add    %al,(%eax)
    2099:	02 04 05 69 6e 74 00 	add    0x746e69(,%eax,1),%al
    20a0:	03 f6                	add    %esi,%esi
    20a2:	04 00                	add    $0x0,%al
    20a4:	00 02                	add    %al,(%edx)
    20a6:	0a 37                	or     (%edi),%dh
    20a8:	00 00                	add    %al,(%eax)
    20aa:	00 04 04             	add    %al,(%esp,%eax,1)
    20ad:	07                   	pop    %es
    20ae:	7a 02                	jp     20b2 <__executable_start-0x8045fe2>
    20b0:	00 00                	add    %al,(%eax)
    20b2:	05 83 07 00 00       	add    $0x783,%eax
    20b7:	01 07                	add    %eax,(%edi)
    20b9:	24 01                	and    $0x1,%al
    20bb:	00 00                	add    %al,(%eax)
    20bd:	50                   	push   %eax
    20be:	92                   	xchg   %eax,%edx
    20bf:	04 08                	add    $0x8,%al
    20c1:	9d                   	popf   
    20c2:	00 00                	add    %al,(%eax)
    20c4:	00 01                	add    %al,(%ecx)
    20c6:	9c                   	pushf  
    20c7:	24 01                	and    $0x1,%al
    20c9:	00 00                	add    %al,(%eax)
    20cb:	06                   	push   %es
    20cc:	47                   	inc    %edi
    20cd:	07                   	pop    %es
    20ce:	00 00                	add    %al,(%eax)
    20d0:	01 07                	add    %eax,(%edi)
    20d2:	24 01                	and    $0x1,%al
    20d4:	00 00                	add    %al,(%eax)
    20d6:	02 91 00 06 ef 06    	add    0x6ef0600(%ecx),%dl
    20dc:	00 00                	add    %al,(%eax)
    20de:	01 07                	add    %eax,(%edi)
    20e0:	26 01 00             	add    %eax,%es:(%eax)
    20e3:	00 02                	add    %al,(%edx)
    20e5:	91                   	xchg   %eax,%ecx
    20e6:	04 07                	add    $0x7,%al
    20e8:	a9 05 00 00 01       	test   $0x1000005,%eax
    20ed:	07                   	pop    %es
    20ee:	2c 00                	sub    $0x0,%al
    20f0:	00 00                	add    %al,(%eax)
    20f2:	17                   	pop    %ss
    20f3:	0d 00 00 08 64       	or     $0x64080000,%eax
    20f8:	73 74                	jae    216e <__executable_start-0x8045f26>
    20fa:	00 01                	add    %al,(%ecx)
    20fc:	09 2d 01 00 00 78    	or     %ebp,0x78000001
    2102:	0d 00 00 08 73       	or     $0x73080000,%eax
    2107:	72 63                	jb     216c <__executable_start-0x8045f28>
    2109:	00 01                	add    %al,(%ecx)
    210b:	0a 3a                	or     (%edx),%bh
    210d:	01 00                	add    %eax,(%eax)
    210f:	00 d0                	add    %dl,%al
    2111:	0d 00 00 09 b4       	or     $0xb4090000,%eax
    2116:	02 00                	add    (%eax),%al
    2118:	00 63 01             	add    %ah,0x1(%ebx)
    211b:	00 00                	add    %al,(%eax)
    211d:	05 03 cb 9f 04       	add    $0x49fcb03,%eax
    2122:	08 0a                	or     %cl,(%edx)
    2124:	9a 92 04 08 77 0c 00 	lcall  $0xc,$0x77080492
    212b:	00 eb                	add    %ch,%bl
    212d:	00 00                	add    %al,(%eax)
    212f:	00 0b                	add    %cl,(%ebx)
    2131:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    2135:	03 e1                	add    %ecx,%esp
    2137:	a0 04 08 0b 02       	mov    0x20b0804,%al
    213c:	74 04                	je     2142 <__executable_start-0x8045f52>
    213e:	01 3c 0b             	add    %edi,(%ebx,%ecx,1)
    2141:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    2145:	03 cb                	add    %ebx,%ecx
    2147:	9f                   	lahf   
    2148:	04 08                	add    $0x8,%al
    214a:	0b 02                	or     (%edx),%eax
    214c:	74 0c                	je     215a <__executable_start-0x8045f3a>
    214e:	05 03 ca a0 04       	add    $0x4a0ca03,%eax
    2153:	08 0b                	or     %cl,(%ebx)
    2155:	02 74 10 05          	add    0x5(%eax,%edx,1),%dh
    2159:	03 b1 a0 04 08 00    	add    0x804a0(%ecx),%esi
    215f:	0c d9                	or     $0xd9,%al
    2161:	92                   	xchg   %eax,%edx
    2162:	04 08                	add    $0x8,%al
    2164:	77 0c                	ja     2172 <__executable_start-0x8045f22>
    2166:	00 00                	add    %al,(%eax)
    2168:	0b 02                	or     (%edx),%eax
    216a:	74 00                	je     216c <__executable_start-0x8045f28>
    216c:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2171:	08 0b                	or     %cl,(%ebx)
    2173:	02 74 04 01          	add    0x1(%esp,%eax,1),%dh
    2177:	3d 0b 02 74 08       	cmp    $0x874020b,%eax
    217c:	05 03 cb 9f 04       	add    $0x49fcb03,%eax
    2181:	08 0b                	or     %cl,(%ebx)
    2183:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2187:	03 ca                	add    %edx,%ecx
    2189:	a0 04 08 0b 02       	mov    0x20b0804,%al
    218e:	74 10                	je     21a0 <__executable_start-0x8045ef4>
    2190:	05 03 f1 a0 04       	add    $0x4a0f103,%eax
    2195:	08 00                	or     %al,(%eax)
    2197:	00 0d 04 0e 04 2c    	add    %cl,0x2c040e04
    219d:	01 00                	add    %eax,(%eax)
    219f:	00 0f                	add    %cl,(%edi)
    21a1:	0e                   	push   %cs
    21a2:	04 33                	add    $0x33,%al
    21a4:	01 00                	add    %eax,(%eax)
    21a6:	00 04 01             	add    %al,(%ecx,%eax,1)
    21a9:	08 62 02             	or     %ah,0x2(%edx)
    21ac:	00 00                	add    %al,(%eax)
    21ae:	0e                   	push   %cs
    21af:	04 40                	add    $0x40,%al
    21b1:	01 00                	add    %eax,(%eax)
    21b3:	00 10                	add    %dl,(%eax)
    21b5:	33 01                	xor    (%ecx),%eax
    21b7:	00 00                	add    %al,(%eax)
    21b9:	11 5c 01 00          	adc    %ebx,0x0(%ecx,%eax,1)
    21bd:	00 55 01             	add    %dl,0x1(%ebp)
    21c0:	00 00                	add    %al,(%eax)
    21c2:	12 55 01             	adc    0x1(%ebp),%dl
    21c5:	00 00                	add    %al,(%eax)
    21c7:	06                   	push   %es
    21c8:	00 04 04             	add    %al,(%esp,%eax,1)
    21cb:	07                   	pop    %es
    21cc:	44                   	inc    %esp
    21cd:	00 00                	add    %al,(%eax)
    21cf:	00 04 01             	add    %al,(%ecx,%eax,1)
    21d2:	06                   	push   %es
    21d3:	6b 02 00             	imul   $0x0,(%edx),%eax
    21d6:	00 10                	add    %dl,(%eax)
    21d8:	45                   	inc    %ebp
    21d9:	01 00                	add    %eax,(%eax)
    21db:	00 05 c1 06 00 00    	add    %al,0x6c1
    21e1:	01 18                	add    %ebx,(%eax)
    21e3:	24 01                	and    $0x1,%al
    21e5:	00 00                	add    %al,(%eax)
    21e7:	ed                   	in     (%dx),%eax
    21e8:	92                   	xchg   %eax,%edx
    21e9:	04 08                	add    $0x8,%al
    21eb:	d0 00                	rolb   (%eax)
    21ed:	00 00                	add    %al,(%eax)
    21ef:	01 9c 4e 02 00 00 06 	add    %ebx,0x6000002(%esi,%ecx,2)
    21f6:	47                   	inc    %edi
    21f7:	07                   	pop    %es
    21f8:	00 00                	add    %al,(%eax)
    21fa:	01 18                	add    %ebx,(%eax)
    21fc:	24 01                	and    $0x1,%al
    21fe:	00 00                	add    %al,(%eax)
    2200:	02 91 00 06 ef 06    	add    0x6ef0600(%ecx),%dl
    2206:	00 00                	add    %al,(%eax)
    2208:	01 18                	add    %ebx,(%eax)
    220a:	26 01 00             	add    %eax,%es:(%eax)
    220d:	00 02                	add    %al,(%edx)
    220f:	91                   	xchg   %eax,%ecx
    2210:	04 07                	add    $0x7,%al
    2212:	a9 05 00 00 01       	test   $0x1000005,%eax
    2217:	18 2c 00             	sbb    %ch,(%eax,%eax,1)
    221a:	00 00                	add    %al,(%eax)
    221c:	05 0e 00 00 08       	add    $0x800000e,%eax
    2221:	64 73 74             	fs jae 2298 <__executable_start-0x8045dfc>
    2224:	00 01                	add    %al,(%ecx)
    2226:	1a 2d 01 00 00 7c    	sbb    0x7c000001,%ch
    222c:	0e                   	push   %cs
    222d:	00 00                	add    %al,(%eax)
    222f:	08 73 72             	or     %dh,0x72(%ebx)
    2232:	63 00                	arpl   %ax,(%eax)
    2234:	01 1b                	add    %ebx,(%ebx)
    2236:	3a 01                	cmp    (%ecx),%al
    2238:	00 00                	add    %al,(%eax)
    223a:	f9                   	stc    
    223b:	0e                   	push   %cs
    223c:	00 00                	add    %al,(%eax)
    223e:	09 b4 02 00 00 5e 02 	or     %esi,0x25e0000(%edx,%eax,1)
    2245:	00 00                	add    %al,(%eax)
    2247:	05 03 c3 9f 04       	add    $0x49fc303,%eax
    224c:	08 0a                	or     %cl,(%edx)
    224e:	38 93 04 08 77 0c    	cmp    %dl,0xc770804(%ebx)
    2254:	00 00                	add    %al,(%eax)
    2256:	15 02 00 00 0b       	adc    $0xb000002,%eax
    225b:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    225f:	03 e1                	add    %ecx,%esp
    2261:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2266:	74 04                	je     226c <__executable_start-0x8045e28>
    2268:	01 4d 0b             	add    %ecx,0xb(%ebp)
    226b:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    226f:	03 c3                	add    %ebx,%eax
    2271:	9f                   	lahf   
    2272:	04 08                	add    $0x8,%al
    2274:	0b 02                	or     (%edx),%eax
    2276:	74 0c                	je     2284 <__executable_start-0x8045e10>
    2278:	05 03 ca a0 04       	add    $0x4a0ca03,%eax
    227d:	08 0b                	or     %cl,(%ebx)
    227f:	02 74 10 05          	add    0x5(%eax,%edx,1),%dh
    2283:	03 b1 a0 04 08 00    	add    0x804a0(%ecx),%esi
    2289:	0c 6c                	or     $0x6c,%al
    228b:	93                   	xchg   %eax,%ebx
    228c:	04 08                	add    $0x8,%al
    228e:	77 0c                	ja     229c <__executable_start-0x8045df8>
    2290:	00 00                	add    %al,(%eax)
    2292:	0b 02                	or     (%edx),%eax
    2294:	74 00                	je     2296 <__executable_start-0x8045dfe>
    2296:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    229b:	08 0b                	or     %cl,(%ebx)
    229d:	02 74 04 01          	add    0x1(%esp,%eax,1),%dh
    22a1:	4e                   	dec    %esi
    22a2:	0b 02                	or     (%edx),%eax
    22a4:	74 08                	je     22ae <__executable_start-0x8045de6>
    22a6:	05 03 c3 9f 04       	add    $0x49fc303,%eax
    22ab:	08 0b                	or     %cl,(%ebx)
    22ad:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    22b1:	03 ca                	add    %edx,%ecx
    22b3:	a0 04 08 0b 02       	mov    0x20b0804,%al
    22b8:	74 10                	je     22ca <__executable_start-0x8045dca>
    22ba:	05 03 f1 a0 04       	add    $0x4a0f103,%eax
    22bf:	08 00                	or     %al,(%eax)
    22c1:	00 11                	add    %dl,(%ecx)
    22c3:	5c                   	pop    %esp
    22c4:	01 00                	add    %eax,(%eax)
    22c6:	00 5e 02             	add    %bl,0x2(%esi)
    22c9:	00 00                	add    %al,(%eax)
    22cb:	12 55 01             	adc    0x1(%ebp),%dl
    22ce:	00 00                	add    %al,(%eax)
    22d0:	07                   	pop    %es
    22d1:	00 10                	add    %dl,(%eax)
    22d3:	4e                   	dec    %esi
    22d4:	02 00                	add    (%eax),%al
    22d6:	00 05 e0 06 00 00    	add    %al,0x6e0
    22dc:	01 35 25 00 00 00    	add    %esi,0x25
    22e2:	bd 93 04 08 ca       	mov    $0xca080493,%ebp
    22e7:	00 00                	add    %al,(%eax)
    22e9:	00 01                	add    %al,(%ecx)
    22eb:	9c                   	pushf  
    22ec:	45                   	inc    %ebp
    22ed:	03 00                	add    (%eax),%eax
    22ef:	00 13                	add    %dl,(%ebx)
    22f1:	61                   	popa   
    22f2:	5f                   	pop    %edi
    22f3:	00 01                	add    %al,(%ecx)
    22f5:	35 26 01 00 00       	xor    $0x126,%eax
    22fa:	02 91 00 13 62 5f    	add    0x5f621300(%ecx),%dl
    2300:	00 01                	add    %al,(%ecx)
    2302:	35 26 01 00 00       	xor    $0x126,%eax
    2307:	02 91 04 07 a9 05    	add    0x5a90704(%ecx),%dl
    230d:	00 00                	add    %al,(%eax)
    230f:	01 35 2c 00 00 00    	add    %esi,0x2c
    2315:	56                   	push   %esi
    2316:	0f 00 00             	sldt   (%eax)
    2319:	08 61 00             	or     %ah,0x0(%ecx)
    231c:	01 37                	add    %esi,(%edi)
    231e:	3a 01                	cmp    (%ecx),%al
    2320:	00 00                	add    %al,(%eax)
    2322:	cf                   	iret   
    2323:	0f 00 00             	sldt   (%eax)
    2326:	08 62 00             	or     %ah,0x0(%edx)
    2329:	01 38                	add    %edi,(%eax)
    232b:	3a 01                	cmp    (%ecx),%al
    232d:	00 00                	add    %al,(%eax)
    232f:	21 10                	and    %edx,(%eax)
    2331:	00 00                	add    %al,(%eax)
    2333:	09 b4 02 00 00 45 03 	or     %esi,0x3450000(%edx,%eax,1)
    233a:	00 00                	add    %al,(%eax)
    233c:	05 03 bc 9f 04       	add    $0x49fbc03,%eax
    2341:	08 0a                	or     %cl,(%edx)
    2343:	08 94 04 08 77 0c 00 	or     %dl,0xc7708(%esp,%eax,1)
    234a:	00 0b                	add    %cl,(%ebx)
    234c:	03 00                	add    (%eax),%eax
    234e:	00 0b                	add    %cl,(%ebx)
    2350:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    2354:	03 e1                	add    %ecx,%esp
    2356:	a0 04 08 0b 02       	mov    0x20b0804,%al
    235b:	74 04                	je     2361 <__executable_start-0x8045d33>
    235d:	02 08                	add    (%eax),%cl
    235f:	3a 0b                	cmp    (%ebx),%cl
    2361:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    2365:	03 bc 9f 04 08 0b 02 	add    0x20b0804(%edi,%ebx,4),%edi
    236c:	74 0c                	je     237a <__executable_start-0x8045d1a>
    236e:	05 03 ca a0 04       	add    $0x4a0ca03,%eax
    2373:	08 0b                	or     %cl,(%ebx)
    2375:	02 74 10 05          	add    0x5(%eax,%edx,1),%dh
    2379:	03 0a                	add    (%edx),%ecx
    237b:	a1 04 08 00 0c       	mov    0xc000804,%eax
    2380:	54                   	push   %esp
    2381:	94                   	xchg   %eax,%esp
    2382:	04 08                	add    $0x8,%al
    2384:	77 0c                	ja     2392 <__executable_start-0x8045d02>
    2386:	00 00                	add    %al,(%eax)
    2388:	0b 02                	or     (%edx),%eax
    238a:	74 00                	je     238c <__executable_start-0x8045d08>
    238c:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2391:	08 0b                	or     %cl,(%ebx)
    2393:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    2397:	08 3b                	or     %bh,(%ebx)
    2399:	0b 02                	or     (%edx),%eax
    239b:	74 08                	je     23a5 <__executable_start-0x8045cef>
    239d:	05 03 bc 9f 04       	add    $0x49fbc03,%eax
    23a2:	08 0b                	or     %cl,(%ebx)
    23a4:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    23a8:	03 ca                	add    %edx,%ecx
    23aa:	a0 04 08 0b 02       	mov    0x20b0804,%al
    23af:	74 10                	je     23c1 <__executable_start-0x8045cd3>
    23b1:	05 03 21 a1 04       	add    $0x4a12103,%eax
    23b6:	08 00                	or     %al,(%eax)
    23b8:	00 10                	add    %dl,(%eax)
    23ba:	45                   	inc    %ebp
    23bb:	01 00                	add    %eax,(%eax)
    23bd:	00 05 7c 07 00 00    	add    %al,0x77c
    23c3:	01 49 25             	add    %ecx,0x25(%ecx)
    23c6:	00 00                	add    %al,(%eax)
    23c8:	00 87 94 04 08 a4    	add    %al,-0x5bf7fb6c(%edi)
    23ce:	00 00                	add    %al,(%eax)
    23d0:	00 01                	add    %al,(%ecx)
    23d2:	9c                   	pushf  
    23d3:	1d 04 00 00 13       	sbb    $0x13000004,%eax
    23d8:	61                   	popa   
    23d9:	5f                   	pop    %edi
    23da:	00 01                	add    %al,(%ecx)
    23dc:	49                   	dec    %ecx
    23dd:	1d 04 00 00 02       	sbb    $0x2000004,%eax
    23e2:	91                   	xchg   %eax,%ecx
    23e3:	00 13                	add    %dl,(%ebx)
    23e5:	62 5f 00             	bound  %ebx,0x0(%edi)
    23e8:	01 49 1d             	add    %ecx,0x1d(%ecx)
    23eb:	04 00                	add    $0x0,%al
    23ed:	00 02                	add    %al,(%edx)
    23ef:	91                   	xchg   %eax,%ecx
    23f0:	04 08                	add    $0x8,%al
    23f2:	61                   	popa   
    23f3:	00 01                	add    %al,(%ecx)
    23f5:	4b                   	dec    %ebx
    23f6:	3a 01                	cmp    (%ecx),%al
    23f8:	00 00                	add    %al,(%eax)
    23fa:	73 10                	jae    240c <__executable_start-0x8045c88>
    23fc:	00 00                	add    %al,(%eax)
    23fe:	08 62 00             	or     %ah,0x0(%edx)
    2401:	01 4c 3a 01          	add    %ecx,0x1(%edx,%edi,1)
    2405:	00 00                	add    %al,(%eax)
    2407:	b4 10                	mov    $0x10,%ah
    2409:	00 00                	add    %al,(%eax)
    240b:	09 b4 02 00 00 28 04 	or     %esi,0x4280000(%edx,%eax,1)
    2412:	00 00                	add    %al,(%eax)
    2414:	05 03 b5 9f 04       	add    $0x49fb503,%eax
    2419:	08 0a                	or     %cl,(%edx)
    241b:	c2 94 04             	ret    $0x494
    241e:	08 77 0c             	or     %dh,0xc(%edi)
    2421:	00 00                	add    %al,(%eax)
    2423:	e3 03                	jecxz  2428 <__executable_start-0x8045c6c>
    2425:	00 00                	add    %al,(%eax)
    2427:	0b 02                	or     (%edx),%eax
    2429:	74 00                	je     242b <__executable_start-0x8045c69>
    242b:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2430:	08 0b                	or     %cl,(%ebx)
    2432:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    2436:	08 4e 0b             	or     %cl,0xb(%esi)
    2439:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    243d:	03 b5 9f 04 08 0b    	add    0xb08049f(%ebp),%esi
    2443:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2447:	03 ca                	add    %edx,%ecx
    2449:	a0 04 08 0b 02       	mov    0x20b0804,%al
    244e:	74 10                	je     2460 <__executable_start-0x8045c34>
    2450:	05 03 38 a1 04       	add    $0x4a13803,%eax
    2455:	08 00                	or     %al,(%eax)
    2457:	0c 00                	or     $0x0,%al
    2459:	95                   	xchg   %eax,%ebp
    245a:	04 08                	add    $0x8,%al
    245c:	77 0c                	ja     246a <__executable_start-0x8045c2a>
    245e:	00 00                	add    %al,(%eax)
    2460:	0b 02                	or     (%edx),%eax
    2462:	74 00                	je     2464 <__executable_start-0x8045c30>
    2464:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2469:	08 0b                	or     %cl,(%ebx)
    246b:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    246f:	08 4f 0b             	or     %cl,0xb(%edi)
    2472:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    2476:	03 b5 9f 04 08 0b    	add    0xb08049f(%ebp),%esi
    247c:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2480:	03 ca                	add    %edx,%ecx
    2482:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2487:	74 10                	je     2499 <__executable_start-0x8045bfb>
    2489:	05 03 42 a1 04       	add    $0x4a14203,%eax
    248e:	08 00                	or     %al,(%eax)
    2490:	00 0e                	add    %cl,(%esi)
    2492:	04 23                	add    $0x23,%al
    2494:	04 00                	add    $0x0,%al
    2496:	00 10                	add    %dl,(%eax)
    2498:	5c                   	pop    %esp
    2499:	01 00                	add    %eax,(%eax)
    249b:	00 10                	add    %dl,(%eax)
    249d:	45                   	inc    %ebp
    249e:	01 00                	add    %eax,(%eax)
    24a0:	00 05 29 07 00 00    	add    %al,0x729
    24a6:	01 5e 24             	add    %ebx,0x24(%esi)
    24a9:	01 00                	add    %eax,(%eax)
    24ab:	00 2b                	add    %ch,(%ebx)
    24ad:	95                   	xchg   %eax,%ebp
    24ae:	04 08                	add    $0x8,%al
    24b0:	7b 00                	jnp    24b2 <__executable_start-0x8045be2>
    24b2:	00 00                	add    %al,(%eax)
    24b4:	01 9c d7 04 00 00 06 	add    %ebx,0x6000004(%edi,%edx,8)
    24bb:	4c                   	dec    %esp
    24bc:	07                   	pop    %es
    24bd:	00 00                	add    %al,(%eax)
    24bf:	01 5e 26             	add    %ebx,0x26(%esi)
    24c2:	01 00                	add    %eax,(%eax)
    24c4:	00 02                	add    %al,(%edx)
    24c6:	91                   	xchg   %eax,%ecx
    24c7:	00 13                	add    %dl,(%ebx)
    24c9:	63 68 5f             	arpl   %bp,0x5f(%eax)
    24cc:	00 01                	add    %al,(%ecx)
    24ce:	5e                   	pop    %esi
    24cf:	25 00 00 00 02       	and    $0x2000000,%eax
    24d4:	91                   	xchg   %eax,%ecx
    24d5:	04 07                	add    $0x7,%al
    24d7:	a9 05 00 00 01       	test   $0x1000005,%eax
    24dc:	5e                   	pop    %esi
    24dd:	2c 00                	sub    $0x0,%al
    24df:	00 00                	add    %al,(%eax)
    24e1:	f5                   	cmc    
    24e2:	10 00                	adc    %al,(%eax)
    24e4:	00 14 fb             	add    %dl,(%ebx,%edi,8)
    24e7:	06                   	push   %es
    24e8:	00 00                	add    %al,(%eax)
    24ea:	01 60 3a             	add    %esp,0x3a(%eax)
    24ed:	01 00                	add    %eax,(%eax)
    24ef:	00 6e 11             	add    %ch,0x11(%esi)
    24f2:	00 00                	add    %al,(%eax)
    24f4:	08 63 68             	or     %ah,0x68(%ebx)
    24f7:	00 01                	add    %al,(%ecx)
    24f9:	61                   	popa   
    24fa:	33 01                	xor    (%ecx),%eax
    24fc:	00 00                	add    %al,(%eax)
    24fe:	a3 11 00 00 09       	mov    %eax,0x9000011
    2503:	b4 02                	mov    $0x2,%ah
    2505:	00 00                	add    %al,(%eax)
    2507:	d7                   	xlat   %ds:(%ebx)
    2508:	04 00                	add    $0x0,%al
    250a:	00 05 03 ae 9f 04    	add    %al,0x49fae03
    2510:	08 0c 86             	or     %cl,(%esi,%eax,4)
    2513:	95                   	xchg   %eax,%ebp
    2514:	04 08                	add    $0x8,%al
    2516:	77 0c                	ja     2524 <__executable_start-0x8045b70>
    2518:	00 00                	add    %al,(%eax)
    251a:	0b 02                	or     (%edx),%eax
    251c:	74 00                	je     251e <__executable_start-0x8045b76>
    251e:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2523:	08 0b                	or     %cl,(%ebx)
    2525:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    2529:	08 63 0b             	or     %ah,0xb(%ebx)
    252c:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    2530:	03 ae 9f 04 08 0b    	add    0xb08049f(%esi),%ebp
    2536:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    253a:	03 ca                	add    %edx,%ecx
    253c:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2541:	74 10                	je     2553 <__executable_start-0x8045b41>
    2543:	05 03 4c a1 04       	add    $0x4a14c03,%eax
    2548:	08 00                	or     %al,(%eax)
    254a:	00 10                	add    %dl,(%eax)
    254c:	45                   	inc    %ebp
    254d:	01 00                	add    %eax,(%eax)
    254f:	00 05 d2 06 00 00    	add    %al,0x6d2
    2555:	01 71 67             	add    %esi,0x67(%ecx)
    2558:	05 00 00 a6 95       	add    $0x95a60000,%eax
    255d:	04 08                	add    $0x8,%al
    255f:	6e                   	outsb  %ds:(%esi),(%dx)
    2560:	00 00                	add    %al,(%eax)
    2562:	00 01                	add    %al,(%ecx)
    2564:	9c                   	pushf  
    2565:	67 05 00 00 07 77    	addr16 add $0x77070000,%eax
    256b:	06                   	push   %es
    256c:	00 00                	add    %al,(%eax)
    256e:	01 71 1d             	add    %esi,0x1d(%ecx)
    2571:	04 00                	add    $0x0,%al
    2573:	00 e3                	add    %ah,%bl
    2575:	11 00                	adc    %eax,(%eax)
    2577:	00 13                	add    %dl,(%ebx)
    2579:	63 5f 00             	arpl   %bx,0x0(%edi)
    257c:	01 71 25             	add    %esi,0x25(%ecx)
    257f:	00 00                	add    %al,(%eax)
    2581:	00 02                	add    %al,(%edx)
    2583:	91                   	xchg   %eax,%ecx
    2584:	04 08                	add    $0x8,%al
    2586:	63 00                	arpl   %ax,(%eax)
    2588:	01 73 5c             	add    %esi,0x5c(%ebx)
    258b:	01 00                	add    %eax,(%eax)
    258d:	00 30                	add    %dh,(%eax)
    258f:	12 00                	adc    (%eax),%al
    2591:	00 09                	add    %cl,(%ecx)
    2593:	b4 02                	mov    $0x2,%ah
    2595:	00 00                	add    %al,(%eax)
    2597:	6d                   	insl   (%dx),%es:(%edi)
    2598:	05 00 00 05 03       	add    $0x3050000,%eax
    259d:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    259e:	9f                   	lahf   
    259f:	04 08                	add    $0x8,%al
    25a1:	0c ed                	or     $0xed,%al
    25a3:	95                   	xchg   %eax,%ebp
    25a4:	04 08                	add    $0x8,%al
    25a6:	77 0c                	ja     25b4 <__executable_start-0x8045ae0>
    25a8:	00 00                	add    %al,(%eax)
    25aa:	0b 02                	or     (%edx),%eax
    25ac:	74 00                	je     25ae <__executable_start-0x8045ae6>
    25ae:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    25b3:	08 0b                	or     %cl,(%ebx)
    25b5:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    25b9:	08 75 0b             	or     %dh,0xb(%ebp)
    25bc:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    25c0:	03 a7 9f 04 08 0b    	add    0xb08049f(%edi),%esp
    25c6:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    25ca:	03 ca                	add    %edx,%ecx
    25cc:	a0 04 08 0b 02       	mov    0x20b0804,%al
    25d1:	74 10                	je     25e3 <__executable_start-0x8045ab1>
    25d3:	05 03 67 a1 04       	add    $0x4a16703,%eax
    25d8:	08 00                	or     %al,(%eax)
    25da:	00 0e                	add    %cl,(%esi)
    25dc:	04 5c                	add    $0x5c,%al
    25de:	01 00                	add    %eax,(%eax)
    25e0:	00 10                	add    %dl,(%eax)
    25e2:	45                   	inc    %ebp
    25e3:	01 00                	add    %eax,(%eax)
    25e5:	00 05 53 07 00 00    	add    %al,0x753
    25eb:	01 83 2c 00 00 00    	add    %eax,0x2c(%ebx)
    25f1:	14 96                	adc    $0x96,%al
    25f3:	04 08                	add    $0x8,%al
    25f5:	48                   	dec    %eax
    25f6:	00 00                	add    %al,(%eax)
    25f8:	00 01                	add    %al,(%ecx)
    25fa:	9c                   	pushf  
    25fb:	c8 05 00 00          	enter  $0x5,$0x0
    25ff:	06                   	push   %es
    2600:	77 06                	ja     2608 <__executable_start-0x8045a8c>
    2602:	00 00                	add    %al,(%eax)
    2604:	01 83 1d 04 00 00    	add    %eax,0x41d(%ebx)
    260a:	02 91 00 06 14 07    	add    0x7140600(%ecx),%dl
    2610:	00 00                	add    %al,(%eax)
    2612:	01 83 1d 04 00 00    	add    %eax,0x41d(%ebx)
    2618:	02 91 04 14 a1 06    	add    0x6a11404(%ecx),%dl
    261e:	00 00                	add    %al,(%eax)
    2620:	01 85 2c 00 00 00    	add    %eax,0x2c(%ebp)
    2626:	7b 12                	jnp    263a <__executable_start-0x8045a5a>
    2628:	00 00                	add    %al,(%eax)
    262a:	0c 3d                	or     $0x3d,%al
    262c:	96                   	xchg   %eax,%esi
    262d:	04 08                	add    $0x8,%al
    262f:	dc 04 00             	faddl  (%eax,%eax,1)
    2632:	00 0b                	add    %cl,(%ebx)
    2634:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    2638:	77 00                	ja     263a <__executable_start-0x8045a5a>
    263a:	00 00                	add    %al,(%eax)
    263c:	05 21 07 00 00       	add    $0x721,%eax
    2641:	01 91 67 05 00 00    	add    %edx,0x567(%ecx)
    2647:	5c                   	pop    %esp
    2648:	96                   	xchg   %eax,%esi
    2649:	04 08                	add    $0x8,%al
    264b:	42                   	inc    %edx
    264c:	00 00                	add    %al,(%eax)
    264e:	00 01                	add    %al,(%ecx)
    2650:	9c                   	pushf  
    2651:	10 06                	adc    %al,(%esi)
    2653:	00 00                	add    %al,(%eax)
    2655:	07                   	pop    %es
    2656:	77 06                	ja     265e <__executable_start-0x8045a36>
    2658:	00 00                	add    %al,(%eax)
    265a:	01 91 1d 04 00 00    	add    %edx,0x41d(%ecx)
    2660:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
    2661:	12 00                	adc    (%eax),%al
    2663:	00 06                	add    %al,(%esi)
    2665:	14 07                	adc    $0x7,%al
    2667:	00 00                	add    %al,(%eax)
    2669:	01 91 1d 04 00 00    	add    %edx,0x41d(%ecx)
    266f:	02 91 04 0c 7f 96    	add    -0x6980f3fc(%ecx),%dl
    2675:	04 08                	add    $0x8,%al
    2677:	dc 04 00             	faddl  (%eax,%eax,1)
    267a:	00 0b                	add    %cl,(%ebx)
    267c:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    2680:	76 00                	jbe    2682 <__executable_start-0x8045a12>
    2682:	00 00                	add    %al,(%eax)
    2684:	05 c4 07 00 00       	add    $0x7c4,%eax
    2689:	01 9c 67 05 00 00 9e 	add    %ebx,-0x61fffffb(%edi,%eiz,2)
    2690:	96                   	xchg   %eax,%esi
    2691:	04 08                	add    $0x8,%al
    2693:	2e 00 00             	add    %al,%cs:(%eax)
    2696:	00 01                	add    %al,(%ecx)
    2698:	9c                   	pushf  
    2699:	5f                   	pop    %edi
    269a:	06                   	push   %es
    269b:	00 00                	add    %al,(%eax)
    269d:	07                   	pop    %es
    269e:	77 06                	ja     26a6 <__executable_start-0x80459ee>
    26a0:	00 00                	add    %al,(%eax)
    26a2:	01 9c 1d 04 00 00 c5 	add    %ebx,-0x3afffffc(%ebp,%ebx,1)
    26a9:	12 00                	adc    (%eax),%al
    26ab:	00 13                	add    %dl,(%ebx)
    26ad:	63 5f 00             	arpl   %bx,0x0(%edi)
    26b0:	01 9c 25 00 00 00 02 	add    %ebx,0x2000000(%ebp,%eiz,1)
    26b7:	91                   	xchg   %eax,%ecx
    26b8:	04 15                	add    $0x15,%al
    26ba:	63 00                	arpl   %ax,(%eax)
    26bc:	01 9e 5c 01 00 00    	add    %ebx,0x15c(%esi)
    26c2:	02 91 04 08 70 00    	add    0x700804(%ecx),%dl
    26c8:	01 9f 1d 04 00 00    	add    %ebx,0x41d(%edi)
    26ce:	e4 12                	in     $0x12,%al
    26d0:	00 00                	add    %al,(%eax)
    26d2:	00 05 8a 07 00 00    	add    %al,0x78a
    26d8:	01 aa 2c 00 00 00    	add    %ebp,0x2c(%edx)
    26de:	cc                   	int3   
    26df:	96                   	xchg   %eax,%esi
    26e0:	04 08                	add    $0x8,%al
    26e2:	48                   	dec    %eax
    26e3:	00 00                	add    %al,(%eax)
    26e5:	00 01                	add    %al,(%ecx)
    26e7:	9c                   	pushf  
    26e8:	b5 06                	mov    $0x6,%ch
    26ea:	00 00                	add    %al,(%eax)
    26ec:	06                   	push   %es
    26ed:	77 06                	ja     26f5 <__executable_start-0x804599f>
    26ef:	00 00                	add    %al,(%eax)
    26f1:	01 aa 1d 04 00 00    	add    %ebp,0x41d(%edx)
    26f7:	02 91 00 06 5b 07    	add    0x75b0600(%ecx),%dl
    26fd:	00 00                	add    %al,(%eax)
    26ff:	01 aa 1d 04 00 00    	add    %ebp,0x41d(%edx)
    2705:	02 91 04 14 a1 06    	add    0x6a11404(%ecx),%dl
    270b:	00 00                	add    %al,(%eax)
    270d:	01 ac 2c 00 00 00 0f 	add    %ebp,0xf000000(%esp,%ebp,1)
    2714:	13 00                	adc    (%eax),%eax
    2716:	00 0c f5 96 04 08 dc 	add    %cl,-0x23f7fb6a(,%esi,8)
    271d:	04 00                	add    $0x0,%al
    271f:	00 0b                	add    %cl,(%ebx)
    2721:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    2725:	77 00                	ja     2727 <__executable_start-0x804596d>
    2727:	00 00                	add    %al,(%eax)
    2729:	05 c9 06 00 00       	add    $0x6c9,%eax
    272e:	01 eb                	add    %ebp,%ebx
    2730:	67 05 00 00 14 97    	addr16 add $0x97140000,%eax
    2736:	04 08                	add    $0x8,%al
    2738:	1d 01 00 00 01       	sbb    $0x1000001,%eax
    273d:	9c                   	pushf  
    273e:	05 08 00 00 16       	add    $0x16000008,%eax
    2743:	73 00                	jae    2745 <__executable_start-0x804594f>
    2745:	01 eb                	add    %ebp,%ebx
    2747:	67 05 00 00 3a 13    	addr16 add $0x133a0000,%eax
    274d:	00 00                	add    %al,(%eax)
    274f:	06                   	push   %es
    2750:	09 07                	or     %eax,(%edi)
    2752:	00 00                	add    %al,(%eax)
    2754:	01 eb                	add    %ebp,%ebx
    2756:	1d 04 00 00 02       	sbb    $0x2000004,%eax
    275b:	91                   	xchg   %eax,%ecx
    275c:	04 06                	add    $0x6,%al
    275e:	60                   	pusha  
    275f:	07                   	pop    %es
    2760:	00 00                	add    %al,(%eax)
    2762:	01 eb                	add    %ebp,%ebx
    2764:	05 08 00 00 02       	add    $0x2000008,%eax
    2769:	91                   	xchg   %eax,%ecx
    276a:	08 17                	or     %dl,(%edi)
    276c:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    276d:	07                   	pop    %es
    276e:	00 00                	add    %al,(%eax)
    2770:	01 ed                	add    %ebp,%ebp
    2772:	67 05 00 00 09 b4    	addr16 add $0xb4090000,%eax
    2778:	02 00                	add    (%eax),%al
    277a:	00 1b                	add    %bl,(%ebx)
    277c:	08 00                	or     %al,(%eax)
    277e:	00 05 03 9e 9f 04    	add    %al,0x49f9e03
    2784:	08 0a                	or     %cl,(%edx)
    2786:	53                   	push   %ebx
    2787:	97                   	xchg   %eax,%edi
    2788:	04 08                	add    $0x8,%al
    278a:	77 0c                	ja     2798 <__executable_start-0x80458fc>
    278c:	00 00                	add    %al,(%eax)
    278e:	4e                   	dec    %esi
    278f:	07                   	pop    %es
    2790:	00 00                	add    %al,(%eax)
    2792:	0b 02                	or     (%edx),%eax
    2794:	74 00                	je     2796 <__executable_start-0x80458fe>
    2796:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    279b:	08 0b                	or     %cl,(%ebx)
    279d:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    27a1:	08 ef                	or     %ch,%bh
    27a3:	0b 02                	or     (%edx),%eax
    27a5:	74 08                	je     27af <__executable_start-0x80458e5>
    27a7:	05 03 9e 9f 04       	add    $0x49f9e03,%eax
    27ac:	08 0b                	or     %cl,(%ebx)
    27ae:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    27b2:	03 ca                	add    %edx,%ecx
    27b4:	a0 04 08 0b 02       	mov    0x20b0804,%al
    27b9:	74 10                	je     27cb <__executable_start-0x80458c9>
    27bb:	05 03 76 a1 04       	add    $0x4a17603,%eax
    27c0:	08 00                	or     %al,(%eax)
    27c2:	0a 86 97 04 08 77    	or     0x77080497(%esi),%al
    27c8:	0c 00                	or     $0x0,%al
    27ca:	00 8b 07 00 00 0b    	add    %cl,0xb000007(%ebx)
    27d0:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    27d4:	03 e1                	add    %ecx,%esp
    27d6:	a0 04 08 0b 02       	mov    0x20b0804,%al
    27db:	74 04                	je     27e1 <__executable_start-0x80458b3>
    27dd:	02 08                	add    (%eax),%cl
    27df:	f0 0b 02             	lock or (%edx),%eax
    27e2:	74 08                	je     27ec <__executable_start-0x80458a8>
    27e4:	05 03 9e 9f 04       	add    $0x49f9e03,%eax
    27e9:	08 0b                	or     %cl,(%ebx)
    27eb:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    27ef:	03 ca                	add    %edx,%ecx
    27f1:	a0 04 08 0b 02       	mov    0x20b0804,%al
    27f6:	74 10                	je     2808 <__executable_start-0x804588c>
    27f8:	05 03 89 a1 04       	add    $0x4a18903,%eax
    27fd:	08 00                	or     %al,(%eax)
    27ff:	0a c0                	or     %al,%al
    2801:	97                   	xchg   %eax,%edi
    2802:	04 08                	add    $0x8,%al
    2804:	77 0c                	ja     2812 <__executable_start-0x8045882>
    2806:	00 00                	add    %al,(%eax)
    2808:	c8 07 00 00          	enter  $0x7,$0x0
    280c:	0b 02                	or     (%edx),%eax
    280e:	74 00                	je     2810 <__executable_start-0x8045884>
    2810:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2815:	08 0b                	or     %cl,(%ebx)
    2817:	02 74 04 02          	add    0x2(%esp,%eax,1),%dh
    281b:	08 f6                	or     %dh,%dh
    281d:	0b 02                	or     (%edx),%eax
    281f:	74 08                	je     2829 <__executable_start-0x804586b>
    2821:	05 03 9e 9f 04       	add    $0x49f9e03,%eax
    2826:	08 0b                	or     %cl,(%ebx)
    2828:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    282c:	03 ca                	add    %edx,%ecx
    282e:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2833:	74 10                	je     2845 <__executable_start-0x804584f>
    2835:	05 03 7f a1 04       	add    $0x4a17f03,%eax
    283a:	08 00                	or     %al,(%eax)
    283c:	0a ea                	or     %dl,%ch
    283e:	97                   	xchg   %eax,%edi
    283f:	04 08                	add    $0x8,%al
    2841:	dc 04 00             	faddl  (%eax,%eax,1)
    2844:	00 e8                	add    %ch,%al
    2846:	07                   	pop    %es
    2847:	00 00                	add    %al,(%eax)
    2849:	0b 02                	or     (%edx),%eax
    284b:	74 00                	je     284d <__executable_start-0x8045847>
    284d:	02 76 00             	add    0x0(%esi),%dh
    2850:	0b 02                	or     (%edx),%eax
    2852:	74 04                	je     2858 <__executable_start-0x804583c>
    2854:	06                   	push   %es
    2855:	77 00                	ja     2857 <__executable_start-0x804583d>
    2857:	48                   	dec    %eax
    2858:	24 48                	and    $0x48,%al
    285a:	26 00 0c 07          	add    %cl,%es:(%edi,%eax,1)
    285e:	98                   	cwtl   
    285f:	04 08                	add    $0x8,%al
    2861:	dc 04 00             	faddl  (%eax,%eax,1)
    2864:	00 0b                	add    %cl,(%ebx)
    2866:	02 74 00 02          	add    0x2(%eax,%eax,1),%dh
    286a:	76 00                	jbe    286c <__executable_start-0x8045828>
    286c:	0b 02                	or     (%edx),%eax
    286e:	74 04                	je     2874 <__executable_start-0x8045820>
    2870:	06                   	push   %es
    2871:	75 00                	jne    2873 <__executable_start-0x8045821>
    2873:	48                   	dec    %eax
    2874:	24 48                	and    $0x48,%al
    2876:	26 00 00             	add    %al,%es:(%eax)
    2879:	0e                   	push   %cs
    287a:	04 67                	add    $0x67,%al
    287c:	05 00 00 11 5c       	add    $0x5c110000,%eax
    2881:	01 00                	add    %eax,(%eax)
    2883:	00 1b                	add    %bl,(%ebx)
    2885:	08 00                	or     %al,(%eax)
    2887:	00 12                	add    %dl,(%edx)
    2889:	55                   	push   %ebp
    288a:	01 00                	add    %eax,(%eax)
    288c:	00 08                	add    %cl,(%eax)
    288e:	00 10                	add    %dl,(%eax)
    2890:	0b 08                	or     (%eax),%ecx
    2892:	00 00                	add    %al,(%eax)
    2894:	18 91 07 00 00 01    	sbb    %dl,0x1000007(%ecx)
    289a:	17                   	pop    %ss
    289b:	01 24 01             	add    %esp,(%ecx,%eax,1)
    289e:	00 00                	add    %al,(%eax)
    28a0:	31 98 04 08 60 00    	xor    %ebx,0x600804(%eax)
    28a6:	00 00                	add    %al,(%eax)
    28a8:	01 9c c2 08 00 00 19 	add    %ebx,0x19000008(%edx,%eax,8)
    28af:	47                   	inc    %edi
    28b0:	07                   	pop    %es
    28b1:	00 00                	add    %al,(%eax)
    28b3:	01 17                	add    %edx,(%edi)
    28b5:	01 24 01             	add    %esp,(%ecx,%eax,1)
    28b8:	00 00                	add    %al,(%eax)
    28ba:	02 91 00 19 14 06    	add    0x6141900(%ecx),%dl
    28c0:	00 00                	add    %al,(%eax)
    28c2:	01 17                	add    %edx,(%edi)
    28c4:	01 25 00 00 00 02    	add    %esp,0x2000000
    28ca:	91                   	xchg   %eax,%ecx
    28cb:	04 1a                	add    $0x1a,%al
    28cd:	a9 05 00 00 01       	test   $0x1000005,%eax
    28d2:	17                   	pop    %ss
    28d3:	01 2c 00             	add    %ebp,(%eax,%eax,1)
    28d6:	00 00                	add    %al,(%eax)
    28d8:	7c 13                	jl     28ed <__executable_start-0x80457a7>
    28da:	00 00                	add    %al,(%eax)
    28dc:	1b 64 73 74          	sbb    0x74(%ebx,%esi,2),%esp
    28e0:	00 01                	add    %al,(%ecx)
    28e2:	19 01                	sbb    %eax,(%ecx)
    28e4:	2d 01 00 00 e4       	sub    $0xe4000001,%eax
    28e9:	13 00                	adc    (%eax),%eax
    28eb:	00 09                	add    %cl,(%ecx)
    28ed:	b4 02                	mov    $0x2,%ah
    28ef:	00 00                	add    %al,(%eax)
    28f1:	c2 08 00             	ret    $0x8
    28f4:	00 05 03 97 9f 04    	add    %al,0x49f9703
    28fa:	08 0c 81             	or     %cl,(%ecx,%eax,4)
    28fd:	98                   	cwtl   
    28fe:	04 08                	add    $0x8,%al
    2900:	77 0c                	ja     290e <__executable_start-0x8045786>
    2902:	00 00                	add    %al,(%eax)
    2904:	0b 02                	or     (%edx),%eax
    2906:	74 00                	je     2908 <__executable_start-0x804578c>
    2908:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    290d:	08 0b                	or     %cl,(%ebx)
    290f:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    2913:	0a 1b                	or     (%ebx),%bl
    2915:	01 0b                	add    %ecx,(%ebx)
    2917:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    291b:	03 97 9f 04 08 0b    	add    0xb08049f(%edi),%edx
    2921:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2925:	03 ca                	add    %edx,%ecx
    2927:	a0 04 08 0b 02       	mov    0x20b0804,%al
    292c:	74 10                	je     293e <__executable_start-0x8045756>
    292e:	05 03 b1 a0 04       	add    $0x4a0b103,%eax
    2933:	08 00                	or     %al,(%eax)
    2935:	00 10                	add    %dl,(%eax)
    2937:	45                   	inc    %ebp
    2938:	01 00                	add    %eax,(%eax)
    293a:	00 18                	add    %bl,(%eax)
    293c:	f4                   	hlt    
    293d:	06                   	push   %es
    293e:	00 00                	add    %al,(%eax)
    2940:	01 25 01 2c 00 00    	add    %esp,0x2c01
    2946:	00 91 98 04 08 50    	add    %dl,0x50080498(%ecx)
    294c:	00 00                	add    %al,(%eax)
    294e:	00 01                	add    %al,(%ecx)
    2950:	9c                   	pushf  
    2951:	48                   	dec    %eax
    2952:	09 00                	or     %eax,(%eax)
    2954:	00 19                	add    %bl,(%ecx)
    2956:	77 06                	ja     295e <__executable_start-0x8045736>
    2958:	00 00                	add    %al,(%eax)
    295a:	01 25 01 1d 04 00    	add    %esp,0x41d01
    2960:	00 02                	add    %al,(%edx)
    2962:	91                   	xchg   %eax,%ecx
    2963:	00 1b                	add    %bl,(%ebx)
    2965:	70 00                	jo     2967 <__executable_start-0x804572d>
    2967:	01 27                	add    %esp,(%edi)
    2969:	01 1d 04 00 00 0e    	add    %ebx,0xe000004
    296f:	14 00                	adc    $0x0,%al
    2971:	00 09                	add    %cl,(%ecx)
    2973:	b4 02                	mov    $0x2,%ah
    2975:	00 00                	add    %al,(%eax)
    2977:	48                   	dec    %eax
    2978:	09 00                	or     %eax,(%eax)
    297a:	00 05 03 90 9f 04    	add    %al,0x49f9003
    2980:	08 0c d1             	or     %cl,(%ecx,%edx,8)
    2983:	98                   	cwtl   
    2984:	04 08                	add    $0x8,%al
    2986:	77 0c                	ja     2994 <__executable_start-0x8045700>
    2988:	00 00                	add    %al,(%eax)
    298a:	0b 02                	or     (%edx),%eax
    298c:	74 00                	je     298e <__executable_start-0x8045706>
    298e:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2993:	08 0b                	or     %cl,(%ebx)
    2995:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    2999:	0a 29                	or     (%ecx),%ch
    299b:	01 0b                	add    %ecx,(%ebx)
    299d:	02 74 08 05          	add    0x5(%eax,%ecx,1),%dh
    29a1:	03 90 9f 04 08 0b    	add    0xb08049f(%eax),%edx
    29a7:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    29ab:	03 ca                	add    %edx,%ecx
    29ad:	a0 04 08 0b 02       	mov    0x20b0804,%al
    29b2:	74 10                	je     29c4 <__executable_start-0x80456d0>
    29b4:	05 03 67 a1 04       	add    $0x4a16703,%eax
    29b9:	08 00                	or     %al,(%eax)
    29bb:	00 10                	add    %dl,(%eax)
    29bd:	45                   	inc    %ebp
    29be:	01 00                	add    %eax,(%eax)
    29c0:	00 05 ab 07 00 00    	add    %al,0x7ab
    29c6:	01 b8 67 05 00 00    	add    %edi,0x567(%eax)
    29cc:	e1 98                	loope  2966 <__executable_start-0x804572e>
    29ce:	04 08                	add    $0x8,%al
    29d0:	79 00                	jns    29d2 <__executable_start-0x80456c2>
    29d2:	00 00                	add    %al,(%eax)
    29d4:	01 9c d5 09 00 00 07 	add    %ebx,0x7000009(%ebp,%edx,8)
    29db:	b2 07                	mov    $0x7,%dl
    29dd:	00 00                	add    %al,(%eax)
    29df:	01 b8 1d 04 00 00    	add    %edi,0x41d(%eax)
    29e5:	2c 14                	sub    $0x14,%al
    29e7:	00 00                	add    %al,(%eax)
    29e9:	07                   	pop    %es
    29ea:	30 07                	xor    %al,(%edi)
    29ec:	00 00                	add    %al,(%eax)
    29ee:	01 b8 1d 04 00 00    	add    %edi,0x41d(%eax)
    29f4:	40                   	inc    %eax
    29f5:	14 00                	adc    $0x0,%al
    29f7:	00 14 98             	add    %dl,(%eax,%ebx,4)
    29fa:	07                   	pop    %es
    29fb:	00 00                	add    %al,(%eax)
    29fd:	01 ba 2c 00 00 00    	add    %edi,0x2c(%edx)
    2a03:	54                   	push   %esp
    2a04:	14 00                	adc    $0x0,%al
    2a06:	00 14 71             	add    %dl,(%ecx,%esi,2)
    2a09:	07                   	pop    %es
    2a0a:	00 00                	add    %al,(%eax)
    2a0c:	01 bb 2c 00 00 00    	add    %edi,0x2c(%ebx)
    2a12:	72 14                	jb     2a28 <__executable_start-0x804566c>
    2a14:	00 00                	add    %al,(%eax)
    2a16:	1c 78                	sbb    $0x78,%al
    2a18:	00 00                	add    %al,(%eax)
    2a1a:	00 08                	add    %cl,(%eax)
    2a1c:	69 00 01 bf 2c 00    	imul   $0x2cbf01,(%eax),%eax
    2a22:	00 00                	add    %al,(%eax)
    2a24:	85 14 00             	test   %edx,(%eax,%eax,1)
    2a27:	00 0c 33             	add    %cl,(%ebx,%esi,1)
    2a2a:	99                   	cltd   
    2a2b:	04 08                	add    $0x8,%al
    2a2d:	63 02                	arpl   %ax,(%edx)
    2a2f:	00 00                	add    %al,(%eax)
    2a31:	0b 02                	or     (%edx),%eax
    2a33:	74 00                	je     2a35 <__executable_start-0x804565f>
    2a35:	02 76 00             	add    0x0(%esi),%dh
    2a38:	0b 02                	or     (%edx),%eax
    2a3a:	74 04                	je     2a40 <__executable_start-0x8045654>
    2a3c:	02 75 00             	add    0x0(%ebp),%dh
    2a3f:	0b 02                	or     (%edx),%eax
    2a41:	74 08                	je     2a4b <__executable_start-0x8045649>
    2a43:	02 77 00             	add    0x0(%edi),%dh
    2a46:	00 00                	add    %al,(%eax)
    2a48:	00 18                	add    %bl,(%eax)
    2a4a:	ce                   	into   
    2a4b:	04 00                	add    $0x0,%al
    2a4d:	00 01                	add    %al,(%ecx)
    2a4f:	33 01                	xor    (%ecx),%eax
    2a51:	2c 00                	sub    $0x0,%al
    2a53:	00 00                	add    %al,(%eax)
    2a55:	5a                   	pop    %edx
    2a56:	99                   	cltd   
    2a57:	04 08                	add    $0x8,%al
    2a59:	2c 00                	sub    $0x0,%al
    2a5b:	00 00                	add    %al,(%eax)
    2a5d:	01 9c 20 0a 00 00 1a 	add    %ebx,0x1a00000a(%eax,%eiz,1)
    2a64:	77 06                	ja     2a6c <__executable_start-0x8045628>
    2a66:	00 00                	add    %al,(%eax)
    2a68:	01 33                	add    %esi,(%ebx)
    2a6a:	01 1d 04 00 00 af    	add    %ebx,0xaf000004
    2a70:	14 00                	adc    $0x0,%al
    2a72:	00 1a                	add    %bl,(%edx)
    2a74:	d9 06                	flds   (%esi)
    2a76:	00 00                	add    %al,(%eax)
    2a78:	01 33                	add    %esi,(%ebx)
    2a7a:	01 2c 00             	add    %ebp,(%eax,%eax,1)
    2a7d:	00 00                	add    %al,(%eax)
    2a7f:	ce                   	into   
    2a80:	14 00                	adc    $0x0,%al
    2a82:	00 1d a1 06 00 00    	add    %bl,0x6a1
    2a88:	01 35 01 2c 00 00    	add    %esi,0x2c01
    2a8e:	00 ed                	add    %ch,%ch
    2a90:	14 00                	adc    $0x0,%al
    2a92:	00 00                	add    %al,(%eax)
    2a94:	18 01                	sbb    %al,(%ecx)
    2a96:	07                   	pop    %es
    2a97:	00 00                	add    %al,(%eax)
    2a99:	01 46 01             	add    %eax,0x1(%esi)
    2a9c:	2c 00                	sub    $0x0,%al
    2a9e:	00 00                	add    %al,(%eax)
    2aa0:	86 99 04 08 ae 00    	xchg   %bl,0xae0804(%ecx)
    2aa6:	00 00                	add    %al,(%eax)
    2aa8:	01 9c 3e 0b 00 00 1e 	add    %ebx,0x1e00000b(%esi,%edi,1)
    2aaf:	64 73 74             	fs jae 2b26 <__executable_start-0x804556e>
    2ab2:	00 01                	add    %al,(%ecx)
    2ab4:	46                   	inc    %esi
    2ab5:	01 67 05             	add    %esp,0x5(%edi)
    2ab8:	00 00                	add    %al,(%eax)
    2aba:	02 91 00 1f 73 72    	add    0x72731f00(%ecx),%dl
    2ac0:	63 00                	arpl   %ax,(%eax)
    2ac2:	01 46 01             	add    %eax,0x1(%esi)
    2ac5:	1d 04 00 00 18       	sbb    $0x18000004,%eax
    2aca:	15 00 00 19 a9       	adc    $0xa9190000,%eax
    2acf:	05 00 00 01 46       	add    $0x46010000,%eax
    2ad4:	01 2c 00             	add    %ebp,(%eax,%eax,1)
    2ad7:	00 00                	add    %al,(%eax)
    2ad9:	02 91 08 1d e7 06    	add    0x6e71d08(%ecx),%dl
    2adf:	00 00                	add    %al,(%eax)
    2ae1:	01 48 01             	add    %ecx,0x1(%eax)
    2ae4:	2c 00                	sub    $0x0,%al
    2ae6:	00 00                	add    %al,(%eax)
    2ae8:	2c 15                	sub    $0x15,%al
    2aea:	00 00                	add    %al,(%eax)
    2aec:	09 b4 02 00 00 3e 0b 	or     %esi,0xb3e0000(%edx,%eax,1)
    2af3:	00 00                	add    %al,(%eax)
    2af5:	05 03 88 9f 04       	add    $0x49f8803,%eax
    2afa:	08 20                	or     %ah,(%eax)
    2afc:	0f 9a 04 08          	setp   (%eax,%ecx,1)
    2b00:	1c 00                	sbb    $0x0,%al
    2b02:	00 00                	add    %al,(%eax)
    2b04:	c5 0a                	lds    (%edx),%ecx
    2b06:	00 00                	add    %al,(%eax)
    2b08:	1d 19 07 00 00       	sbb    $0x719,%eax
    2b0d:	01 50 01             	add    %edx,0x1(%eax)
    2b10:	2c 00                	sub    $0x0,%al
    2b12:	00 00                	add    %al,(%eax)
    2b14:	4a                   	dec    %edx
    2b15:	15 00 00 0c 27       	adc    $0x270c0000,%eax
    2b1a:	9a 04 08 98 0c 00 00 	lcall  $0x0,$0xc980804
    2b21:	0b 02                	or     (%edx),%eax
    2b23:	74 00                	je     2b25 <__executable_start-0x804556f>
    2b25:	02 73 00             	add    0x0(%ebx),%dh
    2b28:	0b 02                	or     (%edx),%eax
    2b2a:	74 04                	je     2b30 <__executable_start-0x8045564>
    2b2c:	03 91 04 06 0b 02    	add    0x20b0604(%ecx),%edx
    2b32:	74 08                	je     2b3c <__executable_start-0x8045558>
    2b34:	02 76 00             	add    0x0(%esi),%dh
    2b37:	00 00                	add    %al,(%eax)
    2b39:	0a c8                	or     %al,%cl
    2b3b:	99                   	cltd   
    2b3c:	04 08                	add    $0x8,%al
    2b3e:	77 0c                	ja     2b4c <__executable_start-0x8045548>
    2b40:	00 00                	add    %al,(%eax)
    2b42:	03 0b                	add    (%ebx),%ecx
    2b44:	00 00                	add    %al,(%eax)
    2b46:	0b 02                	or     (%edx),%eax
    2b48:	74 00                	je     2b4a <__executable_start-0x804554a>
    2b4a:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2b4f:	08 0b                	or     %cl,(%ebx)
    2b51:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    2b55:	0a 4a 01             	or     0x1(%edx),%cl
    2b58:	0b 02                	or     (%edx),%eax
    2b5a:	74 08                	je     2b64 <__executable_start-0x8045530>
    2b5c:	05 03 88 9f 04       	add    $0x49f8803,%eax
    2b61:	08 0b                	or     %cl,(%ebx)
    2b63:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2b67:	03 ca                	add    %edx,%ecx
    2b69:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2b6e:	74 10                	je     2b80 <__executable_start-0x8045514>
    2b70:	05 03 9a a1 04       	add    $0x4a19a03,%eax
    2b75:	08 00                	or     %al,(%eax)
    2b77:	0c f8                	or     $0xf8,%al
    2b79:	99                   	cltd   
    2b7a:	04 08                	add    $0x8,%al
    2b7c:	77 0c                	ja     2b8a <__executable_start-0x804550a>
    2b7e:	00 00                	add    %al,(%eax)
    2b80:	0b 02                	or     (%edx),%eax
    2b82:	74 00                	je     2b84 <__executable_start-0x8045510>
    2b84:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2b89:	08 0b                	or     %cl,(%ebx)
    2b8b:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    2b8f:	0a 4b 01             	or     0x1(%ebx),%cl
    2b92:	0b 02                	or     (%edx),%eax
    2b94:	74 08                	je     2b9e <__executable_start-0x80454f6>
    2b96:	05 03 88 9f 04       	add    $0x49f8803,%eax
    2b9b:	08 0b                	or     %cl,(%ebx)
    2b9d:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2ba1:	03 ca                	add    %edx,%ecx
    2ba3:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2ba8:	74 10                	je     2bba <__executable_start-0x80454da>
    2baa:	05 03 a6 a1 04       	add    $0x4a1a603,%eax
    2baf:	08 00                	or     %al,(%eax)
    2bb1:	00 10                	add    %dl,(%eax)
    2bb3:	4e                   	dec    %esi
    2bb4:	02 00                	add    (%eax),%al
    2bb6:	00 18                	add    %bl,(%eax)
    2bb8:	69 07 00 00 01 64    	imul   $0x64010000,(%edi),%eax
    2bbe:	01 2c 00             	add    %ebp,(%eax,%eax,1)
    2bc1:	00 00                	add    %al,(%eax)
    2bc3:	34 9a                	xor    $0x9a,%al
    2bc5:	04 08                	add    $0x8,%al
    2bc7:	ce                   	into   
    2bc8:	00 00                	add    %al,(%eax)
    2bca:	00 01                	add    %al,(%ecx)
    2bcc:	9c                   	pushf  
    2bcd:	72 0c                	jb     2bdb <__executable_start-0x80454b9>
    2bcf:	00 00                	add    %al,(%eax)
    2bd1:	1f                   	pop    %ds
    2bd2:	64 73 74             	fs jae 2c49 <__executable_start-0x804544b>
    2bd5:	00 01                	add    %al,(%ecx)
    2bd7:	64 01 67 05          	add    %esp,%fs:0x5(%edi)
    2bdb:	00 00                	add    %al,(%eax)
    2bdd:	5d                   	pop    %ebp
    2bde:	15 00 00 1f 73       	adc    $0x731f0000,%eax
    2be3:	72 63                	jb     2c48 <__executable_start-0x804544c>
    2be5:	00 01                	add    %al,(%ecx)
    2be7:	64 01 1d 04 00 00 71 	add    %ebx,%fs:0x71000004
    2bee:	15 00 00 19 a9       	adc    $0xa9190000,%eax
    2bf3:	05 00 00 01 64       	add    $0x64010000,%eax
    2bf8:	01 2c 00             	add    %ebp,(%eax,%eax,1)
    2bfb:	00 00                	add    %al,(%eax)
    2bfd:	02 91 08 1d e7 06    	add    0x6e71d08(%ecx),%dl
    2c03:	00 00                	add    %al,(%eax)
    2c05:	01 66 01             	add    %esp,0x1(%esi)
    2c08:	2c 00                	sub    $0x0,%al
    2c0a:	00 00                	add    %al,(%eax)
    2c0c:	85 15 00 00 1d 19    	test   %edx,0x191d0000
    2c12:	07                   	pop    %es
    2c13:	00 00                	add    %al,(%eax)
    2c15:	01 66 01             	add    %esp,0x1(%esi)
    2c18:	2c 00                	sub    $0x0,%al
    2c1a:	00 00                	add    %al,(%eax)
    2c1c:	98                   	cwtl   
    2c1d:	15 00 00 09 b4       	adc    $0xb4090000,%eax
    2c22:	02 00                	add    (%eax),%al
    2c24:	00 72 0c             	add    %dh,0xc(%edx)
    2c27:	00 00                	add    %al,(%eax)
    2c29:	05 03 80 9f 04       	add    $0x49f8003,%eax
    2c2e:	08 20                	or     %ah,(%eax)
    2c30:	d2 9a 04 08 25 00    	rcrb   %cl,0x250804(%edx)
    2c36:	00 00                	add    %al,(%eax)
    2c38:	f9                   	stc    
    2c39:	0b 00                	or     (%eax),%eax
    2c3b:	00 1d bb 07 00 00    	add    %bl,0x7bb
    2c41:	01 6f 01             	add    %ebp,0x1(%edi)
    2c44:	2c 00                	sub    $0x0,%al
    2c46:	00 00                	add    %al,(%eax)
    2c48:	ab                   	stos   %eax,%es:(%edi)
    2c49:	15 00 00 0c f2       	adc    $0xf20c0000,%eax
    2c4e:	9a 04 08 98 0c 00 00 	lcall  $0x0,$0xc980804
    2c55:	0b 02                	or     (%edx),%eax
    2c57:	74 00                	je     2c59 <__executable_start-0x804543b>
    2c59:	02 75 00             	add    0x0(%ebp),%dh
    2c5c:	0b 02                	or     (%edx),%eax
    2c5e:	74 04                	je     2c64 <__executable_start-0x8045430>
    2c60:	03 91 04 06 0b 02    	add    0x20b0604(%ecx),%edx
    2c66:	74 08                	je     2c70 <__executable_start-0x8045424>
    2c68:	02 77 00             	add    0x0(%edi),%dh
    2c6b:	00 00                	add    %al,(%eax)
    2c6d:	0a 73 9a             	or     -0x66(%ebx),%dh
    2c70:	04 08                	add    $0x8,%al
    2c72:	77 0c                	ja     2c80 <__executable_start-0x8045414>
    2c74:	00 00                	add    %al,(%eax)
    2c76:	37                   	aaa    
    2c77:	0c 00                	or     $0x0,%al
    2c79:	00 0b                	add    %cl,(%ebx)
    2c7b:	02 74 00 05          	add    0x5(%eax,%eax,1),%dh
    2c7f:	03 e1                	add    %ecx,%esp
    2c81:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2c86:	74 04                	je     2c8c <__executable_start-0x8045408>
    2c88:	03 0a                	add    (%edx),%ecx
    2c8a:	68 01 0b 02 74       	push   $0x74020b01
    2c8f:	08 05 03 80 9f 04    	or     %al,0x49f8003
    2c95:	08 0b                	or     %cl,(%ebx)
    2c97:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2c9b:	03 ca                	add    %edx,%ecx
    2c9d:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2ca2:	74 10                	je     2cb4 <__executable_start-0x80453e0>
    2ca4:	05 03 9a a1 04       	add    $0x4a19a03,%eax
    2ca9:	08 00                	or     %al,(%eax)
    2cab:	0c a3                	or     $0xa3,%al
    2cad:	9a 04 08 77 0c 00 00 	lcall  $0x0,$0xc770804
    2cb4:	0b 02                	or     (%edx),%eax
    2cb6:	74 00                	je     2cb8 <__executable_start-0x80453dc>
    2cb8:	05 03 e1 a0 04       	add    $0x4a0e103,%eax
    2cbd:	08 0b                	or     %cl,(%ebx)
    2cbf:	02 74 04 03          	add    0x3(%esp,%eax,1),%dh
    2cc3:	0a 69 01             	or     0x1(%ecx),%ch
    2cc6:	0b 02                	or     (%edx),%eax
    2cc8:	74 08                	je     2cd2 <__executable_start-0x80453c2>
    2cca:	05 03 80 9f 04       	add    $0x49f8003,%eax
    2ccf:	08 0b                	or     %cl,(%ebx)
    2cd1:	02 74 0c 05          	add    0x5(%esp,%ecx,1),%dh
    2cd5:	03 ca                	add    %edx,%ecx
    2cd7:	a0 04 08 0b 02       	mov    0x20b0804,%al
    2cdc:	74 10                	je     2cee <__executable_start-0x80453a6>
    2cde:	05 03 a6 a1 04       	add    $0x4a1a603,%eax
    2ce3:	08 00                	or     %al,(%eax)
    2ce5:	00 10                	add    %dl,(%eax)
    2ce7:	4e                   	dec    %esi
    2ce8:	02 00                	add    (%eax),%al
    2cea:	00 21                	add    %ah,(%ecx)
    2cec:	e9 01 00 00 03       	jmp    3002cf2 <__executable_start-0x50453a2>
    2cf1:	10 98 0c 00 00 22    	adc    %bl,0x2200000c(%eax)
    2cf7:	1d 04 00 00 22       	sbb    $0x22000004,%eax
    2cfc:	25 00 00 00 22       	and    $0x22000000,%eax
    2d01:	1d 04 00 00 22       	sbb    $0x22000004,%eax
    2d06:	1d 04 00 00 23       	sbb    $0x23000004,%eax
    2d0b:	00 24 83             	add    %ah,(%ebx,%eax,4)
    2d0e:	07                   	pop    %es
    2d0f:	00 00                	add    %al,(%eax)
    2d11:	24 01                	and    $0x1,%al
    2d13:	00 00                	add    %al,(%eax)
    2d15:	22 24 01             	and    (%ecx,%eax,1),%ah
    2d18:	00 00                	add    %al,(%eax)
    2d1a:	22 26                	and    (%esi),%ah
    2d1c:	01 00                	add    %eax,(%eax)
    2d1e:	00 22                	add    %ah,(%edx)
    2d20:	55                   	push   %ebp
    2d21:	01 00                	add    %eax,(%eax)
    2d23:	00 00                	add    %al,(%eax)
    2d25:	00 35 04 00 00 04    	add    %dh,0x4000004
    2d2b:	00 0c 0c             	add    %cl,(%esp,%ecx,1)
    2d2e:	00 00                	add    %al,(%eax)
    2d30:	04 01                	add    $0x1,%al
    2d32:	52                   	push   %edx
    2d33:	00 00                	add    %al,(%eax)
    2d35:	00 01                	add    %al,(%ecx)
    2d37:	fa                   	cli    
    2d38:	07                   	pop    %es
    2d39:	00 00                	add    %al,(%eax)
    2d3b:	00 00                	add    %al,(%eax)
    2d3d:	00 00                	add    %al,(%eax)
    2d3f:	10 9b 04 08 6f 02    	adc    %bl,0x26f0804(%ebx)
    2d45:	00 00                	add    %al,(%eax)
    2d47:	3a 08                	cmp    (%eax),%cl
    2d49:	00 00                	add    %al,(%eax)
    2d4b:	02 08                	add    (%eax),%cl
    2d4d:	07                   	pop    %es
    2d4e:	70 02                	jo     2d52 <__executable_start-0x8045342>
    2d50:	00 00                	add    %al,(%eax)
    2d52:	02 01                	add    (%ecx),%al
    2d54:	06                   	push   %es
    2d55:	64 02 00             	add    %fs:(%eax),%al
    2d58:	00 02                	add    %al,(%edx)
    2d5a:	02 05 29 01 00 00    	add    0x129,%al
    2d60:	03 88 02 00 00 02    	add    0x2000002(%eax),%ecx
    2d66:	0c 45                	or     $0x45,%al
    2d68:	00 00                	add    %al,(%eax)
    2d6a:	00 04 04             	add    %al,(%esp,%eax,1)
    2d6d:	05 69 6e 74 00       	add    $0x746e69,%eax
    2d72:	03 ee                	add    %esi,%ebp
    2d74:	04 00                	add    $0x0,%al
    2d76:	00 02                	add    %al,(%edx)
    2d78:	10 57 00             	adc    %dl,0x0(%edi)
    2d7b:	00 00                	add    %al,(%eax)
    2d7d:	02 08                	add    (%eax),%cl
    2d7f:	05 d3 01 00 00       	add    $0x1d3,%eax
    2d84:	02 01                	add    (%ecx),%al
    2d86:	08 62 02             	or     %ah,0x2(%edx)
    2d89:	00 00                	add    %al,(%eax)
    2d8b:	02 02                	add    (%edx),%al
    2d8d:	07                   	pop    %es
    2d8e:	c6 02 00             	movb   $0x0,(%edx)
    2d91:	00 03                	add    %al,(%ebx)
    2d93:	87 02                	xchg   %eax,(%edx)
    2d95:	00 00                	add    %al,(%eax)
    2d97:	02 1a                	add    (%edx),%bl
    2d99:	77 00                	ja     2d9b <__executable_start-0x80452f9>
    2d9b:	00 00                	add    %al,(%eax)
    2d9d:	02 04 07             	add    (%edi,%eax,1),%al
    2da0:	7a 02                	jp     2da4 <__executable_start-0x80452f0>
    2da2:	00 00                	add    %al,(%eax)
    2da4:	03 ed                	add    %ebp,%ebp
    2da6:	04 00                	add    $0x0,%al
    2da8:	00 02                	add    %al,(%edx)
    2daa:	1d 25 00 00 00       	sbb    $0x25,%eax
    2daf:	05 ec 07 00 00       	add    $0x7ec,%eax
    2db4:	01 1a                	add    %ebx,(%edx)
    2db6:	6c                   	insb   (%dx),%es:(%edi)
    2db7:	00 00                	add    %al,(%eax)
    2db9:	00 03                	add    %al,(%ebx)
    2dbb:	d2 00                	rolb   %cl,(%eax)
    2dbd:	00 00                	add    %al,(%eax)
    2dbf:	06                   	push   %es
    2dc0:	6e                   	outsb  %ds:(%esi),(%dx)
    2dc1:	00 01                	add    %al,(%ecx)
    2dc3:	1a 7e 00             	sbb    0x0(%esi),%bh
    2dc6:	00 00                	add    %al,(%eax)
    2dc8:	06                   	push   %es
    2dc9:	64 00 01             	add    %al,%fs:(%ecx)
    2dcc:	1a 6c 00 00          	sbb    0x0(%eax,%eax,1),%ch
    2dd0:	00 07                	add    %al,(%edi)
    2dd2:	6e                   	outsb  %ds:(%esi),(%dx)
    2dd3:	31 00                	xor    %eax,(%eax)
    2dd5:	01 1c 6c             	add    %ebx,(%esp,%ebp,2)
    2dd8:	00 00                	add    %al,(%eax)
    2dda:	00 07                	add    %al,(%edi)
    2ddc:	6e                   	outsb  %ds:(%esi),(%dx)
    2ddd:	30 00                	xor    %al,(%eax)
    2ddf:	01 1d 6c 00 00 00    	add    %ebx,0x6c
    2de5:	07                   	pop    %es
    2de6:	71 00                	jno    2de8 <__executable_start-0x80452ac>
    2de8:	01 1e                	add    %ebx,(%esi)
    2dea:	6c                   	insb   (%dx),%es:(%edi)
    2deb:	00 00                	add    %al,(%eax)
    2ded:	00 07                	add    %al,(%edi)
    2def:	72 00                	jb     2df1 <__executable_start-0x80452a3>
    2df1:	01 1e                	add    %ebx,(%esi)
    2df3:	6c                   	insb   (%dx),%es:(%edi)
    2df4:	00 00                	add    %al,(%eax)
    2df6:	00 00                	add    %al,(%eax)
    2df8:	08 6e 6c             	or     %ch,0x6c(%esi)
    2dfb:	7a 00                	jp     2dfd <__executable_start-0x8045297>
    2dfd:	01 2a                	add    %ebp,(%edx)
    2dff:	45                   	inc    %ebp
    2e00:	00 00                	add    %al,(%eax)
    2e02:	00 01                	add    %al,(%ecx)
    2e04:	f5                   	cmc    
    2e05:	00 00                	add    %al,(%eax)
    2e07:	00 06                	add    %al,(%esi)
    2e09:	78 00                	js     2e0b <__executable_start-0x8045289>
    2e0b:	01 2a                	add    %ebp,(%edx)
    2e0d:	6c                   	insb   (%dx),%es:(%edi)
    2e0e:	00 00                	add    %al,(%eax)
    2e10:	00 07                	add    %al,(%edi)
    2e12:	6e                   	outsb  %ds:(%esi),(%dx)
    2e13:	00 01                	add    %al,(%ecx)
    2e15:	31 45 00             	xor    %eax,0x0(%ebp)
    2e18:	00 00                	add    %al,(%eax)
    2e1a:	00 09                	add    %cl,(%ecx)
    2e1c:	0e                   	push   %cs
    2e1d:	08 00                	or     %al,(%eax)
    2e1f:	00 01                	add    %al,(%ecx)
    2e21:	4e                   	dec    %esi
    2e22:	7e 00                	jle    2e24 <__executable_start-0x8045270>
    2e24:	00 00                	add    %al,(%eax)
    2e26:	10 9b 04 08 4d 01    	adc    %bl,0x14d0804(%ebx)
    2e2c:	00 00                	add    %al,(%eax)
    2e2e:	01 9c 5d 02 00 00 0a 	add    %ebx,0xa000002(%ebp,%ebx,2)
    2e35:	6e                   	outsb  %ds:(%esi),(%dx)
    2e36:	00 01                	add    %al,(%ecx)
    2e38:	4e                   	dec    %esi
    2e39:	7e 00                	jle    2e3b <__executable_start-0x8045259>
    2e3b:	00 00                	add    %al,(%eax)
    2e3d:	be 15 00 00 0b       	mov    $0xb000015,%esi
    2e42:	64 00 01             	add    %al,%fs:(%ecx)
    2e45:	4e                   	dec    %esi
    2e46:	7e 00                	jle    2e48 <__executable_start-0x804524c>
    2e48:	00 00                	add    %al,(%eax)
    2e4a:	02 91 00 0c 2c 9b    	add    -0x64d3f400(%ecx),%dl
    2e50:	04 08                	add    $0x8,%al
    2e52:	37                   	aaa    
    2e53:	00 00                	add    %al,(%eax)
    2e55:	00 b8 01 00 00 0d    	add    %bh,0xd000001(%eax)
    2e5b:	62 00                	bound  %eax,(%eax)
    2e5d:	01 6a 7e             	add    %ebp,0x7e(%edx)
    2e60:	00 00                	add    %al,(%eax)
    2e62:	00 26                	add    %ah,(%esi)
    2e64:	16                   	push   %ss
    2e65:	00 00                	add    %al,(%eax)
    2e67:	0d 6e 31 00 01       	or     $0x100316e,%eax
    2e6c:	6b 6c 00 00 00       	imul   $0x0,0x0(%eax,%eax,1),%ebp
    2e71:	42                   	inc    %edx
    2e72:	16                   	push   %ss
    2e73:	00 00                	add    %al,(%eax)
    2e75:	0d 6e 30 00 01       	or     $0x100306e,%eax
    2e7a:	6c                   	insb   (%dx),%es:(%edi)
    2e7b:	6c                   	insb   (%dx),%es:(%edi)
    2e7c:	00 00                	add    %al,(%eax)
    2e7e:	00 61 16             	add    %ah,0x16(%ecx)
    2e81:	00 00                	add    %al,(%eax)
    2e83:	0d 64 30 00 01       	or     $0x1003064,%eax
    2e88:	6d                   	insl   (%dx),%es:(%edi)
    2e89:	6c                   	insb   (%dx),%es:(%edi)
    2e8a:	00 00                	add    %al,(%eax)
    2e8c:	00 75 16             	add    %dh,0x16(%ebp)
    2e8f:	00 00                	add    %al,(%eax)
    2e91:	0e                   	push   %cs
    2e92:	89 00                	mov    %eax,(%eax)
    2e94:	00 00                	add    %al,(%eax)
    2e96:	4c                   	dec    %esp
    2e97:	9b                   	fwait
    2e98:	04 08                	add    $0x8,%al
    2e9a:	02 00                	add    (%eax),%al
    2e9c:	00 00                	add    %al,(%eax)
    2e9e:	01 6f 0f             	add    %ebp,0xf(%edi)
    2ea1:	a2 00 00 00 94       	mov    %al,0x94000000
    2ea6:	16                   	push   %ss
    2ea7:	00 00                	add    %al,(%eax)
    2ea9:	0f 99 00             	setns  (%eax)
    2eac:	00 00                	add    %al,(%eax)
    2eae:	b3 16                	mov    $0x16,%bl
    2eb0:	00 00                	add    %al,(%eax)
    2eb2:	10 4c 9b 04          	adc    %cl,0x4(%ebx,%ebx,4)
    2eb6:	08 02                	or     %al,(%edx)
    2eb8:	00 00                	add    %al,(%eax)
    2eba:	00 11                	add    %dl,(%ecx)
    2ebc:	ab                   	stos   %eax,%es:(%edi)
    2ebd:	00 00                	add    %al,(%eax)
    2ebf:	00 cb                	add    %cl,%bl
    2ec1:	16                   	push   %ss
    2ec2:	00 00                	add    %al,(%eax)
    2ec4:	11 b5 00 00 00 de    	adc    %esi,-0x22000000(%ebp)
    2eca:	16                   	push   %ss
    2ecb:	00 00                	add    %al,(%eax)
    2ecd:	11 bf 00 00 00 02    	adc    %edi,0x2000000(%edi)
    2ed3:	17                   	pop    %ss
    2ed4:	00 00                	add    %al,(%eax)
    2ed6:	12 c8                	adc    %al,%cl
    2ed8:	00 00                	add    %al,(%eax)
    2eda:	00 00                	add    %al,(%eax)
    2edc:	00 00                	add    %al,(%eax)
    2ede:	13 90 00 00 00 0d    	adc    0xd000000(%eax),%edx
    2ee4:	64 31 00             	xor    %eax,%fs:(%eax)
    2ee7:	01 79 6c             	add    %edi,0x6c(%ecx)
    2eea:	00 00                	add    %al,(%eax)
    2eec:	00 15 17 00 00 14    	add    %dl,0x14000017
    2ef2:	73 00                	jae    2ef4 <__executable_start-0x80451a0>
    2ef4:	01 7a 45             	add    %edi,0x45(%edx)
    2ef7:	00 00                	add    %al,(%eax)
    2ef9:	00 01                	add    %al,(%ecx)
    2efb:	51                   	push   %ecx
    2efc:	0d 71 00 01 7b       	or     $0x7b010071,%eax
    2f01:	7e 00                	jle    2f03 <__executable_start-0x8045191>
    2f03:	00 00                	add    %al,(%eax)
    2f05:	54                   	push   %esp
    2f06:	17                   	pop    %ss
    2f07:	00 00                	add    %al,(%eax)
    2f09:	15 d2 00 00 00       	adc    $0xd2,%eax
    2f0e:	7a 9b                	jp     2eab <__executable_start-0x80451e9>
    2f10:	04 08                	add    $0x8,%al
    2f12:	41                   	inc    %ecx
    2f13:	00 00                	add    %al,(%eax)
    2f15:	00 01                	add    %al,(%ecx)
    2f17:	7a 13                	jp     2f2c <__executable_start-0x8045168>
    2f19:	02 00                	add    (%eax),%al
    2f1b:	00 0f                	add    %cl,(%edi)
    2f1d:	e2 00                	loop   2f1f <__executable_start-0x8045175>
    2f1f:	00 00                	add    %al,(%eax)
    2f21:	74 17                	je     2f3a <__executable_start-0x804515a>
    2f23:	00 00                	add    %al,(%eax)
    2f25:	10 7a 9b             	adc    %bh,-0x65(%edx)
    2f28:	04 08                	add    $0x8,%al
    2f2a:	41                   	inc    %ecx
    2f2b:	00 00                	add    %al,(%eax)
    2f2d:	00 11                	add    %dl,(%ecx)
    2f2f:	eb 00                	jmp    2f31 <__executable_start-0x8045163>
    2f31:	00 00                	add    %al,(%eax)
    2f33:	92                   	xchg   %eax,%edx
    2f34:	17                   	pop    %ss
    2f35:	00 00                	add    %al,(%eax)
    2f37:	00 00                	add    %al,(%eax)
    2f39:	0e                   	push   %cs
    2f3a:	89 00                	mov    %eax,(%eax)
    2f3c:	00 00                	add    %al,(%eax)
    2f3e:	dc 9b 04 08 06 00    	fcompl 0x60804(%ebx)
    2f44:	00 00                	add    %al,(%eax)
    2f46:	01 7b 16             	add    %edi,0x16(%ebx)
    2f49:	a2 00 00 00 0f       	mov    %al,0xf000000
    2f4e:	99                   	cltd   
    2f4f:	00 00                	add    %al,(%eax)
    2f51:	00 bd 17 00 00 10    	add    %bh,0x10000017(%ebp)
    2f57:	dc 9b 04 08 06 00    	fcompl 0x60804(%ebx)
    2f5d:	00 00                	add    %al,(%eax)
    2f5f:	11 ab 00 00 00 d5    	adc    %ebp,-0x2b000000(%ebx)
    2f65:	17                   	pop    %ss
    2f66:	00 00                	add    %al,(%eax)
    2f68:	11 b5 00 00 00 08    	adc    %esi,0x8000000(%ebp)
    2f6e:	18 00                	sbb    %al,(%eax)
    2f70:	00 11                	add    %dl,(%ecx)
    2f72:	bf 00 00 00 47       	mov    $0x47000000,%edi
    2f77:	18 00                	sbb    %al,(%eax)
    2f79:	00 12                	add    %dl,(%edx)
    2f7b:	c8 00 00 00          	enter  $0x0,$0x0
    2f7f:	00 00                	add    %al,(%eax)
    2f81:	00 00                	add    %al,(%eax)
    2f83:	09 2c 08             	or     %ebp,(%eax,%ecx,1)
    2f86:	00 00                	add    %al,(%eax)
    2f88:	01 8c 4c 00 00 00 5d 	add    %ecx,0x5d000000(%esp,%ecx,2)
    2f8f:	9c                   	pushf  
    2f90:	04 08                	add    $0x8,%al
    2f92:	76 00                	jbe    2f94 <__executable_start-0x8045100>
    2f94:	00 00                	add    %al,(%eax)
    2f96:	01 9c c6 02 00 00 0a 	add    %ebx,0xa000002(%esi,%eax,8)
    2f9d:	6e                   	outsb  %ds:(%esi),(%dx)
    2f9e:	00 01                	add    %al,(%ecx)
    2fa0:	8c 4c 00 00          	mov    %cs,0x0(%eax,%eax,1)
    2fa4:	00 65 18             	add    %ah,0x18(%ebp)
    2fa7:	00 00                	add    %al,(%eax)
    2fa9:	0b 64 00 01          	or     0x1(%eax,%eax,1),%esp
    2fad:	8c 4c 00 00          	mov    %cs,0x0(%eax,%eax,1)
    2fb1:	00 02                	add    %al,(%edx)
    2fb3:	91                   	xchg   %eax,%ecx
    2fb4:	00 17                	add    %dl,(%edi)
    2fb6:	cc                   	int3   
    2fb7:	07                   	pop    %es
    2fb8:	00 00                	add    %al,(%eax)
    2fba:	01 8e 7e 00 00 00    	add    %ecx,0x7e(%esi)
    2fc0:	8d 18                	lea    (%eax),%ebx
    2fc2:	00 00                	add    %al,(%eax)
    2fc4:	17                   	pop    %ss
    2fc5:	33 08                	xor    (%eax),%ecx
    2fc7:	00 00                	add    %al,(%eax)
    2fc9:	01 8f 7e 00 00 00    	add    %ecx,0x7e(%edi)
    2fcf:	a5                   	movsl  %ds:(%esi),%es:(%edi)
    2fd0:	18 00                	sbb    %al,(%eax)
    2fd2:	00 17                	add    %dl,(%edi)
    2fd4:	26 08 00             	or     %al,%es:(%eax)
    2fd7:	00 01                	add    %al,(%ecx)
    2fd9:	90                   	nop
    2fda:	7e 00                	jle    2fdc <__executable_start-0x80450b8>
    2fdc:	00 00                	add    %al,(%eax)
    2fde:	bd 18 00 00 18       	mov    $0x18000018,%ebp
    2fe3:	a7                   	cmpsl  %es:(%edi),%ds:(%esi)
    2fe4:	9c                   	pushf  
    2fe5:	04 08                	add    $0x8,%al
    2fe7:	f5                   	cmc    
    2fe8:	00 00                	add    %al,(%eax)
    2fea:	00 00                	add    %al,(%eax)
    2fec:	19 f1                	sbb    %esi,%ecx
    2fee:	07                   	pop    %es
    2fef:	00 00                	add    %al,(%eax)
    2ff1:	01 a5 57 00 00 00    	add    %esp,0x57(%ebp)
    2ff7:	d3 9c 04 08 23 00 00 	rcrl   %cl,0x2308(%esp,%eax,1)
    2ffe:	00 01                	add    %al,(%ecx)
    3000:	9c                   	pushf  
    3001:	01 03                	add    %eax,(%ebx)
    3003:	00 00                	add    %al,(%eax)
    3005:	0b 6e 00             	or     0x0(%esi),%ebp
    3008:	01 a5 57 00 00 00    	add    %esp,0x57(%ebp)
    300e:	02 91 00 0b 64 00    	add    0x640b00(%ecx),%dl
    3014:	01 a5 57 00 00 00    	add    %esp,0x57(%ebp)
    301a:	02 91 08 18 f2 9c    	add    -0x630de7f8(%ecx),%dl
    3020:	04 08                	add    $0x8,%al
    3022:	5d                   	pop    %ebp
    3023:	02 00                	add    (%eax),%al
    3025:	00 00                	add    %al,(%eax)
    3027:	05 e5 07 00 00       	add    $0x7e5,%eax
    302c:	01 97 3a 00 00 00    	add    %edx,0x3a(%edi)
    3032:	01 24 03             	add    %esp,(%ebx,%eax,1)
    3035:	00 00                	add    %al,(%eax)
    3037:	06                   	push   %es
    3038:	6e                   	outsb  %ds:(%esi),(%dx)
    3039:	00 01                	add    %al,(%ecx)
    303b:	97                   	xchg   %eax,%edi
    303c:	4c                   	dec    %esp
    303d:	00 00                	add    %al,(%eax)
    303f:	00 06                	add    %al,(%esi)
    3041:	64 00 01             	add    %al,%fs:(%ecx)
    3044:	97                   	xchg   %eax,%edi
    3045:	4c                   	dec    %esp
    3046:	00 00                	add    %al,(%eax)
    3048:	00 00                	add    %al,(%eax)
    304a:	19 d2                	sbb    %edx,%edx
    304c:	07                   	pop    %es
    304d:	00 00                	add    %al,(%eax)
    304f:	01 ac 57 00 00 00 f6 	add    %ebp,-0xa000000(%edi,%edx,2)
    3056:	9c                   	pushf  
    3057:	04 08                	add    $0x8,%al
    3059:	31 00                	xor    %eax,(%eax)
    305b:	00 00                	add    %al,(%eax)
    305d:	01 9c 81 03 00 00 0b 	add    %ebx,0xb000003(%ecx,%eax,4)
    3064:	6e                   	outsb  %ds:(%esi),(%dx)
    3065:	00 01                	add    %al,(%ecx)
    3067:	ac                   	lods   %ds:(%esi),%al
    3068:	57                   	push   %edi
    3069:	00 00                	add    %al,(%eax)
    306b:	00 02                	add    %al,(%edx)
    306d:	91                   	xchg   %eax,%ecx
    306e:	00 0b                	add    %cl,(%ebx)
    3070:	64 00 01             	add    %al,%fs:(%ecx)
    3073:	ac                   	lods   %ds:(%esi),%al
    3074:	57                   	push   %edi
    3075:	00 00                	add    %al,(%eax)
    3077:	00 02                	add    %al,(%edx)
    3079:	91                   	xchg   %eax,%ecx
    307a:	08 0e                	or     %cl,(%esi)
    307c:	01 03                	add    %eax,(%ebx)
    307e:	00 00                	add    %al,(%eax)
    3080:	03 9d 04 08 1d 00    	add    0x1d0804(%ebp),%ebx
    3086:	00 00                	add    %al,(%eax)
    3088:	01 ae 0f 1a 03 00    	add    %ebp,0x31a0f(%esi)
    308e:	00 d5                	add    %dl,%ch
    3090:	18 00                	sbb    %al,(%eax)
    3092:	00 0f                	add    %cl,(%edi)
    3094:	11 03                	adc    %eax,(%ebx)
    3096:	00 00                	add    %al,(%eax)
    3098:	00 19                	add    %bl,(%ecx)
    309a:	00 00                	add    %al,(%eax)
    309c:	18 19                	sbb    %bl,(%ecx)
    309e:	9d                   	popf   
    309f:	04 08                	add    $0x8,%al
    30a1:	5d                   	pop    %ebp
    30a2:	02 00                	add    (%eax),%al
    30a4:	00 00                	add    %al,(%eax)
    30a6:	00 19                	add    %bl,(%ecx)
    30a8:	15 08 00 00 01       	adc    $0x1000008,%eax
    30ad:	b3 25                	mov    $0x25,%bl
    30af:	00 00                	add    %al,(%eax)
    30b1:	00 27                	add    %ah,(%edi)
    30b3:	9d                   	popf   
    30b4:	04 08                	add    $0x8,%al
    30b6:	23 00                	and    (%eax),%eax
    30b8:	00 00                	add    %al,(%eax)
    30ba:	01 9c bc 03 00 00 0b 	add    %ebx,0xb000003(%esp,%edi,4)
    30c1:	6e                   	outsb  %ds:(%esi),(%dx)
    30c2:	00 01                	add    %al,(%ecx)
    30c4:	b3 25                	mov    $0x25,%bl
    30c6:	00 00                	add    %al,(%eax)
    30c8:	00 02                	add    %al,(%edx)
    30ca:	91                   	xchg   %eax,%ecx
    30cb:	00 0b                	add    %cl,(%ebx)
    30cd:	64 00 01             	add    %al,%fs:(%ecx)
    30d0:	b3 25                	mov    $0x25,%bl
    30d2:	00 00                	add    %al,(%eax)
    30d4:	00 02                	add    %al,(%edx)
    30d6:	91                   	xchg   %eax,%ecx
    30d7:	08 18                	or     %bl,(%eax)
    30d9:	46                   	inc    %esi
    30da:	9d                   	popf   
    30db:	04 08                	add    $0x8,%al
    30dd:	f5                   	cmc    
    30de:	00 00                	add    %al,(%eax)
    30e0:	00 00                	add    %al,(%eax)
    30e2:	05 1f 08 00 00       	add    $0x81f,%eax
    30e7:	01 84 6c 00 00 00 01 	add    %eax,0x1000000(%esp,%ebp,2)
    30ee:	df 03                	fild   (%ebx)
    30f0:	00 00                	add    %al,(%eax)
    30f2:	06                   	push   %es
    30f3:	6e                   	outsb  %ds:(%esi),(%dx)
    30f4:	00 01                	add    %al,(%ecx)
    30f6:	84 7e 00             	test   %bh,0x0(%esi)
    30f9:	00 00                	add    %al,(%eax)
    30fb:	06                   	push   %es
    30fc:	64 00 01             	add    %al,%fs:(%ecx)
    30ff:	84 7e 00             	test   %bh,0x0(%esi)
    3102:	00 00                	add    %al,(%eax)
    3104:	00 1a                	add    %bl,(%edx)
    3106:	db 07                	fildl  (%edi)
    3108:	00 00                	add    %al,(%eax)
    310a:	01 ba 25 00 00 00    	add    %edi,0x25(%edx)
    3110:	4a                   	dec    %edx
    3111:	9d                   	popf   
    3112:	04 08                	add    $0x8,%al
    3114:	35 00 00 00 01       	xor    $0x1000000,%eax
    3119:	9c                   	pushf  
    311a:	0b 6e 00             	or     0x0(%esi),%ebp
    311d:	01 ba 25 00 00 00    	add    %edi,0x25(%edx)
    3123:	02 91 00 0b 64 00    	add    0x640b00(%ecx),%dl
    3129:	01 ba 25 00 00 00    	add    %edi,0x25(%edx)
    312f:	02 91 08 0e bc 03    	add    0x3bc0e08(%ecx),%dl
    3135:	00 00                	add    %al,(%eax)
    3137:	57                   	push   %edi
    3138:	9d                   	popf   
    3139:	04 08                	add    $0x8,%al
    313b:	1d 00 00 00 01       	sbb    $0x1000000,%eax
    3140:	bc 0f d5 03 00       	mov    $0x3d50f,%esp
    3145:	00 2b                	add    %ch,(%ebx)
    3147:	19 00                	sbb    %eax,(%eax)
    3149:	00 0f                	add    %cl,(%edi)
    314b:	cc                   	int3   
    314c:	03 00                	add    (%eax),%eax
    314e:	00 56 19             	add    %dl,0x19(%esi)
    3151:	00 00                	add    %al,(%eax)
    3153:	18 6d 9d             	sbb    %ch,-0x63(%ebp)
    3156:	04 08                	add    $0x8,%al
    3158:	f5                   	cmc    
    3159:	00 00                	add    %al,(%eax)
    315b:	00 00                	add    %al,(%eax)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%ecx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
   8:	0e                   	push   %cs
   9:	1b 0e                	sbb    (%esi),%ecx
   b:	11 01                	adc    %eax,(%ecx)
   d:	12 06                	adc    (%esi),%al
   f:	10 17                	adc    %dl,(%edi)
  11:	00 00                	add    %al,(%eax)
  13:	02 24 00             	add    (%eax,%eax,1),%ah
  16:	0b 0b                	or     (%ebx),%ecx
  18:	3e 0b 03             	or     %ds:(%ebx),%eax
  1b:	08 00                	or     %al,(%eax)
  1d:	00 03                	add    %al,(%ebx)
  1f:	24 00                	and    $0x0,%al
  21:	0b 0b                	or     (%ebx),%ecx
  23:	3e 0b 03             	or     %ds:(%ebx),%eax
  26:	0e                   	push   %cs
  27:	00 00                	add    %al,(%eax)
  29:	04 2e                	add    $0x2e,%al
  2b:	01 3f                	add    %edi,(%edi)
  2d:	19 03                	sbb    %eax,(%ebx)
  2f:	0e                   	push   %cs
  30:	3a 0b                	cmp    (%ebx),%cl
  32:	3b 0b                	cmp    (%ebx),%ecx
  34:	27                   	daa    
  35:	19 49 13             	sbb    %ecx,0x13(%ecx)
  38:	11 01                	adc    %eax,(%ecx)
  3a:	12 06                	adc    (%esi),%al
  3c:	40                   	inc    %eax
  3d:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
  43:	00 00                	add    %al,(%eax)
  45:	05 05 00 03 0e       	add    $0xe030005,%eax
  4a:	3a 0b                	cmp    (%ebx),%cl
  4c:	3b 0b                	cmp    (%ebx),%ecx
  4e:	49                   	dec    %ecx
  4f:	13 02                	adc    (%edx),%eax
  51:	18 00                	sbb    %al,(%eax)
  53:	00 06                	add    %al,(%esi)
  55:	34 00                	xor    $0x0,%al
  57:	03 08                	add    (%eax),%ecx
  59:	3a 0b                	cmp    (%ebx),%cl
  5b:	3b 0b                	cmp    (%ebx),%ecx
  5d:	49                   	dec    %ecx
  5e:	13 02                	adc    (%edx),%eax
  60:	17                   	pop    %ss
  61:	00 00                	add    %al,(%eax)
  63:	07                   	pop    %es
  64:	34 00                	xor    $0x0,%al
  66:	03 08                	add    (%eax),%ecx
  68:	3a 0b                	cmp    (%ebx),%cl
  6a:	3b 0b                	cmp    (%ebx),%ecx
  6c:	49                   	dec    %ecx
  6d:	13 02                	adc    (%edx),%eax
  6f:	18 00                	sbb    %al,(%eax)
  71:	00 08                	add    %cl,(%eax)
  73:	89 82 01 01 11 01    	mov    %eax,0x1110101(%edx)
  79:	31 13                	xor    %edx,(%ebx)
  7b:	01 13                	add    %edx,(%ebx)
  7d:	00 00                	add    %al,(%eax)
  7f:	09 8a 82 01 00 02    	or     %ecx,0x2000182(%edx)
  85:	18 91 42 18 00 00    	sbb    %dl,0x1842(%ecx)
  8b:	0a 89 82 01 01 11    	or     0x11010182(%ecx),%cl
  91:	01 31                	add    %esi,(%ecx)
  93:	13 00                	adc    (%eax),%eax
  95:	00 0b                	add    %cl,(%ebx)
  97:	0f 00 0b             	str    (%ebx)
  9a:	0b 49 13             	or     0x13(%ecx),%ecx
  9d:	00 00                	add    %al,(%eax)
  9f:	0c 01                	or     $0x1,%al
  a1:	01 49 13             	add    %ecx,0x13(%ecx)
  a4:	01 13                	add    %edx,(%ebx)
  a6:	00 00                	add    %al,(%eax)
  a8:	0d 21 00 49 13       	or     $0x13490021,%eax
  ad:	2f                   	das    
  ae:	0b 00                	or     (%eax),%eax
  b0:	00 0e                	add    %cl,(%esi)
  b2:	2e 01 3f             	add    %edi,%cs:(%edi)
  b5:	19 03                	sbb    %eax,(%ebx)
  b7:	0e                   	push   %cs
  b8:	3a 0b                	cmp    (%ebx),%cl
  ba:	3b 0b                	cmp    (%ebx),%ecx
  bc:	27                   	daa    
  bd:	19 49 13             	sbb    %ecx,0x13(%ecx)
  c0:	3c 19                	cmp    $0x19,%al
  c2:	01 13                	add    %edx,(%ebx)
  c4:	00 00                	add    %al,(%eax)
  c6:	0f 05                	syscall 
  c8:	00 49 13             	add    %cl,0x13(%ecx)
  cb:	00 00                	add    %al,(%eax)
  cd:	10 26                	adc    %ah,(%esi)
  cf:	00 49 13             	add    %cl,0x13(%ecx)
  d2:	00 00                	add    %al,(%eax)
  d4:	11 0f                	adc    %ecx,(%edi)
  d6:	00 0b                	add    %cl,(%ebx)
  d8:	0b 00                	or     (%eax),%eax
  da:	00 00                	add    %al,(%eax)
  dc:	01 11                	add    %edx,(%ecx)
  de:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
  e4:	0e                   	push   %cs
  e5:	1b 0e                	sbb    (%esi),%ecx
  e7:	11 01                	adc    %eax,(%ecx)
  e9:	12 06                	adc    (%esi),%al
  eb:	10 17                	adc    %dl,(%edi)
  ed:	00 00                	add    %al,(%eax)
  ef:	02 24 00             	add    (%eax,%eax,1),%ah
  f2:	0b 0b                	or     (%ebx),%ecx
  f4:	3e 0b 03             	or     %ds:(%ebx),%eax
  f7:	08 00                	or     %al,(%eax)
  f9:	00 03                	add    %al,(%ebx)
  fb:	2e 01 3f             	add    %edi,%cs:(%edi)
  fe:	19 03                	sbb    %eax,(%ebx)
 100:	0e                   	push   %cs
 101:	3a 0b                	cmp    (%ebx),%cl
 103:	3b 0b                	cmp    (%ebx),%ecx
 105:	27                   	daa    
 106:	19 11                	sbb    %edx,(%ecx)
 108:	01 12                	add    %edx,(%edx)
 10a:	06                   	push   %es
 10b:	40                   	inc    %eax
 10c:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 112:	00 00                	add    %al,(%eax)
 114:	04 05                	add    $0x5,%al
 116:	00 03                	add    %al,(%ebx)
 118:	0e                   	push   %cs
 119:	3a 0b                	cmp    (%ebx),%cl
 11b:	3b 0b                	cmp    (%ebx),%ecx
 11d:	49                   	dec    %ecx
 11e:	13 02                	adc    (%edx),%eax
 120:	18 00                	sbb    %al,(%eax)
 122:	00 05 89 82 01 01    	add    %al,0x1018289
 128:	11 01                	adc    %eax,(%ecx)
 12a:	31 13                	xor    %edx,(%ebx)
 12c:	01 13                	add    %edx,(%ebx)
 12e:	00 00                	add    %al,(%eax)
 130:	06                   	push   %es
 131:	8a 82 01 00 02 18    	mov    0x18020001(%edx),%al
 137:	91                   	xchg   %eax,%ecx
 138:	42                   	inc    %edx
 139:	18 00                	sbb    %al,(%eax)
 13b:	00 07                	add    %al,(%edi)
 13d:	89 82 01 00 11 01    	mov    %eax,0x1110001(%edx)
 143:	31 13                	xor    %edx,(%ebx)
 145:	00 00                	add    %al,(%eax)
 147:	08 0f                	or     %cl,(%edi)
 149:	00 0b                	add    %cl,(%ebx)
 14b:	0b 49 13             	or     0x13(%ecx),%ecx
 14e:	00 00                	add    %al,(%eax)
 150:	09 24 00             	or     %esp,(%eax,%eax,1)
 153:	0b 0b                	or     (%ebx),%ecx
 155:	3e 0b 03             	or     %ds:(%ebx),%eax
 158:	0e                   	push   %cs
 159:	00 00                	add    %al,(%eax)
 15b:	0a 2e                	or     (%esi),%ch
 15d:	01 3f                	add    %edi,(%edi)
 15f:	19 03                	sbb    %eax,(%ebx)
 161:	0e                   	push   %cs
 162:	3a 0b                	cmp    (%ebx),%cl
 164:	3b 0b                	cmp    (%ebx),%ecx
 166:	27                   	daa    
 167:	19 49 13             	sbb    %ecx,0x13(%ecx)
 16a:	3c 19                	cmp    $0x19,%al
 16c:	01 13                	add    %edx,(%ebx)
 16e:	00 00                	add    %al,(%eax)
 170:	0b 05 00 49 13 00    	or     0x134900,%eax
 176:	00 0c 2e             	add    %cl,(%esi,%ebp,1)
 179:	01 3f                	add    %edi,(%edi)
 17b:	19 03                	sbb    %eax,(%ebx)
 17d:	0e                   	push   %cs
 17e:	3a 0b                	cmp    (%ebx),%cl
 180:	3b 0b                	cmp    (%ebx),%ecx
 182:	27                   	daa    
 183:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 186:	00 00                	add    %al,(%eax)
 188:	00 01                	add    %al,(%ecx)
 18a:	11 01                	adc    %eax,(%ecx)
 18c:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 191:	0e                   	push   %cs
 192:	1b 0e                	sbb    (%esi),%ecx
 194:	11 01                	adc    %eax,(%ecx)
 196:	12 06                	adc    (%esi),%al
 198:	10 17                	adc    %dl,(%edi)
 19a:	00 00                	add    %al,(%eax)
 19c:	02 16                	add    (%esi),%dl
 19e:	00 03                	add    %al,(%ebx)
 1a0:	0e                   	push   %cs
 1a1:	3a 0b                	cmp    (%ebx),%cl
 1a3:	3b 0b                	cmp    (%ebx),%ecx
 1a5:	49                   	dec    %ecx
 1a6:	13 00                	adc    (%eax),%eax
 1a8:	00 03                	add    %al,(%ebx)
 1aa:	24 00                	and    $0x0,%al
 1ac:	0b 0b                	or     (%ebx),%ecx
 1ae:	3e 0b 03             	or     %ds:(%ebx),%eax
 1b1:	08 00                	or     %al,(%eax)
 1b3:	00 04 0f             	add    %al,(%edi,%ecx,1)
 1b6:	00 0b                	add    %cl,(%ebx)
 1b8:	0b 49 13             	or     0x13(%ecx),%ecx
 1bb:	00 00                	add    %al,(%eax)
 1bd:	05 15 01 27 19       	add    $0x19270115,%eax
 1c2:	49                   	dec    %ecx
 1c3:	13 01                	adc    (%ecx),%eax
 1c5:	13 00                	adc    (%eax),%eax
 1c7:	00 06                	add    %al,(%esi)
 1c9:	05 00 49 13 00       	add    $0x134900,%eax
 1ce:	00 07                	add    %al,(%edi)
 1d0:	24 00                	and    $0x0,%al
 1d2:	0b 0b                	or     (%ebx),%ecx
 1d4:	3e 0b 03             	or     %ds:(%ebx),%eax
 1d7:	0e                   	push   %cs
 1d8:	00 00                	add    %al,(%eax)
 1da:	08 04 01             	or     %al,(%ecx,%eax,1)
 1dd:	0b 0b                	or     (%ebx),%ecx
 1df:	3a 0b                	cmp    (%ebx),%cl
 1e1:	3b 0b                	cmp    (%ebx),%ecx
 1e3:	01 13                	add    %edx,(%ebx)
 1e5:	00 00                	add    %al,(%eax)
 1e7:	09 28                	or     %ebp,(%eax)
 1e9:	00 03                	add    %al,(%ebx)
 1eb:	0e                   	push   %cs
 1ec:	1c 0d                	sbb    $0xd,%al
 1ee:	00 00                	add    %al,(%eax)
 1f0:	0a 2e                	or     (%esi),%ch
 1f2:	01 3f                	add    %edi,(%edi)
 1f4:	19 03                	sbb    %eax,(%ebx)
 1f6:	0e                   	push   %cs
 1f7:	3a 0b                	cmp    (%ebx),%cl
 1f9:	3b 0b                	cmp    (%ebx),%ecx
 1fb:	27                   	daa    
 1fc:	19 11                	sbb    %edx,(%ecx)
 1fe:	01 12                	add    %edx,(%edx)
 200:	06                   	push   %es
 201:	40                   	inc    %eax
 202:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 208:	00 00                	add    %al,(%eax)
 20a:	0b 34 00             	or     (%eax,%eax,1),%esi
 20d:	03 0e                	add    (%esi),%ecx
 20f:	49                   	dec    %ecx
 210:	13 34 19             	adc    (%ecx,%ebx,1),%esi
 213:	02 18                	add    (%eax),%bl
 215:	00 00                	add    %al,(%eax)
 217:	0c 0b                	or     $0xb,%al
 219:	01 11                	add    %edx,(%ecx)
 21b:	01 12                	add    %edx,(%edx)
 21d:	06                   	push   %es
 21e:	01 13                	add    %edx,(%ebx)
 220:	00 00                	add    %al,(%eax)
 222:	0d 34 00 03 0e       	or     $0xe030034,%eax
 227:	3a 0b                	cmp    (%ebx),%cl
 229:	3b 0b                	cmp    (%ebx),%ecx
 22b:	49                   	dec    %ecx
 22c:	13 00                	adc    (%eax),%eax
 22e:	00 0e                	add    %cl,(%esi)
 230:	89 82 01 01 11 01    	mov    %eax,0x1110101(%edx)
 236:	31 13                	xor    %edx,(%ebx)
 238:	00 00                	add    %al,(%eax)
 23a:	0f 8a 82 01 00 02    	jp     20003c2 <__executable_start-0x6047cd2>
 240:	18 91 42 18 00 00    	sbb    %dl,0x1842(%ecx)
 246:	10 01                	adc    %al,(%ecx)
 248:	01 49 13             	add    %ecx,0x13(%ecx)
 24b:	01 13                	add    %edx,(%ebx)
 24d:	00 00                	add    %al,(%eax)
 24f:	11 21                	adc    %esp,(%ecx)
 251:	00 49 13             	add    %cl,0x13(%ecx)
 254:	2f                   	das    
 255:	0b 00                	or     (%eax),%eax
 257:	00 12                	add    %dl,(%edx)
 259:	26 00 49 13          	add    %cl,%es:0x13(%ecx)
 25d:	00 00                	add    %al,(%eax)
 25f:	13 05 00 03 0e 3a    	adc    0x3a0e0300,%eax
 265:	0b 3b                	or     (%ebx),%edi
 267:	0b 49 13             	or     0x13(%ecx),%ecx
 26a:	02 18                	add    (%eax),%bl
 26c:	00 00                	add    %al,(%eax)
 26e:	14 2e                	adc    $0x2e,%al
 270:	01 3f                	add    %edi,(%edi)
 272:	19 03                	sbb    %eax,(%ebx)
 274:	0e                   	push   %cs
 275:	3a 0b                	cmp    (%ebx),%cl
 277:	3b 0b                	cmp    (%ebx),%ecx
 279:	27                   	daa    
 27a:	19 49 13             	sbb    %ecx,0x13(%ecx)
 27d:	11 01                	adc    %eax,(%ecx)
 27f:	12 06                	adc    (%esi),%al
 281:	40                   	inc    %eax
 282:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 288:	00 00                	add    %al,(%eax)
 28a:	15 0b 01 11 01       	adc    $0x111010b,%eax
 28f:	12 06                	adc    (%esi),%al
 291:	00 00                	add    %al,(%eax)
 293:	16                   	push   %ss
 294:	34 00                	xor    $0x0,%al
 296:	03 0e                	add    (%esi),%ecx
 298:	3a 0b                	cmp    (%ebx),%cl
 29a:	3b 0b                	cmp    (%ebx),%ecx
 29c:	49                   	dec    %ecx
 29d:	13 02                	adc    (%edx),%eax
 29f:	18 00                	sbb    %al,(%eax)
 2a1:	00 17                	add    %dl,(%edi)
 2a3:	05 00 03 08 3a       	add    $0x3a080300,%eax
 2a8:	0b 3b                	or     (%ebx),%edi
 2aa:	0b 49 13             	or     0x13(%ecx),%ecx
 2ad:	02 18                	add    (%eax),%bl
 2af:	00 00                	add    %al,(%eax)
 2b1:	18 34 00             	sbb    %dh,(%eax,%eax,1)
 2b4:	03 0e                	add    (%esi),%ecx
 2b6:	3a 0b                	cmp    (%ebx),%cl
 2b8:	3b 0b                	cmp    (%ebx),%ecx
 2ba:	49                   	dec    %ecx
 2bb:	13 02                	adc    (%edx),%eax
 2bd:	17                   	pop    %ss
 2be:	00 00                	add    %al,(%eax)
 2c0:	19 0f                	sbb    %ecx,(%edi)
 2c2:	00 0b                	add    %cl,(%ebx)
 2c4:	0b 00                	or     (%eax),%eax
 2c6:	00 1a                	add    %bl,(%edx)
 2c8:	26 00 00             	add    %al,%es:(%eax)
 2cb:	00 1b                	add    %bl,(%ebx)
 2cd:	2e 01 3f             	add    %edi,%cs:(%edi)
 2d0:	19 03                	sbb    %eax,(%ebx)
 2d2:	0e                   	push   %cs
 2d3:	3a 0b                	cmp    (%ebx),%cl
 2d5:	3b 0b                	cmp    (%ebx),%ecx
 2d7:	27                   	daa    
 2d8:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 2db:	00 00                	add    %al,(%eax)
 2dd:	1c 18                	sbb    $0x18,%al
 2df:	00 00                	add    %al,(%eax)
 2e1:	00 00                	add    %al,(%eax)
 2e3:	01 11                	add    %edx,(%ecx)
 2e5:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 2eb:	0e                   	push   %cs
 2ec:	1b 0e                	sbb    (%esi),%ecx
 2ee:	11 01                	adc    %eax,(%ecx)
 2f0:	12 06                	adc    (%esi),%al
 2f2:	10 17                	adc    %dl,(%edi)
 2f4:	00 00                	add    %al,(%eax)
 2f6:	02 16                	add    (%esi),%dl
 2f8:	00 03                	add    %al,(%ebx)
 2fa:	0e                   	push   %cs
 2fb:	3a 0b                	cmp    (%ebx),%cl
 2fd:	3b 0b                	cmp    (%ebx),%ecx
 2ff:	49                   	dec    %ecx
 300:	13 00                	adc    (%eax),%eax
 302:	00 03                	add    %al,(%ebx)
 304:	0f 00 0b             	str    (%ebx)
 307:	0b 03                	or     (%ebx),%eax
 309:	0e                   	push   %cs
 30a:	49                   	dec    %ecx
 30b:	13 00                	adc    (%eax),%eax
 30d:	00 04 24             	add    %al,(%esp)
 310:	00 0b                	add    %cl,(%ebx)
 312:	0b 3e                	or     (%esi),%edi
 314:	0b 03                	or     (%ebx),%eax
 316:	0e                   	push   %cs
 317:	00 00                	add    %al,(%eax)
 319:	05 24 00 0b 0b       	add    $0xb0b0024,%eax
 31e:	3e 0b 03             	or     %ds:(%ebx),%eax
 321:	08 00                	or     %al,(%eax)
 323:	00 06                	add    %al,(%esi)
 325:	2e 01 3f             	add    %edi,%cs:(%edi)
 328:	19 03                	sbb    %eax,(%ebx)
 32a:	0e                   	push   %cs
 32b:	3a 0b                	cmp    (%ebx),%cl
 32d:	3b 0b                	cmp    (%ebx),%ecx
 32f:	27                   	daa    
 330:	19 11                	sbb    %edx,(%ecx)
 332:	01 12                	add    %edx,(%edx)
 334:	06                   	push   %es
 335:	40                   	inc    %eax
 336:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 33c:	00 00                	add    %al,(%eax)
 33e:	07                   	pop    %es
 33f:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 344:	0b 3b                	or     (%ebx),%edi
 346:	0b 49 13             	or     0x13(%ecx),%ecx
 349:	02 18                	add    (%eax),%bl
 34b:	00 00                	add    %al,(%eax)
 34d:	08 18                	or     %bl,(%eax)
 34f:	00 00                	add    %al,(%eax)
 351:	00 09                	add    %cl,(%ecx)
 353:	34 00                	xor    $0x0,%al
 355:	03 0e                	add    (%esi),%ecx
 357:	3a 0b                	cmp    (%ebx),%cl
 359:	3b 0b                	cmp    (%ebx),%ecx
 35b:	49                   	dec    %ecx
 35c:	13 02                	adc    (%edx),%eax
 35e:	17                   	pop    %ss
 35f:	00 00                	add    %al,(%eax)
 361:	0a 89 82 01 01 11    	or     0x11010182(%ecx),%cl
 367:	01 31                	add    %esi,(%ecx)
 369:	13 01                	adc    (%ecx),%eax
 36b:	13 00                	adc    (%eax),%eax
 36d:	00 0b                	add    %cl,(%ebx)
 36f:	8a 82 01 00 02 18    	mov    0x18020001(%edx),%al
 375:	91                   	xchg   %eax,%ecx
 376:	42                   	inc    %edx
 377:	18 00                	sbb    %al,(%eax)
 379:	00 0c 89             	add    %cl,(%ecx,%ecx,4)
 37c:	82                   	(bad)  
 37d:	01 00                	add    %eax,(%eax)
 37f:	11 01                	adc    %eax,(%ecx)
 381:	31 13                	xor    %edx,(%ebx)
 383:	00 00                	add    %al,(%eax)
 385:	0d 89 82 01 01       	or     $0x1018289,%eax
 38a:	11 01                	adc    %eax,(%ecx)
 38c:	31 13                	xor    %edx,(%ebx)
 38e:	00 00                	add    %al,(%eax)
 390:	0e                   	push   %cs
 391:	0f 00 0b             	str    (%ebx)
 394:	0b 49 13             	or     0x13(%ecx),%ecx
 397:	00 00                	add    %al,(%eax)
 399:	0f 26                	(bad)  
 39b:	00 49 13             	add    %cl,0x13(%ecx)
 39e:	00 00                	add    %al,(%eax)
 3a0:	10 2e                	adc    %ch,(%esi)
 3a2:	01 3f                	add    %edi,(%edi)
 3a4:	19 03                	sbb    %eax,(%ebx)
 3a6:	0e                   	push   %cs
 3a7:	3a 0b                	cmp    (%ebx),%cl
 3a9:	3b 0b                	cmp    (%ebx),%ecx
 3ab:	27                   	daa    
 3ac:	19 49 13             	sbb    %ecx,0x13(%ecx)
 3af:	3c 19                	cmp    $0x19,%al
 3b1:	01 13                	add    %edx,(%ebx)
 3b3:	00 00                	add    %al,(%eax)
 3b5:	11 05 00 49 13 00    	adc    %eax,0x134900
 3bb:	00 12                	add    %dl,(%edx)
 3bd:	2e 01 3f             	add    %edi,%cs:(%edi)
 3c0:	19 03                	sbb    %eax,(%ebx)
 3c2:	0e                   	push   %cs
 3c3:	3a 0b                	cmp    (%ebx),%cl
 3c5:	3b 0b                	cmp    (%ebx),%ecx
 3c7:	6e                   	outsb  %ds:(%esi),(%dx)
 3c8:	0e                   	push   %cs
 3c9:	27                   	daa    
 3ca:	19 49 13             	sbb    %ecx,0x13(%ecx)
 3cd:	3c 19                	cmp    $0x19,%al
 3cf:	01 13                	add    %edx,(%ebx)
 3d1:	00 00                	add    %al,(%eax)
 3d3:	13 2e                	adc    (%esi),%ebp
 3d5:	00 3f                	add    %bh,(%edi)
 3d7:	19 03                	sbb    %eax,(%ebx)
 3d9:	0e                   	push   %cs
 3da:	3a 0b                	cmp    (%ebx),%cl
 3dc:	3b 0b                	cmp    (%ebx),%ecx
 3de:	27                   	daa    
 3df:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 3e2:	00 00                	add    %al,(%eax)
 3e4:	14 2e                	adc    $0x2e,%al
 3e6:	01 3f                	add    %edi,(%edi)
 3e8:	19 03                	sbb    %eax,(%ebx)
 3ea:	0e                   	push   %cs
 3eb:	3a 0b                	cmp    (%ebx),%cl
 3ed:	3b 0b                	cmp    (%ebx),%ecx
 3ef:	27                   	daa    
 3f0:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 3f3:	00 00                	add    %al,(%eax)
 3f5:	00 01                	add    %al,(%ecx)
 3f7:	11 01                	adc    %eax,(%ecx)
 3f9:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 3fe:	0e                   	push   %cs
 3ff:	1b 0e                	sbb    (%esi),%ecx
 401:	11 01                	adc    %eax,(%ecx)
 403:	12 06                	adc    (%esi),%al
 405:	10 17                	adc    %dl,(%edi)
 407:	00 00                	add    %al,(%eax)
 409:	02 16                	add    (%esi),%dl
 40b:	00 03                	add    %al,(%ebx)
 40d:	0e                   	push   %cs
 40e:	3a 0b                	cmp    (%ebx),%cl
 410:	3b 0b                	cmp    (%ebx),%ecx
 412:	49                   	dec    %ecx
 413:	13 00                	adc    (%eax),%eax
 415:	00 03                	add    %al,(%ebx)
 417:	0f 00 0b             	str    (%ebx)
 41a:	0b 03                	or     (%ebx),%eax
 41c:	0e                   	push   %cs
 41d:	49                   	dec    %ecx
 41e:	13 00                	adc    (%eax),%eax
 420:	00 04 24             	add    %al,(%esp)
 423:	00 0b                	add    %cl,(%ebx)
 425:	0b 3e                	or     (%esi),%edi
 427:	0b 03                	or     (%ebx),%eax
 429:	0e                   	push   %cs
 42a:	00 00                	add    %al,(%eax)
 42c:	05 24 00 0b 0b       	add    $0xb0b0024,%eax
 431:	3e 0b 03             	or     %ds:(%ebx),%eax
 434:	08 00                	or     %al,(%eax)
 436:	00 06                	add    %al,(%esi)
 438:	13 01                	adc    (%ecx),%eax
 43a:	03 0e                	add    (%esi),%ecx
 43c:	0b 0b                	or     (%ebx),%ecx
 43e:	3a 0b                	cmp    (%ebx),%cl
 440:	3b 0b                	cmp    (%ebx),%ecx
 442:	01 13                	add    %edx,(%ebx)
 444:	00 00                	add    %al,(%eax)
 446:	07                   	pop    %es
 447:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 44c:	0b 3b                	or     (%ebx),%edi
 44e:	0b 49 13             	or     0x13(%ecx),%ecx
 451:	38 0b                	cmp    %cl,(%ebx)
 453:	00 00                	add    %al,(%eax)
 455:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300
 45b:	0b 3b                	or     (%ebx),%edi
 45d:	0b 49 13             	or     0x13(%ecx),%ecx
 460:	38 0b                	cmp    %cl,(%ebx)
 462:	00 00                	add    %al,(%eax)
 464:	09 01                	or     %eax,(%ecx)
 466:	01 49 13             	add    %ecx,0x13(%ecx)
 469:	01 13                	add    %edx,(%ebx)
 46b:	00 00                	add    %al,(%eax)
 46d:	0a 21                	or     (%ecx),%ah
 46f:	00 49 13             	add    %cl,0x13(%ecx)
 472:	2f                   	das    
 473:	0b 00                	or     (%eax),%eax
 475:	00 0b                	add    %cl,(%ebx)
 477:	0f 00 0b             	str    (%ebx)
 47a:	0b 49 13             	or     0x13(%ecx),%ecx
 47d:	00 00                	add    %al,(%eax)
 47f:	0c 2e                	or     $0x2e,%al
 481:	01 03                	add    %eax,(%ebx)
 483:	0e                   	push   %cs
 484:	3a 0b                	cmp    (%ebx),%cl
 486:	3b 0b                	cmp    (%ebx),%ecx
 488:	27                   	daa    
 489:	19 11                	sbb    %edx,(%ecx)
 48b:	01 12                	add    %edx,(%edx)
 48d:	06                   	push   %es
 48e:	40                   	inc    %eax
 48f:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 495:	00 00                	add    %al,(%eax)
 497:	0d 05 00 03 08       	or     $0x8030005,%eax
 49c:	3a 0b                	cmp    (%ebx),%cl
 49e:	3b 0b                	cmp    (%ebx),%ecx
 4a0:	49                   	dec    %ecx
 4a1:	13 02                	adc    (%edx),%eax
 4a3:	17                   	pop    %ss
 4a4:	00 00                	add    %al,(%eax)
 4a6:	0e                   	push   %cs
 4a7:	89 82 01 01 11 01    	mov    %eax,0x1110101(%edx)
 4ad:	31 13                	xor    %edx,(%ebx)
 4af:	00 00                	add    %al,(%eax)
 4b1:	0f 8a 82 01 00 02    	jp     2000639 <__executable_start-0x6047a5b>
 4b7:	18 91 42 18 00 00    	sbb    %dl,0x1842(%ecx)
 4bd:	10 05 00 03 08 3a    	adc    %al,0x3a080300
 4c3:	0b 3b                	or     (%ebx),%edi
 4c5:	0b 49 13             	or     0x13(%ecx),%ecx
 4c8:	02 18                	add    (%eax),%bl
 4ca:	00 00                	add    %al,(%eax)
 4cc:	11 05 00 03 0e 3a    	adc    %eax,0x3a0e0300
 4d2:	0b 3b                	or     (%ebx),%edi
 4d4:	0b 49 13             	or     0x13(%ecx),%ecx
 4d7:	02 18                	add    (%eax),%bl
 4d9:	00 00                	add    %al,(%eax)
 4db:	12 34 00             	adc    (%eax,%eax,1),%dh
 4de:	03 08                	add    (%eax),%ecx
 4e0:	3a 0b                	cmp    (%ebx),%cl
 4e2:	3b 0b                	cmp    (%ebx),%ecx
 4e4:	49                   	dec    %ecx
 4e5:	13 02                	adc    (%edx),%eax
 4e7:	17                   	pop    %ss
 4e8:	00 00                	add    %al,(%eax)
 4ea:	13 0f                	adc    (%edi),%ecx
 4ec:	00 0b                	add    %cl,(%ebx)
 4ee:	0b 00                	or     (%eax),%eax
 4f0:	00 14 2e             	add    %dl,(%esi,%ebp,1)
 4f3:	01 3f                	add    %edi,(%edi)
 4f5:	19 03                	sbb    %eax,(%ebx)
 4f7:	0e                   	push   %cs
 4f8:	3a 0b                	cmp    (%ebx),%cl
 4fa:	3b 0b                	cmp    (%ebx),%ecx
 4fc:	27                   	daa    
 4fd:	19 49 13             	sbb    %ecx,0x13(%ecx)
 500:	11 01                	adc    %eax,(%ecx)
 502:	12 06                	adc    (%esi),%al
 504:	40                   	inc    %eax
 505:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 50b:	00 00                	add    %al,(%eax)
 50d:	15 34 00 03 08       	adc    $0x8030034,%eax
 512:	3a 0b                	cmp    (%ebx),%cl
 514:	3b 0b                	cmp    (%ebx),%ecx
 516:	49                   	dec    %ecx
 517:	13 02                	adc    (%edx),%eax
 519:	18 00                	sbb    %al,(%eax)
 51b:	00 16                	add    %dl,(%esi)
 51d:	89 82 01 01 11 01    	mov    %eax,0x1110101(%edx)
 523:	31 13                	xor    %edx,(%ebx)
 525:	01 13                	add    %edx,(%ebx)
 527:	00 00                	add    %al,(%eax)
 529:	17                   	pop    %ss
 52a:	26 00 49 13          	add    %cl,%es:0x13(%ecx)
 52e:	00 00                	add    %al,(%eax)
 530:	18 18                	sbb    %bl,(%eax)
 532:	00 00                	add    %al,(%eax)
 534:	00 19                	add    %bl,(%ecx)
 536:	34 00                	xor    $0x0,%al
 538:	03 0e                	add    (%esi),%ecx
 53a:	3a 0b                	cmp    (%ebx),%cl
 53c:	3b 0b                	cmp    (%ebx),%ecx
 53e:	49                   	dec    %ecx
 53f:	13 02                	adc    (%edx),%eax
 541:	17                   	pop    %ss
 542:	00 00                	add    %al,(%eax)
 544:	1a 34 00             	sbb    (%eax,%eax,1),%dh
 547:	03 0e                	add    (%esi),%ecx
 549:	3a 0b                	cmp    (%ebx),%cl
 54b:	3b 0b                	cmp    (%ebx),%ecx
 54d:	49                   	dec    %ecx
 54e:	13 02                	adc    (%edx),%eax
 550:	18 00                	sbb    %al,(%eax)
 552:	00 1b                	add    %bl,(%ebx)
 554:	2e 01 3f             	add    %edi,%cs:(%edi)
 557:	19 03                	sbb    %eax,(%ebx)
 559:	0e                   	push   %cs
 55a:	3a 0b                	cmp    (%ebx),%cl
 55c:	3b 0b                	cmp    (%ebx),%ecx
 55e:	27                   	daa    
 55f:	19 49 13             	sbb    %ecx,0x13(%ecx)
 562:	3c 19                	cmp    $0x19,%al
 564:	01 13                	add    %edx,(%ebx)
 566:	00 00                	add    %al,(%eax)
 568:	1c 05                	sbb    $0x5,%al
 56a:	00 49 13             	add    %cl,0x13(%ecx)
 56d:	00 00                	add    %al,(%eax)
 56f:	1d 26 00 00 00       	sbb    $0x26,%eax
 574:	1e                   	push   %ds
 575:	2e 01 3f             	add    %edi,%cs:(%edi)
 578:	19 03                	sbb    %eax,(%ebx)
 57a:	0e                   	push   %cs
 57b:	3a 0b                	cmp    (%ebx),%cl
 57d:	3b 0b                	cmp    (%ebx),%ecx
 57f:	27                   	daa    
 580:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 583:	01 13                	add    %edx,(%ebx)
 585:	00 00                	add    %al,(%eax)
 587:	1f                   	pop    %ds
 588:	15 01 27 19 00       	adc    $0x192701,%eax
 58d:	00 00                	add    %al,(%eax)
 58f:	01 11                	add    %edx,(%ecx)
 591:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
 597:	0e                   	push   %cs
 598:	1b 0e                	sbb    (%esi),%ecx
 59a:	11 01                	adc    %eax,(%ecx)
 59c:	12 06                	adc    (%esi),%al
 59e:	10 17                	adc    %dl,(%edi)
 5a0:	00 00                	add    %al,(%eax)
 5a2:	02 24 00             	add    (%eax,%eax,1),%ah
 5a5:	0b 0b                	or     (%ebx),%ecx
 5a7:	3e 0b 03             	or     %ds:(%ebx),%eax
 5aa:	0e                   	push   %cs
 5ab:	00 00                	add    %al,(%eax)
 5ad:	03 24 00             	add    (%eax,%eax,1),%esp
 5b0:	0b 0b                	or     (%ebx),%ecx
 5b2:	3e 0b 03             	or     %ds:(%ebx),%eax
 5b5:	08 00                	or     %al,(%eax)
 5b7:	00 04 16             	add    %al,(%esi,%edx,1)
 5ba:	00 03                	add    %al,(%ebx)
 5bc:	0e                   	push   %cs
 5bd:	3a 0b                	cmp    (%ebx),%cl
 5bf:	3b 0b                	cmp    (%ebx),%ecx
 5c1:	49                   	dec    %ecx
 5c2:	13 00                	adc    (%eax),%eax
 5c4:	00 05 2e 01 3f 19    	add    %al,0x193f012e
 5ca:	03 0e                	add    (%esi),%ecx
 5cc:	3a 0b                	cmp    (%ebx),%cl
 5ce:	3b 0b                	cmp    (%ebx),%ecx
 5d0:	27                   	daa    
 5d1:	19 11                	sbb    %edx,(%ecx)
 5d3:	01 12                	add    %edx,(%edx)
 5d5:	06                   	push   %es
 5d6:	40                   	inc    %eax
 5d7:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 5dd:	00 00                	add    %al,(%eax)
 5df:	06                   	push   %es
 5e0:	34 00                	xor    $0x0,%al
 5e2:	03 0e                	add    (%esi),%ecx
 5e4:	3a 0b                	cmp    (%ebx),%cl
 5e6:	3b 0b                	cmp    (%ebx),%ecx
 5e8:	49                   	dec    %ecx
 5e9:	13 02                	adc    (%edx),%eax
 5eb:	18 00                	sbb    %al,(%eax)
 5ed:	00 07                	add    %al,(%edi)
 5ef:	34 00                	xor    $0x0,%al
 5f1:	03 0e                	add    (%esi),%ecx
 5f3:	3a 0b                	cmp    (%ebx),%cl
 5f5:	3b 0b                	cmp    (%ebx),%ecx
 5f7:	49                   	dec    %ecx
 5f8:	13 02                	adc    (%edx),%eax
 5fa:	17                   	pop    %ss
 5fb:	00 00                	add    %al,(%eax)
 5fd:	08 89 82 01 01 11    	or     %cl,0x11010182(%ecx)
 603:	01 31                	add    %esi,(%ecx)
 605:	13 01                	adc    (%ecx),%eax
 607:	13 00                	adc    (%eax),%eax
 609:	00 09                	add    %cl,(%ecx)
 60b:	8a 82 01 00 02 18    	mov    0x18020001(%edx),%al
 611:	91                   	xchg   %eax,%ecx
 612:	42                   	inc    %edx
 613:	18 00                	sbb    %al,(%eax)
 615:	00 0a                	add    %cl,(%edx)
 617:	89 82 01 01 11 01    	mov    %eax,0x1110101(%edx)
 61d:	31 13                	xor    %edx,(%ebx)
 61f:	00 00                	add    %al,(%eax)
 621:	0b 0f                	or     (%edi),%ecx
 623:	00 0b                	add    %cl,(%ebx)
 625:	0b 49 13             	or     0x13(%ecx),%ecx
 628:	00 00                	add    %al,(%eax)
 62a:	0c 0f                	or     $0xf,%al
 62c:	00 0b                	add    %cl,(%ebx)
 62e:	0b 00                	or     (%eax),%eax
 630:	00 0d 2e 01 3f 19    	add    %cl,0x193f012e
 636:	03 0e                	add    (%esi),%ecx
 638:	3a 0b                	cmp    (%ebx),%cl
 63a:	3b 0b                	cmp    (%ebx),%ecx
 63c:	27                   	daa    
 63d:	19 49 13             	sbb    %ecx,0x13(%ecx)
 640:	3c 19                	cmp    $0x19,%al
 642:	01 13                	add    %edx,(%ebx)
 644:	00 00                	add    %al,(%eax)
 646:	0e                   	push   %cs
 647:	05 00 49 13 00       	add    $0x134900,%eax
 64c:	00 0f                	add    %cl,(%edi)
 64e:	18 00                	sbb    %al,(%eax)
 650:	00 00                	add    %al,(%eax)
 652:	10 26                	adc    %ah,(%esi)
 654:	00 49 13             	add    %cl,0x13(%ecx)
 657:	00 00                	add    %al,(%eax)
 659:	11 2e                	adc    %ebp,(%esi)
 65b:	01 3f                	add    %edi,(%edi)
 65d:	19 03                	sbb    %eax,(%ebx)
 65f:	0e                   	push   %cs
 660:	3a 0b                	cmp    (%ebx),%cl
 662:	3b 0b                	cmp    (%ebx),%ecx
 664:	6e                   	outsb  %ds:(%esi),(%dx)
 665:	0e                   	push   %cs
 666:	27                   	daa    
 667:	19 49 13             	sbb    %ecx,0x13(%ecx)
 66a:	3c 19                	cmp    $0x19,%al
 66c:	00 00                	add    %al,(%eax)
 66e:	00 01                	add    %al,(%ecx)
 670:	11 01                	adc    %eax,(%ecx)
 672:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 677:	0e                   	push   %cs
 678:	1b 0e                	sbb    (%esi),%ecx
 67a:	11 01                	adc    %eax,(%ecx)
 67c:	12 06                	adc    (%esi),%al
 67e:	10 17                	adc    %dl,(%edi)
 680:	00 00                	add    %al,(%eax)
 682:	02 24 00             	add    (%eax,%eax,1),%ah
 685:	0b 0b                	or     (%ebx),%ecx
 687:	3e 0b 03             	or     %ds:(%ebx),%eax
 68a:	0e                   	push   %cs
 68b:	00 00                	add    %al,(%eax)
 68d:	03 24 00             	add    (%eax,%eax,1),%esp
 690:	0b 0b                	or     (%ebx),%ecx
 692:	3e 0b 03             	or     %ds:(%ebx),%eax
 695:	08 00                	or     %al,(%eax)
 697:	00 04 16             	add    %al,(%esi,%edx,1)
 69a:	00 03                	add    %al,(%ebx)
 69c:	0e                   	push   %cs
 69d:	3a 0b                	cmp    (%ebx),%cl
 69f:	3b 0b                	cmp    (%ebx),%ecx
 6a1:	49                   	dec    %ecx
 6a2:	13 00                	adc    (%eax),%eax
 6a4:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f
 6aa:	03 0e                	add    (%esi),%ecx
 6ac:	49                   	dec    %ecx
 6ad:	13 00                	adc    (%eax),%eax
 6af:	00 06                	add    %al,(%esi)
 6b1:	13 01                	adc    (%ecx),%eax
 6b3:	03 0e                	add    (%esi),%ecx
 6b5:	0b 0b                	or     (%ebx),%ecx
 6b7:	3a 0b                	cmp    (%ebx),%cl
 6b9:	3b 0b                	cmp    (%ebx),%ecx
 6bb:	01 13                	add    %edx,(%ebx)
 6bd:	00 00                	add    %al,(%eax)
 6bf:	07                   	pop    %es
 6c0:	0d 00 03 08 3a       	or     $0x3a080300,%eax
 6c5:	0b 3b                	or     (%ebx),%edi
 6c7:	0b 49 13             	or     0x13(%ecx),%ecx
 6ca:	38 0b                	cmp    %cl,(%ebx)
 6cc:	00 00                	add    %al,(%eax)
 6ce:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300
 6d4:	0b 3b                	or     (%ebx),%edi
 6d6:	0b 49 13             	or     0x13(%ecx),%ecx
 6d9:	38 0b                	cmp    %cl,(%ebx)
 6db:	00 00                	add    %al,(%eax)
 6dd:	09 0f                	or     %ecx,(%edi)
 6df:	00 0b                	add    %cl,(%ebx)
 6e1:	0b 49 13             	or     0x13(%ecx),%ecx
 6e4:	00 00                	add    %al,(%eax)
 6e6:	0a 04 01             	or     (%ecx,%eax,1),%al
 6e9:	0b 0b                	or     (%ebx),%ecx
 6eb:	3a 0b                	cmp    (%ebx),%cl
 6ed:	3b 0b                	cmp    (%ebx),%ecx
 6ef:	01 13                	add    %edx,(%ebx)
 6f1:	00 00                	add    %al,(%eax)
 6f3:	0b 28                	or     (%eax),%ebp
 6f5:	00 03                	add    %al,(%ebx)
 6f7:	0e                   	push   %cs
 6f8:	1c 0d                	sbb    $0xd,%al
 6fa:	00 00                	add    %al,(%eax)
 6fc:	0c 28                	or     $0x28,%al
 6fe:	00 03                	add    %al,(%ebx)
 700:	08 1c 0d 00 00 0d 26 	or     %bl,0x260d0000(,%ecx,1)
 707:	00 49 13             	add    %cl,0x13(%ecx)
 70a:	00 00                	add    %al,(%eax)
 70c:	0e                   	push   %cs
 70d:	2e 01 03             	add    %eax,%cs:(%ebx)
 710:	0e                   	push   %cs
 711:	3a 0b                	cmp    (%ebx),%cl
 713:	3b 0b                	cmp    (%ebx),%ecx
 715:	27                   	daa    
 716:	19 49 13             	sbb    %ecx,0x13(%ecx)
 719:	20 0b                	and    %cl,(%ebx)
 71b:	01 13                	add    %edx,(%ebx)
 71d:	00 00                	add    %al,(%eax)
 71f:	0f 05                	syscall 
 721:	00 03                	add    %al,(%ebx)
 723:	08 3a                	or     %bh,(%edx)
 725:	0b 3b                	or     (%ebx),%edi
 727:	0b 49 13             	or     0x13(%ecx),%ecx
 72a:	00 00                	add    %al,(%eax)
 72c:	10 2e                	adc    %ch,(%esi)
 72e:	01 03                	add    %eax,(%ebx)
 730:	0e                   	push   %cs
 731:	3a 0b                	cmp    (%ebx),%cl
 733:	3b 0b                	cmp    (%ebx),%ecx
 735:	27                   	daa    
 736:	19 11                	sbb    %edx,(%ecx)
 738:	01 12                	add    %edx,(%edx)
 73a:	06                   	push   %es
 73b:	40                   	inc    %eax
 73c:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 742:	00 00                	add    %al,(%eax)
 744:	11 05 00 03 08 3a    	adc    %eax,0x3a080300
 74a:	0b 3b                	or     (%ebx),%edi
 74c:	0b 49 13             	or     0x13(%ecx),%ecx
 74f:	02 18                	add    (%eax),%bl
 751:	00 00                	add    %al,(%eax)
 753:	12 05 00 03 0e 3a    	adc    0x3a0e0300,%al
 759:	0b 3b                	or     (%ebx),%edi
 75b:	0b 49 13             	or     0x13(%ecx),%ecx
 75e:	02 18                	add    (%eax),%bl
 760:	00 00                	add    %al,(%eax)
 762:	13 34 00             	adc    (%eax,%eax,1),%esi
 765:	03 08                	add    (%eax),%ecx
 767:	3a 0b                	cmp    (%ebx),%cl
 769:	3b 0b                	cmp    (%ebx),%ecx
 76b:	49                   	dec    %ecx
 76c:	13 02                	adc    (%edx),%eax
 76e:	18 00                	sbb    %al,(%eax)
 770:	00 14 0f             	add    %dl,(%edi,%ecx,1)
 773:	00 0b                	add    %cl,(%ebx)
 775:	0b 00                	or     (%eax),%eax
 777:	00 15 2e 01 03 0e    	add    %dl,0xe03012e
 77d:	3a 0b                	cmp    (%ebx),%cl
 77f:	3b 05 27 19 11 01    	cmp    0x1111927,%eax
 785:	12 06                	adc    (%esi),%al
 787:	40                   	inc    %eax
 788:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 78e:	00 00                	add    %al,(%eax)
 790:	16                   	push   %ss
 791:	05 00 03 08 3a       	add    $0x3a080300,%eax
 796:	0b 3b                	or     (%ebx),%edi
 798:	05 49 13 02 17       	add    $0x17021349,%eax
 79d:	00 00                	add    %al,(%eax)
 79f:	17                   	pop    %ss
 7a0:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 7a5:	0b 3b                	or     (%ebx),%edi
 7a7:	05 49 13 02 17       	add    $0x17021349,%eax
 7ac:	00 00                	add    %al,(%eax)
 7ae:	18 05 00 03 08 3a    	sbb    %al,0x3a080300
 7b4:	0b 3b                	or     (%ebx),%edi
 7b6:	05 49 13 02 18       	add    $0x18021349,%eax
 7bb:	00 00                	add    %al,(%eax)
 7bd:	19 89 82 01 01 11    	sbb    %ecx,0x11010182(%ecx)
 7c3:	01 00                	add    %eax,(%eax)
 7c5:	00 1a                	add    %bl,(%edx)
 7c7:	8a 82 01 00 02 18    	mov    0x18020001(%edx),%al
 7cd:	91                   	xchg   %eax,%ecx
 7ce:	42                   	inc    %edx
 7cf:	18 00                	sbb    %al,(%eax)
 7d1:	00 1b                	add    %bl,(%ebx)
 7d3:	15 01 27 19 01       	adc    $0x1192701,%eax
 7d8:	13 00                	adc    (%eax),%eax
 7da:	00 1c 05 00 49 13 00 	add    %bl,0x134900(,%eax,1)
 7e1:	00 1d 2e 01 03 0e    	add    %bl,0xe03012e
 7e7:	3a 0b                	cmp    (%ebx),%cl
 7e9:	3b 05 27 19 11 01    	cmp    0x1111927,%eax
 7ef:	12 06                	adc    (%esi),%al
 7f1:	40                   	inc    %eax
 7f2:	18 96 42 19 01 13    	sbb    %dl,0x13011942(%esi)
 7f8:	00 00                	add    %al,(%eax)
 7fa:	1e                   	push   %ds
 7fb:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 800:	0b 3b                	or     (%ebx),%edi
 802:	05 49 13 02 18       	add    $0x18021349,%eax
 807:	00 00                	add    %al,(%eax)
 809:	1f                   	pop    %ds
 80a:	34 00                	xor    $0x0,%al
 80c:	03 08                	add    (%eax),%ecx
 80e:	3a 0b                	cmp    (%ebx),%cl
 810:	3b 05 49 13 02 18    	cmp    0x18021349,%eax
 816:	00 00                	add    %al,(%eax)
 818:	20 34 00             	and    %dh,(%eax,%eax,1)
 81b:	03 08                	add    (%eax),%ecx
 81d:	3a 0b                	cmp    (%ebx),%cl
 81f:	3b 05 49 13 02 17    	cmp    0x17021349,%eax
 825:	00 00                	add    %al,(%eax)
 827:	21 34 00             	and    %esi,(%eax,%eax,1)
 82a:	03 0e                	add    (%esi),%ecx
 82c:	3a 0b                	cmp    (%ebx),%cl
 82e:	3b 05 49 13 02 17    	cmp    0x17021349,%eax
 834:	00 00                	add    %al,(%eax)
 836:	22 89 82 01 01 11    	and    0x11010182(%ecx),%cl
 83c:	01 31                	add    %esi,(%ecx)
 83e:	13 01                	adc    (%ecx),%eax
 840:	13 00                	adc    (%eax),%eax
 842:	00 23                	add    %ah,(%ebx)
 844:	89 82 01 01 11 01    	mov    %eax,0x1110101(%edx)
 84a:	01 13                	add    %edx,(%ebx)
 84c:	00 00                	add    %al,(%eax)
 84e:	24 89                	and    $0x89,%al
 850:	82                   	(bad)  
 851:	01 01                	add    %eax,(%ecx)
 853:	11 01                	adc    %eax,(%ecx)
 855:	31 13                	xor    %edx,(%ebx)
 857:	00 00                	add    %al,(%eax)
 859:	25 01 01 49 13       	and    $0x13490101,%eax
 85e:	01 13                	add    %edx,(%ebx)
 860:	00 00                	add    %al,(%eax)
 862:	26 21 00             	and    %eax,%es:(%eax)
 865:	49                   	dec    %ecx
 866:	13 2f                	adc    (%edi),%ebp
 868:	0b 00                	or     (%eax),%eax
 86a:	00 27                	add    %ah,(%edi)
 86c:	2e 01 3f             	add    %edi,%cs:(%edi)
 86f:	19 03                	sbb    %eax,(%ebx)
 871:	0e                   	push   %cs
 872:	3a 0b                	cmp    (%ebx),%cl
 874:	3b 0b                	cmp    (%ebx),%ecx
 876:	27                   	daa    
 877:	19 49 13             	sbb    %ecx,0x13(%ecx)
 87a:	11 01                	adc    %eax,(%ecx)
 87c:	12 06                	adc    (%esi),%al
 87e:	40                   	inc    %eax
 87f:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 885:	00 00                	add    %al,(%eax)
 887:	28 18                	sub    %bl,(%eax)
 889:	00 00                	add    %al,(%eax)
 88b:	00 29                	add    %ch,(%ecx)
 88d:	34 00                	xor    $0x0,%al
 88f:	03 0e                	add    (%esi),%ecx
 891:	3a 0b                	cmp    (%ebx),%cl
 893:	3b 0b                	cmp    (%ebx),%ecx
 895:	49                   	dec    %ecx
 896:	13 02                	adc    (%edx),%eax
 898:	17                   	pop    %ss
 899:	00 00                	add    %al,(%eax)
 89b:	2a 34 00             	sub    (%eax,%eax,1),%dh
 89e:	03 0e                	add    (%esi),%ecx
 8a0:	3a 0b                	cmp    (%ebx),%cl
 8a2:	3b 0b                	cmp    (%ebx),%ecx
 8a4:	49                   	dec    %ecx
 8a5:	13 02                	adc    (%edx),%eax
 8a7:	18 00                	sbb    %al,(%eax)
 8a9:	00 2b                	add    %ch,(%ebx)
 8ab:	2e 01 3f             	add    %edi,%cs:(%edi)
 8ae:	19 03                	sbb    %eax,(%ebx)
 8b0:	0e                   	push   %cs
 8b1:	3a 0b                	cmp    (%ebx),%cl
 8b3:	3b 05 27 19 11 01    	cmp    0x1111927,%eax
 8b9:	12 06                	adc    (%esi),%al
 8bb:	40                   	inc    %eax
 8bc:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 8c2:	00 00                	add    %al,(%eax)
 8c4:	2c 2e                	sub    $0x2e,%al
 8c6:	01 03                	add    %eax,(%ebx)
 8c8:	0e                   	push   %cs
 8c9:	3a 0b                	cmp    (%ebx),%cl
 8cb:	3b 05 27 19 49 13    	cmp    0x13491927,%eax
 8d1:	20 0b                	and    %cl,(%ebx)
 8d3:	01 13                	add    %edx,(%ebx)
 8d5:	00 00                	add    %al,(%eax)
 8d7:	2d 05 00 03 0e       	sub    $0xe030005,%eax
 8dc:	3a 0b                	cmp    (%ebx),%cl
 8de:	3b 05 49 13 00 00    	cmp    0x1349,%eax
 8e4:	2e 05 00 03 08 3a    	cs add $0x3a080300,%eax
 8ea:	0b 3b                	or     (%ebx),%edi
 8ec:	05 49 13 00 00       	add    $0x1349,%eax
 8f1:	2f                   	das    
 8f2:	0a 00                	or     (%eax),%al
 8f4:	03 0e                	add    (%esi),%ecx
 8f6:	3a 0b                	cmp    (%ebx),%cl
 8f8:	3b 05 00 00 30 2e    	cmp    0x2e300000,%eax
 8fe:	01 3f                	add    %edi,(%edi)
 900:	19 03                	sbb    %eax,(%ebx)
 902:	0e                   	push   %cs
 903:	3a 0b                	cmp    (%ebx),%cl
 905:	3b 0b                	cmp    (%ebx),%ecx
 907:	27                   	daa    
 908:	19 11                	sbb    %edx,(%ecx)
 90a:	01 12                	add    %edx,(%edx)
 90c:	06                   	push   %es
 90d:	40                   	inc    %eax
 90e:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 914:	00 00                	add    %al,(%eax)
 916:	31 05 00 03 0e 3a    	xor    %eax,0x3a0e0300
 91c:	0b 3b                	or     (%ebx),%edi
 91e:	0b 49 13             	or     0x13(%ecx),%ecx
 921:	02 17                	add    (%edi),%dl
 923:	00 00                	add    %al,(%eax)
 925:	32 34 00             	xor    (%eax,%eax,1),%dh
 928:	03 0e                	add    (%esi),%ecx
 92a:	49                   	dec    %ecx
 92b:	13 34 19             	adc    (%ecx,%ebx,1),%esi
 92e:	02 18                	add    (%eax),%bl
 930:	00 00                	add    %al,(%eax)
 932:	33 0b                	xor    (%ebx),%ecx
 934:	01 55 17             	add    %edx,0x17(%ebp)
 937:	00 00                	add    %al,(%eax)
 939:	34 1d                	xor    $0x1d,%al
 93b:	01 31                	add    %esi,(%ecx)
 93d:	13 52 01             	adc    0x1(%edx),%edx
 940:	55                   	push   %ebp
 941:	17                   	pop    %ss
 942:	58                   	pop    %eax
 943:	0b 59 0b             	or     0xb(%ecx),%ebx
 946:	01 13                	add    %edx,(%ebx)
 948:	00 00                	add    %al,(%eax)
 94a:	35 05 00 31 13       	xor    $0x13310005,%eax
 94f:	00 00                	add    %al,(%eax)
 951:	36 05 00 31 13 02    	ss add $0x2133100,%eax
 957:	17                   	pop    %ss
 958:	00 00                	add    %al,(%eax)
 95a:	37                   	aaa    
 95b:	0a 00                	or     (%eax),%al
 95d:	31 13                	xor    %edx,(%ebx)
 95f:	11 01                	adc    %eax,(%ecx)
 961:	00 00                	add    %al,(%eax)
 963:	38 1d 01 31 13 52    	cmp    %bl,0x52133101
 969:	01 55 17             	add    %edx,0x17(%ebp)
 96c:	58                   	pop    %eax
 96d:	0b 59 05             	or     0x5(%ecx),%ebx
 970:	01 13                	add    %edx,(%ebx)
 972:	00 00                	add    %al,(%eax)
 974:	39 1d 01 31 13 52    	cmp    %ebx,0x52133101
 97a:	01 55 17             	add    %edx,0x17(%ebp)
 97d:	58                   	pop    %eax
 97e:	0b 59 05             	or     0x5(%ecx),%ebx
 981:	00 00                	add    %al,(%eax)
 983:	3a 0b                	cmp    (%ebx),%cl
 985:	01 11                	add    %edx,(%ecx)
 987:	01 12                	add    %edx,(%edx)
 989:	06                   	push   %es
 98a:	01 13                	add    %edx,(%ebx)
 98c:	00 00                	add    %al,(%eax)
 98e:	3b 34 00             	cmp    (%eax,%eax,1),%esi
 991:	03 08                	add    (%eax),%ecx
 993:	3a 0b                	cmp    (%ebx),%cl
 995:	3b 0b                	cmp    (%ebx),%ecx
 997:	49                   	dec    %ecx
 998:	13 02                	adc    (%edx),%eax
 99a:	17                   	pop    %ss
 99b:	00 00                	add    %al,(%eax)
 99d:	3c 34                	cmp    $0x34,%al
 99f:	00 03                	add    %al,(%ebx)
 9a1:	0e                   	push   %cs
 9a2:	3a 0b                	cmp    (%ebx),%cl
 9a4:	3b 05 49 13 1c 0b    	cmp    0xb1c1349,%eax
 9aa:	00 00                	add    %al,(%eax)
 9ac:	3d 0b 01 11 01       	cmp    $0x111010b,%eax
 9b1:	12 06                	adc    (%esi),%al
 9b3:	00 00                	add    %al,(%eax)
 9b5:	3e 1d 01 31 13 11    	ds sbb $0x11133101,%eax
 9bb:	01 12                	add    %edx,(%edx)
 9bd:	06                   	push   %es
 9be:	58                   	pop    %eax
 9bf:	0b 59 05             	or     0x5(%ecx),%ebx
 9c2:	01 13                	add    %edx,(%ebx)
 9c4:	00 00                	add    %al,(%eax)
 9c6:	3f                   	aas    
 9c7:	89 82 01 00 11 01    	mov    %eax,0x1110001(%edx)
 9cd:	31 13                	xor    %edx,(%ebx)
 9cf:	00 00                	add    %al,(%eax)
 9d1:	40                   	inc    %eax
 9d2:	26 00 00             	add    %al,%es:(%eax)
 9d5:	00 41 0b             	add    %al,0xb(%ecx)
 9d8:	01 55 17             	add    %edx,0x17(%ebp)
 9db:	01 13                	add    %edx,(%ebx)
 9dd:	00 00                	add    %al,(%eax)
 9df:	42                   	inc    %edx
 9e0:	34 00                	xor    $0x0,%al
 9e2:	03 0e                	add    (%esi),%ecx
 9e4:	3a 0b                	cmp    (%ebx),%cl
 9e6:	3b 05 49 13 02 18    	cmp    0x18021349,%eax
 9ec:	00 00                	add    %al,(%eax)
 9ee:	43                   	inc    %ebx
 9ef:	2e 01 3f             	add    %edi,%cs:(%edi)
 9f2:	19 03                	sbb    %eax,(%ebx)
 9f4:	0e                   	push   %cs
 9f5:	3a 0b                	cmp    (%ebx),%cl
 9f7:	3b 0b                	cmp    (%ebx),%ecx
 9f9:	27                   	daa    
 9fa:	19 49 13             	sbb    %ecx,0x13(%ecx)
 9fd:	3c 19                	cmp    $0x19,%al
 9ff:	01 13                	add    %edx,(%ebx)
 a01:	00 00                	add    %al,(%eax)
 a03:	44                   	inc    %esp
 a04:	2e 01 3f             	add    %edi,%cs:(%edi)
 a07:	19 03                	sbb    %eax,(%ebx)
 a09:	0e                   	push   %cs
 a0a:	3a 0b                	cmp    (%ebx),%cl
 a0c:	3b 0b                	cmp    (%ebx),%ecx
 a0e:	27                   	daa    
 a0f:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 a12:	01 13                	add    %edx,(%ebx)
 a14:	00 00                	add    %al,(%eax)
 a16:	45                   	inc    %ebp
 a17:	2e 01 3f             	add    %edi,%cs:(%edi)
 a1a:	19 03                	sbb    %eax,(%ebx)
 a1c:	0e                   	push   %cs
 a1d:	3a 0b                	cmp    (%ebx),%cl
 a1f:	3b 0b                	cmp    (%ebx),%ecx
 a21:	6e                   	outsb  %ds:(%esi),(%dx)
 a22:	0e                   	push   %cs
 a23:	27                   	daa    
 a24:	19 49 13             	sbb    %ecx,0x13(%ecx)
 a27:	3c 19                	cmp    $0x19,%al
 a29:	00 00                	add    %al,(%eax)
 a2b:	00 01                	add    %al,(%ecx)
 a2d:	11 01                	adc    %eax,(%ecx)
 a2f:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 a34:	0e                   	push   %cs
 a35:	1b 0e                	sbb    (%esi),%ecx
 a37:	11 01                	adc    %eax,(%ecx)
 a39:	12 06                	adc    (%esi),%al
 a3b:	10 17                	adc    %dl,(%edi)
 a3d:	00 00                	add    %al,(%eax)
 a3f:	02 24 00             	add    (%eax,%eax,1),%ah
 a42:	0b 0b                	or     (%ebx),%ecx
 a44:	3e 0b 03             	or     %ds:(%ebx),%eax
 a47:	08 00                	or     %al,(%eax)
 a49:	00 03                	add    %al,(%ebx)
 a4b:	16                   	push   %ss
 a4c:	00 03                	add    %al,(%ebx)
 a4e:	0e                   	push   %cs
 a4f:	3a 0b                	cmp    (%ebx),%cl
 a51:	3b 0b                	cmp    (%ebx),%ecx
 a53:	49                   	dec    %ecx
 a54:	13 00                	adc    (%eax),%eax
 a56:	00 04 24             	add    %al,(%esp)
 a59:	00 0b                	add    %cl,(%ebx)
 a5b:	0b 3e                	or     (%esi),%edi
 a5d:	0b 03                	or     (%ebx),%eax
 a5f:	0e                   	push   %cs
 a60:	00 00                	add    %al,(%eax)
 a62:	05 2e 01 3f 19       	add    $0x193f012e,%eax
 a67:	03 0e                	add    (%esi),%ecx
 a69:	3a 0b                	cmp    (%ebx),%cl
 a6b:	3b 0b                	cmp    (%ebx),%ecx
 a6d:	27                   	daa    
 a6e:	19 49 13             	sbb    %ecx,0x13(%ecx)
 a71:	11 01                	adc    %eax,(%ecx)
 a73:	12 06                	adc    (%esi),%al
 a75:	40                   	inc    %eax
 a76:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 a7c:	00 00                	add    %al,(%eax)
 a7e:	06                   	push   %es
 a7f:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 a84:	0b 3b                	or     (%ebx),%edi
 a86:	0b 49 13             	or     0x13(%ecx),%ecx
 a89:	02 18                	add    (%eax),%bl
 a8b:	00 00                	add    %al,(%eax)
 a8d:	07                   	pop    %es
 a8e:	05 00 03 0e 3a       	add    $0x3a0e0300,%eax
 a93:	0b 3b                	or     (%ebx),%edi
 a95:	0b 49 13             	or     0x13(%ecx),%ecx
 a98:	02 17                	add    (%edi),%dl
 a9a:	00 00                	add    %al,(%eax)
 a9c:	08 34 00             	or     %dh,(%eax,%eax,1)
 a9f:	03 08                	add    (%eax),%ecx
 aa1:	3a 0b                	cmp    (%ebx),%cl
 aa3:	3b 0b                	cmp    (%ebx),%ecx
 aa5:	49                   	dec    %ecx
 aa6:	13 02                	adc    (%edx),%eax
 aa8:	17                   	pop    %ss
 aa9:	00 00                	add    %al,(%eax)
 aab:	09 34 00             	or     %esi,(%eax,%eax,1)
 aae:	03 0e                	add    (%esi),%ecx
 ab0:	49                   	dec    %ecx
 ab1:	13 34 19             	adc    (%ecx,%ebx,1),%esi
 ab4:	02 18                	add    (%eax),%bl
 ab6:	00 00                	add    %al,(%eax)
 ab8:	0a 89 82 01 01 11    	or     0x11010182(%ecx),%cl
 abe:	01 31                	add    %esi,(%ecx)
 ac0:	13 01                	adc    (%ecx),%eax
 ac2:	13 00                	adc    (%eax),%eax
 ac4:	00 0b                	add    %cl,(%ebx)
 ac6:	8a 82 01 00 02 18    	mov    0x18020001(%edx),%al
 acc:	91                   	xchg   %eax,%ecx
 acd:	42                   	inc    %edx
 ace:	18 00                	sbb    %al,(%eax)
 ad0:	00 0c 89             	add    %cl,(%ecx,%ecx,4)
 ad3:	82                   	(bad)  
 ad4:	01 01                	add    %eax,(%ecx)
 ad6:	11 01                	adc    %eax,(%ecx)
 ad8:	31 13                	xor    %edx,(%ebx)
 ada:	00 00                	add    %al,(%eax)
 adc:	0d 0f 00 0b 0b       	or     $0xb0b000f,%eax
 ae1:	00 00                	add    %al,(%eax)
 ae3:	0e                   	push   %cs
 ae4:	0f 00 0b             	str    (%ebx)
 ae7:	0b 49 13             	or     0x13(%ecx),%ecx
 aea:	00 00                	add    %al,(%eax)
 aec:	0f 26                	(bad)  
 aee:	00 00                	add    %al,(%eax)
 af0:	00 10                	add    %dl,(%eax)
 af2:	26 00 49 13          	add    %cl,%es:0x13(%ecx)
 af6:	00 00                	add    %al,(%eax)
 af8:	11 01                	adc    %eax,(%ecx)
 afa:	01 49 13             	add    %ecx,0x13(%ecx)
 afd:	01 13                	add    %edx,(%ebx)
 aff:	00 00                	add    %al,(%eax)
 b01:	12 21                	adc    (%ecx),%ah
 b03:	00 49 13             	add    %cl,0x13(%ecx)
 b06:	2f                   	das    
 b07:	0b 00                	or     (%eax),%eax
 b09:	00 13                	add    %dl,(%ebx)
 b0b:	05 00 03 08 3a       	add    $0x3a080300,%eax
 b10:	0b 3b                	or     (%ebx),%edi
 b12:	0b 49 13             	or     0x13(%ecx),%ecx
 b15:	02 18                	add    (%eax),%bl
 b17:	00 00                	add    %al,(%eax)
 b19:	14 34                	adc    $0x34,%al
 b1b:	00 03                	add    %al,(%ebx)
 b1d:	0e                   	push   %cs
 b1e:	3a 0b                	cmp    (%ebx),%cl
 b20:	3b 0b                	cmp    (%ebx),%ecx
 b22:	49                   	dec    %ecx
 b23:	13 02                	adc    (%edx),%eax
 b25:	17                   	pop    %ss
 b26:	00 00                	add    %al,(%eax)
 b28:	15 34 00 03 08       	adc    $0x8030034,%eax
 b2d:	3a 0b                	cmp    (%ebx),%cl
 b2f:	3b 0b                	cmp    (%ebx),%ecx
 b31:	49                   	dec    %ecx
 b32:	13 02                	adc    (%edx),%eax
 b34:	18 00                	sbb    %al,(%eax)
 b36:	00 16                	add    %dl,(%esi)
 b38:	05 00 03 08 3a       	add    $0x3a080300,%eax
 b3d:	0b 3b                	or     (%ebx),%edi
 b3f:	0b 49 13             	or     0x13(%ecx),%ecx
 b42:	02 17                	add    (%edi),%dl
 b44:	00 00                	add    %al,(%eax)
 b46:	17                   	pop    %ss
 b47:	34 00                	xor    $0x0,%al
 b49:	03 0e                	add    (%esi),%ecx
 b4b:	3a 0b                	cmp    (%ebx),%cl
 b4d:	3b 0b                	cmp    (%ebx),%ecx
 b4f:	49                   	dec    %ecx
 b50:	13 00                	adc    (%eax),%eax
 b52:	00 18                	add    %bl,(%eax)
 b54:	2e 01 3f             	add    %edi,%cs:(%edi)
 b57:	19 03                	sbb    %eax,(%ebx)
 b59:	0e                   	push   %cs
 b5a:	3a 0b                	cmp    (%ebx),%cl
 b5c:	3b 05 27 19 49 13    	cmp    0x13491927,%eax
 b62:	11 01                	adc    %eax,(%ecx)
 b64:	12 06                	adc    (%esi),%al
 b66:	40                   	inc    %eax
 b67:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 b6d:	00 00                	add    %al,(%eax)
 b6f:	19 05 00 03 0e 3a    	sbb    %eax,0x3a0e0300
 b75:	0b 3b                	or     (%ebx),%edi
 b77:	05 49 13 02 18       	add    $0x18021349,%eax
 b7c:	00 00                	add    %al,(%eax)
 b7e:	1a 05 00 03 0e 3a    	sbb    0x3a0e0300,%al
 b84:	0b 3b                	or     (%ebx),%edi
 b86:	05 49 13 02 17       	add    $0x17021349,%eax
 b8b:	00 00                	add    %al,(%eax)
 b8d:	1b 34 00             	sbb    (%eax,%eax,1),%esi
 b90:	03 08                	add    (%eax),%ecx
 b92:	3a 0b                	cmp    (%ebx),%cl
 b94:	3b 05 49 13 02 17    	cmp    0x17021349,%eax
 b9a:	00 00                	add    %al,(%eax)
 b9c:	1c 0b                	sbb    $0xb,%al
 b9e:	01 55 17             	add    %edx,0x17(%ebp)
 ba1:	00 00                	add    %al,(%eax)
 ba3:	1d 34 00 03 0e       	sbb    $0xe030034,%eax
 ba8:	3a 0b                	cmp    (%ebx),%cl
 baa:	3b 05 49 13 02 17    	cmp    0x17021349,%eax
 bb0:	00 00                	add    %al,(%eax)
 bb2:	1e                   	push   %ds
 bb3:	05 00 03 08 3a       	add    $0x3a080300,%eax
 bb8:	0b 3b                	or     (%ebx),%edi
 bba:	05 49 13 02 18       	add    $0x18021349,%eax
 bbf:	00 00                	add    %al,(%eax)
 bc1:	1f                   	pop    %ds
 bc2:	05 00 03 08 3a       	add    $0x3a080300,%eax
 bc7:	0b 3b                	or     (%ebx),%edi
 bc9:	05 49 13 02 17       	add    $0x17021349,%eax
 bce:	00 00                	add    %al,(%eax)
 bd0:	20 0b                	and    %cl,(%ebx)
 bd2:	01 11                	add    %edx,(%ecx)
 bd4:	01 12                	add    %edx,(%edx)
 bd6:	06                   	push   %es
 bd7:	01 13                	add    %edx,(%ebx)
 bd9:	00 00                	add    %al,(%eax)
 bdb:	21 2e                	and    %ebp,(%esi)
 bdd:	01 3f                	add    %edi,(%edi)
 bdf:	19 03                	sbb    %eax,(%ebx)
 be1:	0e                   	push   %cs
 be2:	3a 0b                	cmp    (%ebx),%cl
 be4:	3b 0b                	cmp    (%ebx),%ecx
 be6:	27                   	daa    
 be7:	19 3c 19             	sbb    %edi,(%ecx,%ebx,1)
 bea:	01 13                	add    %edx,(%ebx)
 bec:	00 00                	add    %al,(%eax)
 bee:	22 05 00 49 13 00    	and    0x134900,%al
 bf4:	00 23                	add    %ah,(%ebx)
 bf6:	18 00                	sbb    %al,(%eax)
 bf8:	00 00                	add    %al,(%eax)
 bfa:	24 2e                	and    $0x2e,%al
 bfc:	01 3f                	add    %edi,(%edi)
 bfe:	19 03                	sbb    %eax,(%ebx)
 c00:	0e                   	push   %cs
 c01:	27                   	daa    
 c02:	19 49 13             	sbb    %ecx,0x13(%ecx)
 c05:	34 19                	xor    $0x19,%al
 c07:	3c 19                	cmp    $0x19,%al
 c09:	00 00                	add    %al,(%eax)
 c0b:	00 01                	add    %al,(%ecx)
 c0d:	11 01                	adc    %eax,(%ecx)
 c0f:	25 0e 13 0b 03       	and    $0x30b130e,%eax
 c14:	0e                   	push   %cs
 c15:	1b 0e                	sbb    (%esi),%ecx
 c17:	11 01                	adc    %eax,(%ecx)
 c19:	12 06                	adc    (%esi),%al
 c1b:	10 17                	adc    %dl,(%edi)
 c1d:	00 00                	add    %al,(%eax)
 c1f:	02 24 00             	add    (%eax,%eax,1),%ah
 c22:	0b 0b                	or     (%ebx),%ecx
 c24:	3e 0b 03             	or     %ds:(%ebx),%eax
 c27:	0e                   	push   %cs
 c28:	00 00                	add    %al,(%eax)
 c2a:	03 16                	add    (%esi),%edx
 c2c:	00 03                	add    %al,(%ebx)
 c2e:	0e                   	push   %cs
 c2f:	3a 0b                	cmp    (%ebx),%cl
 c31:	3b 0b                	cmp    (%ebx),%ecx
 c33:	49                   	dec    %ecx
 c34:	13 00                	adc    (%eax),%eax
 c36:	00 04 24             	add    %al,(%esp)
 c39:	00 0b                	add    %cl,(%ebx)
 c3b:	0b 3e                	or     (%esi),%edi
 c3d:	0b 03                	or     (%ebx),%eax
 c3f:	08 00                	or     %al,(%eax)
 c41:	00 05 2e 01 03 0e    	add    %al,0xe03012e
 c47:	3a 0b                	cmp    (%ebx),%cl
 c49:	3b 0b                	cmp    (%ebx),%ecx
 c4b:	27                   	daa    
 c4c:	19 49 13             	sbb    %ecx,0x13(%ecx)
 c4f:	20 0b                	and    %cl,(%ebx)
 c51:	01 13                	add    %edx,(%ebx)
 c53:	00 00                	add    %al,(%eax)
 c55:	06                   	push   %es
 c56:	05 00 03 08 3a       	add    $0x3a080300,%eax
 c5b:	0b 3b                	or     (%ebx),%edi
 c5d:	0b 49 13             	or     0x13(%ecx),%ecx
 c60:	00 00                	add    %al,(%eax)
 c62:	07                   	pop    %es
 c63:	34 00                	xor    $0x0,%al
 c65:	03 08                	add    (%eax),%ecx
 c67:	3a 0b                	cmp    (%ebx),%cl
 c69:	3b 0b                	cmp    (%ebx),%ecx
 c6b:	49                   	dec    %ecx
 c6c:	13 00                	adc    (%eax),%eax
 c6e:	00 08                	add    %cl,(%eax)
 c70:	2e 01 03             	add    %eax,%cs:(%ebx)
 c73:	08 3a                	or     %bh,(%edx)
 c75:	0b 3b                	or     (%ebx),%edi
 c77:	0b 27                	or     (%edi),%esp
 c79:	19 49 13             	sbb    %ecx,0x13(%ecx)
 c7c:	20 0b                	and    %cl,(%ebx)
 c7e:	01 13                	add    %edx,(%ebx)
 c80:	00 00                	add    %al,(%eax)
 c82:	09 2e                	or     %ebp,(%esi)
 c84:	01 03                	add    %eax,(%ebx)
 c86:	0e                   	push   %cs
 c87:	3a 0b                	cmp    (%ebx),%cl
 c89:	3b 0b                	cmp    (%ebx),%ecx
 c8b:	27                   	daa    
 c8c:	19 49 13             	sbb    %ecx,0x13(%ecx)
 c8f:	11 01                	adc    %eax,(%ecx)
 c91:	12 06                	adc    (%esi),%al
 c93:	40                   	inc    %eax
 c94:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 c9a:	00 00                	add    %al,(%eax)
 c9c:	0a 05 00 03 08 3a    	or     0x3a080300,%al
 ca2:	0b 3b                	or     (%ebx),%edi
 ca4:	0b 49 13             	or     0x13(%ecx),%ecx
 ca7:	02 17                	add    (%edi),%dl
 ca9:	00 00                	add    %al,(%eax)
 cab:	0b 05 00 03 08 3a    	or     0x3a080300,%eax
 cb1:	0b 3b                	or     (%ebx),%edi
 cb3:	0b 49 13             	or     0x13(%ecx),%ecx
 cb6:	02 18                	add    (%eax),%bl
 cb8:	00 00                	add    %al,(%eax)
 cba:	0c 0b                	or     $0xb,%al
 cbc:	01 11                	add    %edx,(%ecx)
 cbe:	01 12                	add    %edx,(%edx)
 cc0:	06                   	push   %es
 cc1:	01 13                	add    %edx,(%ebx)
 cc3:	00 00                	add    %al,(%eax)
 cc5:	0d 34 00 03 08       	or     $0x8030034,%eax
 cca:	3a 0b                	cmp    (%ebx),%cl
 ccc:	3b 0b                	cmp    (%ebx),%ecx
 cce:	49                   	dec    %ecx
 ccf:	13 02                	adc    (%edx),%eax
 cd1:	17                   	pop    %ss
 cd2:	00 00                	add    %al,(%eax)
 cd4:	0e                   	push   %cs
 cd5:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 cda:	01 12                	add    %edx,(%edx)
 cdc:	06                   	push   %es
 cdd:	58                   	pop    %eax
 cde:	0b 59 0b             	or     0xb(%ecx),%ebx
 ce1:	00 00                	add    %al,(%eax)
 ce3:	0f 05                	syscall 
 ce5:	00 31                	add    %dh,(%ecx)
 ce7:	13 02                	adc    (%edx),%eax
 ce9:	17                   	pop    %ss
 cea:	00 00                	add    %al,(%eax)
 cec:	10 0b                	adc    %cl,(%ebx)
 cee:	01 11                	add    %edx,(%ecx)
 cf0:	01 12                	add    %edx,(%edx)
 cf2:	06                   	push   %es
 cf3:	00 00                	add    %al,(%eax)
 cf5:	11 34 00             	adc    %esi,(%eax,%eax,1)
 cf8:	31 13                	xor    %edx,(%ebx)
 cfa:	02 17                	add    (%edi),%dl
 cfc:	00 00                	add    %al,(%eax)
 cfe:	12 34 00             	adc    (%eax,%eax,1),%dh
 d01:	31 13                	xor    %edx,(%ebx)
 d03:	00 00                	add    %al,(%eax)
 d05:	13 0b                	adc    (%ebx),%ecx
 d07:	01 55 17             	add    %edx,0x17(%ebp)
 d0a:	00 00                	add    %al,(%eax)
 d0c:	14 34                	adc    $0x34,%al
 d0e:	00 03                	add    %al,(%ebx)
 d10:	08 3a                	or     %bh,(%edx)
 d12:	0b 3b                	or     (%ebx),%edi
 d14:	0b 49 13             	or     0x13(%ecx),%ecx
 d17:	02 18                	add    (%eax),%bl
 d19:	00 00                	add    %al,(%eax)
 d1b:	15 1d 01 31 13       	adc    $0x1331011d,%eax
 d20:	11 01                	adc    %eax,(%ecx)
 d22:	12 06                	adc    (%esi),%al
 d24:	58                   	pop    %eax
 d25:	0b 59 0b             	or     0xb(%ecx),%ebx
 d28:	01 13                	add    %edx,(%ebx)
 d2a:	00 00                	add    %al,(%eax)
 d2c:	16                   	push   %ss
 d2d:	05 00 31 13 00       	add    $0x133100,%eax
 d32:	00 17                	add    %dl,(%edi)
 d34:	34 00                	xor    $0x0,%al
 d36:	03 0e                	add    (%esi),%ecx
 d38:	3a 0b                	cmp    (%ebx),%cl
 d3a:	3b 0b                	cmp    (%ebx),%ecx
 d3c:	49                   	dec    %ecx
 d3d:	13 02                	adc    (%edx),%eax
 d3f:	17                   	pop    %ss
 d40:	00 00                	add    %al,(%eax)
 d42:	18 89 82 01 00 11    	sbb    %cl,0x11000182(%ecx)
 d48:	01 31                	add    %esi,(%ecx)
 d4a:	13 00                	adc    (%eax),%eax
 d4c:	00 19                	add    %bl,(%ecx)
 d4e:	2e 01 3f             	add    %edi,%cs:(%edi)
 d51:	19 03                	sbb    %eax,(%ebx)
 d53:	0e                   	push   %cs
 d54:	3a 0b                	cmp    (%ebx),%cl
 d56:	3b 0b                	cmp    (%ebx),%ecx
 d58:	27                   	daa    
 d59:	19 49 13             	sbb    %ecx,0x13(%ecx)
 d5c:	11 01                	adc    %eax,(%ecx)
 d5e:	12 06                	adc    (%esi),%al
 d60:	40                   	inc    %eax
 d61:	18 97 42 19 01 13    	sbb    %dl,0x13011942(%edi)
 d67:	00 00                	add    %al,(%eax)
 d69:	1a 2e                	sbb    (%esi),%ch
 d6b:	01 3f                	add    %edi,(%edi)
 d6d:	19 03                	sbb    %eax,(%ebx)
 d6f:	0e                   	push   %cs
 d70:	3a 0b                	cmp    (%ebx),%cl
 d72:	3b 0b                	cmp    (%ebx),%ecx
 d74:	27                   	daa    
 d75:	19 49 13             	sbb    %ecx,0x13(%ecx)
 d78:	11 01                	adc    %eax,(%ecx)
 d7a:	12 06                	adc    (%esi),%al
 d7c:	40                   	inc    %eax
 d7d:	18 97 42 19 00 00    	sbb    %dl,0x1942(%edi)
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	54                   	push   %esp
   1:	00 00                	add    %al,(%eax)
   3:	00 02                	add    %al,(%edx)
   5:	00 3d 00 00 00 01    	add    %bh,0x1000000
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	push   %cs
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	01 00                	add    %eax,(%eax)
  19:	00 01                	add    %al,(%ecx)
  1b:	2e 2e 2f             	cs cs das 
  1e:	6c                   	insb   (%dx),%es:(%edi)
  1f:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
  26:	00 00                	add    %al,(%eax)
  28:	6f                   	outsl  %ds:(%esi),(%dx)
  29:	70 65                	jo     90 <__executable_start-0x8048004>
  2b:	6e                   	outsb  %ds:(%esi),(%dx)
  2c:	2d 6e 6f 72 6d       	sub    $0x6d726f6e,%eax
  31:	61                   	popa   
  32:	6c                   	insb   (%dx),%es:(%edi)
  33:	2e 63 00             	arpl   %ax,%cs:(%eax)
  36:	00 00                	add    %al,(%eax)
  38:	00 73 79             	add    %dh,0x79(%ebx)
  3b:	73 63                	jae    a0 <__executable_start-0x8047ff4>
  3d:	61                   	popa   
  3e:	6c                   	insb   (%dx),%es:(%edi)
  3f:	6c                   	insb   (%dx),%es:(%edi)
  40:	2e 68 00 01 00 00    	cs push $0x100
  46:	00 00                	add    %al,(%eax)
  48:	05 02 a0 80 04       	add    $0x480a002,%eax
  4d:	08 1a                	or     %bl,(%edx)
  4f:	91                   	xchg   %eax,%ecx
  50:	bc 08 75 02 02       	mov    $0x2027508,%esp
  55:	00 01                	add    %al,(%ecx)
  57:	01 4b 00             	add    %ecx,0x0(%ebx)
  5a:	00 00                	add    %al,(%eax)
  5c:	02 00                	add    (%eax),%al
  5e:	37                   	aaa    
  5f:	00 00                	add    %al,(%eax)
  61:	00 01                	add    %al,(%ecx)
  63:	01 fb                	add    %edi,%ebx
  65:	0e                   	push   %cs
  66:	0d 00 01 01 01       	or     $0x1010100,%eax
  6b:	01 00                	add    %eax,(%eax)
  6d:	00 00                	add    %al,(%eax)
  6f:	01 00                	add    %eax,(%eax)
  71:	00 01                	add    %al,(%ecx)
  73:	2e 2e 2f             	cs cs das 
  76:	6c                   	insb   (%dx),%es:(%edi)
  77:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
  7e:	00 00                	add    %al,(%eax)
  80:	65 6e                	outsb  %gs:(%esi),(%dx)
  82:	74 72                	je     f6 <__executable_start-0x8047f9e>
  84:	79 2e                	jns    b4 <__executable_start-0x8047fe0>
  86:	63 00                	arpl   %ax,(%eax)
  88:	01 00                	add    %eax,(%eax)
  8a:	00 73 79             	add    %dh,0x79(%ebx)
  8d:	73 63                	jae    f2 <__executable_start-0x8047fa2>
  8f:	61                   	popa   
  90:	6c                   	insb   (%dx),%es:(%edi)
  91:	6c                   	insb   (%dx),%es:(%edi)
  92:	2e 68 00 01 00 00    	cs push $0x100
  98:	00 00                	add    %al,(%eax)
  9a:	05 02 cf 80 04       	add    $0x480cf02,%eax
  9f:	08 19                	or     %bl,(%ecx)
  a1:	3d 02 1c 00 01       	cmp    $0x1001c02,%eax
  a6:	01 df                	add    %ebx,%edi
  a8:	00 00                	add    %al,(%eax)
  aa:	00 02                	add    %al,(%edx)
  ac:	00 76 00             	add    %dh,0x0(%esi)
  af:	00 00                	add    %al,(%eax)
  b1:	01 01                	add    %eax,(%ecx)
  b3:	fb                   	sti    
  b4:	0e                   	push   %cs
  b5:	0d 00 01 01 01       	or     $0x1010100,%eax
  ba:	01 00                	add    %eax,(%eax)
  bc:	00 00                	add    %al,(%eax)
  be:	01 00                	add    %eax,(%eax)
  c0:	00 01                	add    %al,(%ecx)
  c2:	2e 2e 2f             	cs cs das 
  c5:	6c                   	insb   (%dx),%es:(%edi)
  c6:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
  cd:	00 2e                	add    %ch,(%esi)
  cf:	2e 2f                	cs das 
  d1:	6c                   	insb   (%dx),%es:(%edi)
  d2:	69 62 00 2e 2e 2f 6c 	imul   $0x6c2f2e2e,0x0(%edx),%esp
  d9:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
  e0:	2f                   	das    
  e1:	2e 2e 00 00          	cs add %al,%cs:(%eax)
  e5:	73 79                	jae    160 <__executable_start-0x8047f34>
  e7:	73 63                	jae    14c <__executable_start-0x8047f48>
  e9:	61                   	popa   
  ea:	6c                   	insb   (%dx),%es:(%edi)
  eb:	6c                   	insb   (%dx),%es:(%edi)
  ec:	2e 63 00             	arpl   %ax,%cs:(%eax)
  ef:	01 00                	add    %eax,(%eax)
  f1:	00 73 79             	add    %dh,0x79(%ebx)
  f4:	73 63                	jae    159 <__executable_start-0x8047f3b>
  f6:	61                   	popa   
  f7:	6c                   	insb   (%dx),%es:(%edi)
  f8:	6c                   	insb   (%dx),%es:(%edi)
  f9:	2e 68 00 01 00 00    	cs push $0x100
  ff:	73 74                	jae    175 <__executable_start-0x8047f1f>
 101:	64 69 6e 74 2e 68 00 	imul   $0x200682e,%fs:0x74(%esi),%ebp
 108:	02 
 109:	00 00                	add    %al,(%eax)
 10b:	73 79                	jae    186 <__executable_start-0x8047f0e>
 10d:	73 63                	jae    172 <__executable_start-0x8047f22>
 10f:	61                   	popa   
 110:	6c                   	insb   (%dx),%es:(%edi)
 111:	6c                   	insb   (%dx),%es:(%edi)
 112:	2d 6e 72 2e 68       	sub    $0x682e726e,%eax
 117:	00 03                	add    %al,(%ebx)
 119:	00 00                	add    %al,(%eax)
 11b:	64 65 62 75 67       	fs bound %esi,%gs:0x67(%ebp)
 120:	2e 68 00 02 00 00    	cs push $0x200
 126:	00 00                	add    %al,(%eax)
 128:	05 02 ee 80 04       	add    $0x480ee02,%eax
 12d:	08 03                	or     %al,(%ebx)
 12f:	c1 00 01             	roll   $0x1,(%eax)
 132:	3d 75 02 24 17       	cmp    $0x17240275,%eax
 137:	3d ad 02 24 17       	cmp    $0x172402ad,%eax
 13c:	13 ad 24 13 ad 24    	adc    0x24ad1324(%ebp),%ebp
 142:	13 08                	adc    (%eax),%ecx
 144:	3d 24 13 f3 24       	cmp    $0x24f31324,%eax
 149:	13 ad 24 13 ad 24    	adc    0x24ad1324(%ebp),%ebp
 14f:	13 08                	adc    (%eax),%ecx
 151:	2f                   	das    
 152:	24 13                	and    $0x13,%al
 154:	08 2f                	or     %ch,(%edi)
 156:	24 13                	and    $0x13,%al
 158:	f7 13                	notl   (%ebx)
 15a:	ad                   	lods   %ds:(%esi),%eax
 15b:	24 13                	and    $0x13,%al
 15d:	bf 13 e5 24 13       	mov    $0x1324e513,%edi
 162:	bf 13 f3 24 13       	mov    $0x1324f313,%edi
 167:	f3 24 13             	repz and $0x13,%al
 16a:	08 3d 24 13 f3 24    	or     %bh,0x24f31324
 170:	13 ad 26 13 e5 23    	adc    0x23e51326(%ebp),%ebp
 176:	13 e5                	adc    %ebp,%esp
 178:	23 13                	and    (%ebx),%edx
 17a:	75 23                	jne    19f <__executable_start-0x8047ef5>
 17c:	13 be 13 75 23 13    	adc    0x13237513(%esi),%edi
 182:	75 23                	jne    1a7 <__executable_start-0x8047eed>
 184:	13 02                	adc    (%edx),%eax
 186:	0c 00                	or     $0x0,%al
 188:	01 01                	add    %eax,(%ecx)
 18a:	8b 00                	mov    (%eax),%eax
 18c:	00 00                	add    %al,(%eax)
 18e:	02 00                	add    (%eax),%al
 190:	6e                   	outsb  %ds:(%esi),(%dx)
 191:	00 00                	add    %al,(%eax)
 193:	00 01                	add    %al,(%ecx)
 195:	01 fb                	add    %edi,%ebx
 197:	0e                   	push   %cs
 198:	0d 00 01 01 01       	or     $0x1010100,%eax
 19d:	01 00                	add    %eax,(%eax)
 19f:	00 00                	add    %al,(%eax)
 1a1:	01 00                	add    %eax,(%eax)
 1a3:	00 01                	add    %al,(%ecx)
 1a5:	2e 2e 2f             	cs cs das 
 1a8:	6c                   	insb   (%dx),%es:(%edi)
 1a9:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
 1b0:	00 2e                	add    %ch,(%esi)
 1b2:	2e 2f                	cs das 
 1b4:	6c                   	insb   (%dx),%es:(%edi)
 1b5:	69 62 00 00 64 65 62 	imul   $0x62656400,0x0(%edx),%esp
 1bc:	75 67                	jne    225 <__executable_start-0x8047e6f>
 1be:	2e 63 00             	arpl   %ax,%cs:(%eax)
 1c1:	01 00                	add    %eax,(%eax)
 1c3:	00 73 74             	add    %dh,0x74(%ebx)
 1c6:	64 69 6f 2e 68 00 02 	imul   $0x20068,%fs:0x2e(%edi),%ebp
 1cd:	00 
 1ce:	00 73 74             	add    %dh,0x74(%ebx)
 1d1:	64 61                	fs popa 
 1d3:	72 67                	jb     23c <__executable_start-0x8047e58>
 1d5:	2e 68 00 02 00 00    	cs push $0x200
 1db:	3c 62                	cmp    $0x62,%al
 1dd:	75 69                	jne    248 <__executable_start-0x8047e4c>
 1df:	6c                   	insb   (%dx),%es:(%edi)
 1e0:	74 2d                	je     20f <__executable_start-0x8047e85>
 1e2:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%esi),%ebp
 1e9:	64 65 62 75 67       	fs bound %esi,%gs:0x67(%ebp)
 1ee:	2e 68 00 02 00 00    	cs push $0x200
 1f4:	73 79                	jae    26f <__executable_start-0x8047e25>
 1f6:	73 63                	jae    25b <__executable_start-0x8047e39>
 1f8:	61                   	popa   
 1f9:	6c                   	insb   (%dx),%es:(%edi)
 1fa:	6c                   	insb   (%dx),%es:(%edi)
 1fb:	2e 68 00 01 00 00    	cs push $0x100
 201:	00 00                	add    %al,(%eax)
 203:	05 02 b4 82 04       	add    $0x482b402,%eax
 208:	08 03                	or     %al,(%ebx)
 20a:	0b 01                	or     (%ecx),%eax
 20c:	3f                   	aas    
 20d:	02 24 14             	add    (%esp,%edx,1),%ah
 210:	4b                   	dec    %ebx
 211:	f3 bd 5a 02 0c 00    	repz mov $0xc025a,%ebp
 217:	01 01                	add    %eax,(%ecx)
 219:	9e                   	sahf   
 21a:	00 00                	add    %al,(%eax)
 21c:	00 02                	add    %al,(%edx)
 21e:	00 57 00             	add    %dl,0x0(%edi)
 221:	00 00                	add    %al,(%eax)
 223:	01 01                	add    %eax,(%ecx)
 225:	fb                   	sti    
 226:	0e                   	push   %cs
 227:	0d 00 01 01 01       	or     $0x1010100,%eax
 22c:	01 00                	add    %eax,(%eax)
 22e:	00 00                	add    %al,(%eax)
 230:	01 00                	add    %eax,(%eax)
 232:	00 01                	add    %al,(%ecx)
 234:	2e 2e 2f             	cs cs das 
 237:	6c                   	insb   (%dx),%es:(%edi)
 238:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
 23f:	00 2e                	add    %ch,(%esi)
 241:	2e 2f                	cs das 
 243:	6c                   	insb   (%dx),%es:(%edi)
 244:	69 62 00 00 63 6f 6e 	imul   $0x6e6f6300,0x0(%edx),%esp
 24b:	73 6f                	jae    2bc <__executable_start-0x8047dd8>
 24d:	6c                   	insb   (%dx),%es:(%edi)
 24e:	65 2e 63 00          	gs arpl %ax,%cs:(%eax)
 252:	01 00                	add    %eax,(%eax)
 254:	00 73 74             	add    %dh,0x74(%ebx)
 257:	64 61                	fs popa 
 259:	72 67                	jb     2c2 <__executable_start-0x8047dd2>
 25b:	2e 68 00 02 00 00    	cs push $0x200
 261:	73 79                	jae    2dc <__executable_start-0x8047db8>
 263:	73 63                	jae    2c8 <__executable_start-0x8047dcc>
 265:	61                   	popa   
 266:	6c                   	insb   (%dx),%es:(%edi)
 267:	6c                   	insb   (%dx),%es:(%edi)
 268:	2e 68 00 01 00 00    	cs push $0x100
 26e:	73 74                	jae    2e4 <__executable_start-0x8047db0>
 270:	64 69 6f 2e 68 00 02 	imul   $0x20068,%fs:0x2e(%edi),%ebp
 277:	00 
 278:	00 00                	add    %al,(%eax)
 27a:	00 05 02 0c 83 04    	add    %al,0x4830c02
 280:	08 03                	or     %al,(%ebx)
 282:	d9 00                	flds   (%eax)
 284:	01 67 75             	add    %esp,0x75(%edi)
 287:	08 4b 3d             	or     %cl,0x3d(%ebx)
 28a:	03 71 58             	add    0x58(%ecx),%esi
 28d:	bc ad 83 75 4b       	mov    $0x4b7583ad,%esp
 292:	03 55 58             	add    0x58(%ebp),%edx
 295:	83 4b 08 ae          	orl    $0xffffffae,0x8(%ebx)
 299:	03 72 74             	add    0x74(%edx),%esi
 29c:	83 02 27             	addl   $0x27,(%edx)
 29f:	13 bd 03 1c 9e 4c    	adc    0x4c9e1c03(%ebp),%edi
 2a5:	83 83 83 08 e5 76 03 	addl   $0x3,0x76e50883(%ebx)
 2ac:	41                   	inc    %ecx
 2ad:	90                   	nop
 2ae:	3d 08 ad 4f 40       	cmp    $0x404fad08,%eax
 2b3:	4b                   	dec    %ebx
 2b4:	08 78 02             	or     %bh,0x2(%eax)
 2b7:	04 00                	add    $0x0,%al
 2b9:	01 01                	add    %eax,(%ecx)
 2bb:	6d                   	insl   (%dx),%es:(%edi)
 2bc:	00 00                	add    %al,(%eax)
 2be:	00 02                	add    %al,(%edx)
 2c0:	00 4a 00             	add    %cl,0x0(%edx)
 2c3:	00 00                	add    %al,(%eax)
 2c5:	01 01                	add    %eax,(%ecx)
 2c7:	fb                   	sti    
 2c8:	0e                   	push   %cs
 2c9:	0d 00 01 01 01       	or     $0x1010100,%eax
 2ce:	01 00                	add    %eax,(%eax)
 2d0:	00 00                	add    %al,(%eax)
 2d2:	01 00                	add    %eax,(%eax)
 2d4:	00 01                	add    %al,(%ecx)
 2d6:	2e 2e 2f             	cs cs das 
 2d9:	6c                   	insb   (%dx),%es:(%edi)
 2da:	69 62 00 00 64 65 62 	imul   $0x62656400,0x0(%edx),%esp
 2e1:	75 67                	jne    34a <__executable_start-0x8047d4a>
 2e3:	2e 63 00             	arpl   %ax,%cs:(%eax)
 2e6:	01 00                	add    %eax,(%eax)
 2e8:	00 73 74             	add    %dh,0x74(%ebx)
 2eb:	64 69 6e 74 2e 68 00 	imul   $0x100682e,%fs:0x74(%esi),%ebp
 2f2:	01 
 2f3:	00 00                	add    %al,(%eax)
 2f5:	73 74                	jae    36b <__executable_start-0x8047d29>
 2f7:	64 69 6f 2e 68 00 01 	imul   $0x10068,%fs:0x2e(%edi),%ebp
 2fe:	00 
 2ff:	00 3c 62             	add    %bh,(%edx,%eiz,2)
 302:	75 69                	jne    36d <__executable_start-0x8047d27>
 304:	6c                   	insb   (%dx),%es:(%edi)
 305:	74 2d                	je     334 <__executable_start-0x8047d60>
 307:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%esi),%ebp
 30e:	00 00                	add    %al,(%eax)
 310:	05 02 6b 84 04       	add    $0x4846b02,%eax
 315:	08 03                	or     %al,(%ebx)
 317:	0d 01 78 08 2f       	or     $0x2f087801,%eax
 31c:	ad                   	lods   %ds:(%esi),%eax
 31d:	5a                   	pop    %edx
 31e:	08 2d 2c 83 5b bc    	or     %ch,0xbc5b832c
 324:	92                   	xchg   %eax,%edx
 325:	75 be                	jne    2e5 <__executable_start-0x8047daf>
 327:	02 06                	add    (%esi),%al
 329:	00 01                	add    %al,(%ecx)
 32b:	01 1b                	add    %ebx,(%ebx)
 32d:	03 00                	add    (%eax),%eax
 32f:	00 02                	add    %al,(%edx)
 331:	00 84 00 00 00 01 01 	add    %al,0x1010000(%eax,%eax,1)
 338:	fb                   	sti    
 339:	0e                   	push   %cs
 33a:	0d 00 01 01 01       	or     $0x1010100,%eax
 33f:	01 00                	add    %eax,(%eax)
 341:	00 00                	add    %al,(%eax)
 343:	01 00                	add    %eax,(%eax)
 345:	00 01                	add    %al,(%ecx)
 347:	2e 2e 2f             	cs cs das 
 34a:	6c                   	insb   (%dx),%es:(%edi)
 34b:	69 62 00 00 73 74 64 	imul   $0x64747300,0x0(%edx),%esp
 352:	69 6f 2e 63 00 01 00 	imul   $0x10063,0x2e(%edi),%ebp
 359:	00 63 74             	add    %ah,0x74(%ebx)
 35c:	79 70                	jns    3ce <__executable_start-0x8047cc6>
 35e:	65 2e 68 00 01 00 00 	gs cs push $0x100
 365:	73 74                	jae    3db <__executable_start-0x8047cb9>
 367:	64 61                	fs popa 
 369:	72 67                	jb     3d2 <__executable_start-0x8047cc2>
 36b:	2e 68 00 01 00 00    	cs push $0x100
 371:	73 74                	jae    3e7 <__executable_start-0x8047cad>
 373:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
 37a:	01 
 37b:	00 00                	add    %al,(%eax)
 37d:	73 74                	jae    3f3 <__executable_start-0x8047ca1>
 37f:	64 69 6e 74 2e 68 00 	imul   $0x100682e,%fs:0x74(%esi),%ebp
 386:	01 
 387:	00 00                	add    %al,(%eax)
 389:	73 74                	jae    3ff <__executable_start-0x8047c95>
 38b:	64 69 6f 2e 68 00 01 	imul   $0x10068,%fs:0x2e(%edi),%ebp
 392:	00 
 393:	00 73 74             	add    %dh,0x74(%ebx)
 396:	72 69                	jb     401 <__executable_start-0x8047c93>
 398:	6e                   	outsb  %ds:(%esi),(%dx)
 399:	67 2e 68 00 01 00 00 	addr16 cs push $0x100
 3a0:	3c 62                	cmp    $0x62,%al
 3a2:	75 69                	jne    40d <__executable_start-0x8047c87>
 3a4:	6c                   	insb   (%dx),%es:(%edi)
 3a5:	74 2d                	je     3d4 <__executable_start-0x8047cc0>
 3a7:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%esi),%ebp
 3ae:	64 65 62 75 67       	fs bound %esi,%gs:0x67(%ebp)
 3b3:	2e 68 00 01 00 00    	cs push $0x100
 3b9:	00 00                	add    %al,(%eax)
 3bb:	05 02 f0 84 04       	add    $0x484f002,%eax
 3c0:	08 03                	or     %al,(%ebx)
 3c2:	2e 01 93 d7 91 03 f4 	add    %edx,%cs:-0xbfc6e29(%ebx)
 3c9:	03 2e                	add    (%esi),%ebp
 3cb:	ad                   	lods   %ds:(%esi),%eax
 3cc:	83 b9 5a 03 af 7f 82 	cmpl   $0xffffff82,0x7faf035a(%ecx)
 3d3:	03 0b                	add    (%ebx),%ecx
 3d5:	08 4a 83             	or     %cl,-0x7d(%edx)
 3d8:	4c                   	dec    %esp
 3d9:	d7                   	xlat   %ds:(%ebx)
 3da:	08 3d 59 03 7a 08    	or     %bh,0x87a0359
 3e0:	3c 03                	cmp    $0x3,%al
 3e2:	0e                   	push   %cs
 3e3:	08 12                	or     %dl,(%edx)
 3e5:	00 02                	add    %al,(%edx)
 3e7:	04 01                	add    $0x1,%al
 3e9:	06                   	push   %es
 3ea:	08 58 08             	or     %bl,0x8(%eax)
 3ed:	90                   	nop
 3ee:	06                   	push   %es
 3ef:	03 0b                	add    (%ebx),%ecx
 3f1:	82                   	(bad)  
 3f2:	02 2d 10 00 02 04    	add    0x4020010,%ch
 3f8:	03 c6                	add    %esi,%eax
 3fa:	03 79 66             	add    0x66(%ecx),%edi
 3fd:	87 94 00 02 04 01 06 	xchg   %edx,0x6010402(%eax,%eax,1)
 404:	74 06                	je     40c <__executable_start-0x8047c88>
 406:	08 4b 75             	or     %cl,0x75(%ebx)
 409:	02 2e                	add    (%esi),%ch
 40b:	13 08                	adc    (%eax),%ecx
 40d:	e5 03                	in     $0x3,%eax
 40f:	7a 3c                	jp     44d <__executable_start-0x8047c47>
 411:	6a 03                	push   $0x3
 413:	75 66                	jne    47b <__executable_start-0x8047c19>
 415:	87 03                	xchg   %eax,(%ebx)
 417:	10 9e 08 3d 08 75    	adc    %bl,0x75083d08(%esi)
 41d:	ab                   	stos   %eax,%es:(%edi)
 41e:	00 02                	add    %al,(%edx)
 420:	04 02                	add    $0x2,%al
 422:	06                   	push   %es
 423:	4a                   	dec    %edx
 424:	06                   	push   %es
 425:	4c                   	dec    %esp
 426:	00 02                	add    %al,(%edx)
 428:	04 01                	add    $0x1,%al
 42a:	06                   	push   %es
 42b:	74 06                	je     433 <__executable_start-0x8047c61>
 42d:	08 91 69 02 31 17    	or     %dl,0x17310269(%ecx)
 433:	75 08                	jne    43d <__executable_start-0x8047c57>
 435:	bb 67 08 83 76       	mov    $0x76830867,%ebx
 43a:	08 83 08 92 bb 00    	or     %al,0xbb9208(%ebx)
 440:	02 04 01             	add    (%ecx,%eax,1),%al
 443:	08 bb 06 82 06 08    	or     %bh,0x8068206(%ebx)
 449:	3d e3 84 bb 08       	cmp    $0x8bb84e3,%eax
 44e:	bb 03 11 ac 08       	mov    $0x8ac1103,%ebx
 453:	a0 00 02 04 01       	mov    0x1040200,%al
 458:	06                   	push   %es
 459:	74 06                	je     461 <__executable_start-0x8047c33>
 45b:	59                   	pop    %ecx
 45c:	00 02                	add    %al,(%edx)
 45e:	04 01                	add    $0x1,%al
 460:	08 13                	or     %dl,(%ebx)
 462:	00 02                	add    %al,(%edx)
 464:	04 02                	add    $0x2,%al
 466:	bb 00 02 04 02       	mov    $0x2040200,%ebx
 46b:	e3 4c                	jecxz  4b9 <__executable_start-0x8047bdb>
 46d:	00 02                	add    %al,(%edx)
 46f:	04 01                	add    $0x1,%al
 471:	06                   	push   %es
 472:	c8 06 59 08          	enter  $0x5906,$0x8
 476:	2f                   	das    
 477:	03 94 7c 82 40 4b f6 	add    -0x9b4bf7e(%esp,%edi,2),%edx
 47e:	03 ea                	add    %edx,%ebp
 480:	03 4a 3f             	add    0x3f(%edx),%ecx
 483:	4b                   	dec    %ebx
 484:	08 e6                	or     %ah,%dh
 486:	03 d6                	add    %esi,%edx
 488:	7c 4a                	jl     4d4 <__executable_start-0x8047bc0>
 48a:	e5 b1                	in     $0xb1,%eax
 48c:	4c                   	dec    %esp
 48d:	08 21                	or     %ah,(%ecx)
 48f:	76 3f                	jbe    4d0 <__executable_start-0x8047bc4>
 491:	ae                   	scas   %es:(%edi),%al
 492:	08 29                	or     %ch,(%ecx)
 494:	34 03                	xor    $0x3,%al
 496:	ab                   	stos   %eax,%es:(%edi)
 497:	01 58 08             	add    %ebx,0x8(%eax)
 49a:	93                   	xchg   %eax,%ebx
 49b:	5b                   	pop    %ebx
 49c:	5b                   	pop    %ebx
 49d:	5b                   	pop    %ebx
 49e:	69 5b 03 6e 58 03 1a 	imul   $0x1a03586e,0x3(%ebx),%ebx
 4a5:	66 59                	pop    %cx
 4a7:	75 91                	jne    43a <__executable_start-0x8047c5a>
 4a9:	77 83                	ja     42e <__executable_start-0x8047c66>
 4ab:	5f                   	pop    %edi
 4ac:	04 02                	add    $0x2,%al
 4ae:	03 84 7d 3c 04 01 03 	add    0x301043c(%ebp,%edi,2),%eax
 4b5:	fc                   	cld    
 4b6:	02 66 b6             	add    -0x4a(%esi),%ah
 4b9:	03 5c 9e 03          	add    0x3(%esi,%ebx,4),%ebx
 4bd:	29 4a 9d             	sub    %ecx,-0x63(%edx)
 4c0:	04 02                	add    $0x2,%al
 4c2:	03 84 7d 66 04 01 03 	add    0x3010466(%ebp,%edi,2),%eax
 4c9:	fc                   	cld    
 4ca:	02 66 93             	add    -0x6d(%esi),%ah
 4cd:	84 67 5c             	test   %ah,0x5c(%edi)
 4d0:	83 93 68 3d b6 44 83 	adcl   $0xffffff83,0x44b63d68(%ebx)
 4d7:	04 02                	add    $0x2,%al
 4d9:	03 ee                	add    %esi,%ebp
 4db:	7c 4a                	jl     527 <__executable_start-0x8047b6d>
 4dd:	04 01                	add    $0x1,%al
 4df:	03 92 03 66 d7 9d    	add    -0x622899fd(%edx),%edx
 4e5:	04 02                	add    $0x2,%al
 4e7:	03 ee                	add    %esi,%ebp
 4e9:	7c 66                	jl     551 <__executable_start-0x8047b43>
 4eb:	04 01                	add    $0x1,%al
 4ed:	03 92 03 66 af ad    	add    -0x525099fd(%edx),%edx
 4f3:	ce                   	into   
 4f4:	83 08 77             	orl    $0x77,(%eax)
 4f7:	68 3d a1 a2 a2       	push   $0xa2a2a13d
 4fc:	68 3d a1 a2 a2       	push   $0xa2a2a13d
 501:	03 61 9e             	add    -0x62(%ecx),%esp
 504:	03 93 7e 2e 08 8a    	add    -0x75f7d182(%ebx),%edx
 50a:	08 5b 08             	or     %bl,0x8(%ebx)
 50d:	21 5a 08             	and    %ebx,0x8(%edx)
 510:	21 5a 08             	and    %ebx,0x8(%edx)
 513:	13 5a 08             	adc    0x8(%edx),%ebx
 516:	13 5a 08             	adc    0x8(%edx),%ebx
 519:	13 30                	adc    (%eax),%esi
 51b:	08 13                	or     %dl,(%ebx)
 51d:	30 08                	xor    %cl,(%eax)
 51f:	13 30                	adc    (%eax),%esi
 521:	3d 08 1f 2f 83       	cmp    $0x832f1f08,%eax
 526:	bd 02 24 15 02       	mov    $0x2152402,%ebp
 52b:	5f                   	pop    %edi
 52c:	15 03 0b 58 08       	adc    $0x8580b03,%eax
 531:	5b                   	pop    %ebx
 532:	08 2f                	or     %ch,(%edi)
 534:	5a                   	pop    %edx
 535:	08 2f                	or     %ch,(%edi)
 537:	5a                   	pop    %edx
 538:	08 2f                	or     %ch,(%edi)
 53a:	5a                   	pop    %edx
 53b:	08 13                	or     %dl,(%ebx)
 53d:	30 08                	xor    %cl,(%eax)
 53f:	2f                   	das    
 540:	30 08                	xor    %cl,(%eax)
 542:	13 32                	adc    (%edx),%esi
 544:	e2 40                	loop   586 <__executable_start-0x8047b0e>
 546:	30 08                	xor    %cl,(%eax)
 548:	2f                   	das    
 549:	30 02                	xor    %al,(%edx)
 54b:	24 15                	and    $0x15,%al
 54d:	08 e8                	or     %ch,%al
 54f:	75 75                	jne    5c6 <__executable_start-0x8047ace>
 551:	02 24 0e             	add    (%esi,%ecx,1),%ah
 554:	75 5e                	jne    5b4 <__executable_start-0x8047ae0>
 556:	02 35 14 5d 9f 08    	add    0x89f5d14,%dh
 55c:	f1                   	icebp  
 55d:	31 5d 68             	xor    %ebx,0x68(%ebp)
 560:	a3 03 79 02 28       	mov    %eax,0x28027903
 565:	01 03                	add    %eax,(%ebx)
 567:	09 2e                	or     %ebp,(%esi)
 569:	5e                   	pop    %esi
 56a:	68 83 02 36 0f       	push   $0xf360283
 56f:	34 03                	xor    $0x3,%al
 571:	0a 2e                	or     (%esi),%ch
 573:	02 23                	add    (%ebx),%ah
 575:	13 31                	adc    (%ecx),%esi
 577:	03 d7                	add    %edi,%edx
 579:	7e 02                	jle    57d <__executable_start-0x8047b17>
 57b:	23 01                	and    (%ecx),%eax
 57d:	03 ff                	add    %edi,%edi
 57f:	01 08                	add    %ecx,(%eax)
 581:	12 03                	adc    (%ebx),%al
 583:	71 90                	jno    515 <__executable_start-0x8047b7f>
 585:	03 0f                	add    (%edi),%ecx
 587:	2e 4b                	cs dec %ebx
 589:	03 ad 7f 9e 03 ce    	add    -0x31fc6181(%ebp),%ebp
 58f:	7d 82                	jge    513 <__executable_start-0x8047b81>
 591:	f5                   	cmc    
 592:	83 83 00 02 04 01 06 	addl   $0x6,0x1040200(%ebx)
 599:	4a                   	dec    %edx
 59a:	00 02                	add    %al,(%edx)
 59c:	04 01                	add    $0x1,%al
 59e:	06                   	push   %es
 59f:	77 00                	ja     5a1 <__executable_start-0x8047af3>
 5a1:	02 04 01             	add    (%ecx,%eax,1),%al
 5a4:	08 b0 03 79 90 85    	or     %dh,-0x7a6f86fd(%eax)
 5aa:	08 b2 4b 03 15 58    	or     %dh,0x5815034b(%edx)
 5b0:	40                   	inc    %eax
 5b1:	4b                   	dec    %ebx
 5b2:	08 e8                	or     %ch,%al
 5b4:	03 8a 04 4a f6 b2    	add    -0x4d09b5fc(%edx),%ecx
 5ba:	76 75                	jbe    631 <__executable_start-0x8047a63>
 5bc:	08 21                	or     %ah,(%ecx)
 5be:	85 08                	test   %ecx,(%eax)
 5c0:	d7                   	xlat   %ds:(%ebx)
 5c1:	00 02                	add    %al,(%edx)
 5c3:	04 02                	add    $0x2,%al
 5c5:	91                   	xchg   %eax,%ecx
 5c6:	00 02                	add    %al,(%edx)
 5c8:	04 02                	add    $0x2,%al
 5ca:	b9 06 90 00 02       	mov    $0x2009006,%ecx
 5cf:	04 01                	add    $0x1,%al
 5d1:	06                   	push   %es
 5d2:	a0 9f 02 29 11       	mov    0x1129029f,%al
 5d7:	93                   	xchg   %eax,%ebx
 5d8:	00 02                	add    %al,(%edx)
 5da:	04 01                	add    $0x1,%al
 5dc:	ae                   	scas   %es:(%edi),%al
 5dd:	00 02                	add    %al,(%edx)
 5df:	04 02                	add    $0x2,%al
 5e1:	59                   	pop    %ecx
 5e2:	00 02                	add    %al,(%edx)
 5e4:	04 02                	add    $0x2,%al
 5e6:	b9 84 bb 00 02       	mov    $0x200bb84,%ecx
 5eb:	04 02                	add    $0x2,%al
 5ed:	91                   	xchg   %eax,%ecx
 5ee:	00 02                	add    %al,(%edx)
 5f0:	04 02                	add    $0x2,%al
 5f2:	b9 06 90 00 02       	mov    $0x2009006,%ecx
 5f7:	04 01                	add    $0x1,%al
 5f9:	06                   	push   %es
 5fa:	68 9f 59 04 02       	push   $0x204599f
 5ff:	03 a0 7b 58 04 01    	add    0x104587b(%eax),%esp
 605:	03 df                	add    %edi,%ebx
 607:	04 3c                	add    $0x3c,%al
 609:	08 3b                	or     %bh,(%ebx)
 60b:	00 02                	add    %al,(%edx)
 60d:	04 01                	add    $0x1,%al
 60f:	af                   	scas   %es:(%edi),%eax
 610:	00 02                	add    %al,(%edx)
 612:	04 02                	add    $0x2,%al
 614:	59                   	pop    %ecx
 615:	00 02                	add    %al,(%edx)
 617:	04 02                	add    $0x2,%al
 619:	b9 84 bc bc 83       	mov    $0x83bcbc84,%ecx
 61e:	03 5c 4a 03          	add    0x3(%edx,%ecx,2),%ebx
 622:	27                   	daa    
 623:	9e                   	sahf   
 624:	88 c9                	mov    %cl,%cl
 626:	00 02                	add    %al,(%edx)
 628:	04 01                	add    $0x1,%al
 62a:	97                   	xchg   %eax,%edi
 62b:	06                   	push   %es
 62c:	08 20                	or     %ah,(%eax)
 62e:	06                   	push   %es
 62f:	03 7a f2             	add    -0xe(%edx),%edi
 632:	00 02                	add    %al,(%edx)
 634:	04 01                	add    $0x1,%al
 636:	dd 00                	fldl   (%eax)
 638:	02 04 01             	add    (%ecx,%eax,1),%al
 63b:	e3 00                	jecxz  63d <__executable_start-0x8047a57>
 63d:	02 04 02             	add    (%edx,%eax,1),%al
 640:	06                   	push   %es
 641:	e4 06                	in     $0x6,%al
 643:	68 08 92 02 06       	push   $0x6029208
 648:	00 01                	add    %al,(%ecx)
 64a:	01 eb                	add    %ebp,%ebx
 64c:	01 00                	add    %eax,(%eax)
 64e:	00 02                	add    %al,(%edx)
 650:	00 3d 00 00 00 01    	add    %bh,0x1000000
 656:	01 fb                	add    %edi,%ebx
 658:	0e                   	push   %cs
 659:	0d 00 01 01 01       	or     $0x1010100,%eax
 65e:	01 00                	add    %eax,(%eax)
 660:	00 00                	add    %al,(%eax)
 662:	01 00                	add    %eax,(%eax)
 664:	00 01                	add    %al,(%ecx)
 666:	2e 2e 2f             	cs cs das 
 669:	6c                   	insb   (%dx),%es:(%edi)
 66a:	69 62 00 00 73 74 72 	imul   $0x72747300,0x0(%edx),%esp
 671:	69 6e 67 2e 63 00 01 	imul   $0x100632e,0x67(%esi),%ebp
 678:	00 00                	add    %al,(%eax)
 67a:	73 74                	jae    6f0 <__executable_start-0x80479a4>
 67c:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
 683:	01 
 684:	00 00                	add    %al,(%eax)
 686:	64 65 62 75 67       	fs bound %esi,%gs:0x67(%ebp)
 68b:	2e 68 00 01 00 00    	cs push $0x100
 691:	00 00                	add    %al,(%eax)
 693:	05 02 50 92 04       	add    $0x4925002,%eax
 698:	08 19                	or     %bl,(%ecx)
 69a:	08 16                	or     %dl,(%esi)
 69c:	00 02                	add    %al,(%edx)
 69e:	04 01                	add    $0x1,%al
 6a0:	06                   	push   %es
 6a1:	c8 06 02 2c          	enter  $0x206,$0x2c
 6a5:	13 00                	adc    (%eax),%eax
 6a7:	02 04 01             	add    (%ecx,%eax,1),%al
 6aa:	84 00                	test   %al,(%eax)
 6ac:	02 04 01             	add    (%ecx,%eax,1),%al
 6af:	aa                   	stos   %al,%es:(%edi)
 6b0:	02 2c 15 9d 4e 6c 08 	add    0x86c4e9d(,%edx,1),%ch
 6b7:	24 00                	and    $0x0,%al
 6b9:	02 04 01             	add    (%ecx,%eax,1),%al
 6bc:	06                   	push   %es
 6bd:	c8 06 02 2c          	enter  $0x206,$0x2c
 6c1:	13 00                	adc    (%eax),%eax
 6c3:	02 04 01             	add    (%ecx,%eax,1),%al
 6c6:	06                   	push   %es
 6c7:	82                   	(bad)  
 6c8:	06                   	push   %es
 6c9:	02 2c 14             	add    (%esp,%edx,1),%ch
 6cc:	00 02                	add    %al,(%edx)
 6ce:	04 01                	add    $0x1,%al
 6d0:	4c                   	dec    %esp
 6d1:	06                   	push   %es
 6d2:	4a                   	dec    %edx
 6d3:	06                   	push   %es
 6d4:	59                   	pop    %ecx
 6d5:	9d                   	popf   
 6d6:	87 3d 2f 08 13 73    	xchg   %edi,0x7313082f
 6dc:	9c                   	pushf  
 6dd:	35 98 08 24 00       	xor    $0x240898,%eax
 6e2:	02 04 01             	add    (%ecx,%eax,1),%al
 6e5:	06                   	push   %es
 6e6:	c8 06 02 2c          	enter  $0x206,$0x2c
 6ea:	13 00                	adc    (%eax),%eax
 6ec:	02 04 01             	add    (%ecx,%eax,1),%al
 6ef:	84 75 00             	test   %dh,0x0(%ebp)
 6f2:	02 04 01             	add    (%ecx,%eax,1),%al
 6f5:	fd                   	std    
 6f6:	02 2c 15 f3 b8 4d bb 	add    -0x44b2470d(,%edx,1),%ch
 6fd:	03 09                	add    (%ecx),%ecx
 6ff:	74 b0                	je     6b1 <__executable_start-0x80479e3>
 701:	00 02                	add    %al,(%edx)
 703:	04 01                	add    $0x1,%al
 705:	06                   	push   %es
 706:	4a                   	dec    %edx
 707:	06                   	push   %es
 708:	02 2c 13             	add    (%ebx,%edx,1),%ch
 70b:	00 02                	add    %al,(%edx)
 70d:	04 01                	add    $0x1,%al
 70f:	4c                   	dec    %esp
 710:	06                   	push   %es
 711:	74 00                	je     713 <__executable_start-0x8047981>
 713:	02 04 01             	add    (%ecx,%eax,1),%al
 716:	06                   	push   %es
 717:	72 02                	jb     71b <__executable_start-0x8047979>
 719:	2c 16                	sub    $0x16,%al
 71b:	3d 39 00 02 04       	cmp    $0x4020039,%eax
 720:	02 06                	add    (%esi),%al
 722:	74 06                	je     72a <__executable_start-0x804796a>
 724:	50                   	push   %eax
 725:	00 02                	add    %al,(%edx)
 727:	04 01                	add    $0x1,%al
 729:	06                   	push   %es
 72a:	74 9e                	je     6ca <__executable_start-0x80479ca>
 72c:	00 02                	add    %al,(%edx)
 72e:	04 03                	add    $0x3,%al
 730:	06                   	push   %es
 731:	59                   	pop    %ecx
 732:	51                   	push   %ecx
 733:	08 14 30             	or     %dl,(%eax,%esi,1)
 736:	00 02                	add    %al,(%edx)
 738:	04 01                	add    $0x1,%al
 73a:	84 75 00             	test   %dh,0x0(%ebp)
 73d:	02 04 01             	add    (%ecx,%eax,1),%al
 740:	c5 02                	lds    (%edx),%eax
 742:	2f                   	das    
 743:	15 49 78 bb 6e       	adc    $0x6ebb7849,%eax
 748:	bd 69 00 02 04       	mov    $0x4020069,%ebp
 74d:	01 8d 02 2c 17 a1    	add    %ecx,-0x5ee8d3fe(%ebp)
 753:	37                   	aaa    
 754:	93                   	xchg   %eax,%ebx
 755:	bd 5e d9 bb 08       	mov    $0x8bbd95e,%ebp
 75a:	2d 08 24 97 c9       	sub    $0xc9972408,%eax
 75f:	75 08                	jne    769 <__executable_start-0x804792b>
 761:	2d bd 91 6c 59       	sub    $0x596c91bd,%eax
 766:	5b                   	pop    %ebx
 767:	72 a0                	jb     709 <__executable_start-0x804798b>
 769:	b8 5e 34 d9 bb       	mov    $0xbbd9345e,%eax
 76e:	08 2d 08 24 03 3a    	or     %ch,0x3a032408
 774:	90                   	nop
 775:	e7 00                	out    %eax,$0x0
 777:	02 04 01             	add    (%ecx,%eax,1),%al
 77a:	06                   	push   %es
 77b:	4a                   	dec    %edx
 77c:	06                   	push   %es
 77d:	02 2c 13             	add    (%ebx,%edx,1),%ch
 780:	00 02                	add    %al,(%edx)
 782:	04 01                	add    $0x1,%al
 784:	06                   	push   %es
 785:	74 06                	je     78d <__executable_start-0x8047907>
 787:	02 2c 16             	add    (%esi,%edx,1),%ch
 78a:	4b                   	dec    %ebx
 78b:	67 00 02             	add    %al,(%bp,%si)
 78e:	04 01                	add    $0x1,%al
 790:	06                   	push   %es
 791:	4a                   	dec    %edx
 792:	06                   	push   %es
 793:	02 2c 1a             	add    (%edx,%ebx,1),%ch
 796:	68 67 77 00 02       	push   $0x2007767
 79b:	04 01                	add    $0x1,%al
 79d:	03 75 3c             	add    0x3c(%ebp),%esi
 7a0:	06                   	push   %es
 7a1:	08 74 06 03          	or     %dh,0x3(%esi,%eax,1)
 7a5:	11 2e                	adc    %ebp,(%esi)
 7a7:	3b 08                	cmp    (%eax),%ecx
 7a9:	76 68                	jbe    813 <__executable_start-0x8047881>
 7ab:	3d cb 84 87 08       	cmp    $0x88784cb,%eax
 7b0:	15 00 02 04 01       	adc    $0x1040200,%eax
 7b5:	ae                   	scas   %es:(%edi),%al
 7b6:	00 02                	add    %al,(%edx)
 7b8:	04 01                	add    $0x1,%al
 7ba:	80 02 2c             	addb   $0x2c,(%edx)
 7bd:	15 65 4e 6b 77       	adc    $0x776b4e65,%eax
 7c2:	00 02                	add    %al,(%edx)
 7c4:	04 01                	add    $0x1,%al
 7c6:	4c                   	dec    %esp
 7c7:	00 02                	add    %al,(%edx)
 7c9:	04 01                	add    $0x1,%al
 7cb:	8e 02                	mov    (%edx),%es
 7cd:	2c 14                	sub    $0x14,%al
 7cf:	a0 2f 03 8b 7f       	mov    0x7f8b032f,%al
 7d4:	4a                   	dec    %edx
 7d5:	ad                   	lods   %ds:(%esi),%eax
 7d6:	08 67 ae             	or     %ah,-0x52(%edi)
 7d9:	00 02                	add    %al,(%edx)
 7db:	04 01                	add    $0x1,%al
 7dd:	4e                   	dec    %esi
 7de:	08 13                	or     %dl,(%ebx)
 7e0:	08 3b                	or     %bh,(%ebx)
 7e2:	b1 70                	mov    $0x70,%cl
 7e4:	4e                   	dec    %esi
 7e5:	59                   	pop    %ecx
 7e6:	03 ed                	add    %ebp,%ebp
 7e8:	00 82 85 00 02 04    	add    %al,0x4020085(%edx)
 7ee:	02 06                	add    (%esi),%al
 7f0:	08 66 66             	or     %ah,0x66(%esi)
 7f3:	06                   	push   %es
 7f4:	5b                   	pop    %ebx
 7f5:	03 0d 2e 08 23 00    	add    0x23082e,%ecx
 7fb:	02 04 01             	add    (%ecx,%eax,1),%al
 7fe:	06                   	push   %es
 7ff:	4a                   	dec    %edx
 800:	06                   	push   %es
 801:	02 2c 13             	add    (%ebx,%edx,1),%ch
 804:	00 02                	add    %al,(%edx)
 806:	04 01                	add    $0x1,%al
 808:	06                   	push   %es
 809:	4a                   	dec    %edx
 80a:	06                   	push   %es
 80b:	02 2c 14             	add    (%esp,%edx,1),%ch
 80e:	08 2f                	or     %ch,(%edi)
 810:	4c                   	dec    %esp
 811:	85 f3                	test   %esi,%ebx
 813:	4d                   	dec    %ebp
 814:	03 0e                	add    (%esi),%ecx
 816:	90                   	nop
 817:	e7 00                	out    %eax,$0x0
 819:	02 04 01             	add    (%ecx,%eax,1),%al
 81c:	06                   	push   %es
 81d:	4a                   	dec    %edx
 81e:	06                   	push   %es
 81f:	02 2c 13             	add    (%ebx,%edx,1),%ch
 822:	00 02                	add    %al,(%edx)
 824:	04 01                	add    $0x1,%al
 826:	06                   	push   %es
 827:	4a                   	dec    %edx
 828:	06                   	push   %es
 829:	02 2c 14             	add    (%esp,%edx,1),%ch
 82c:	08 4b c9             	or     %cl,-0x37(%ebx)
 82f:	ca d9 08             	lret   $0x8d9
 832:	21 5a 3d             	and    %ebx,0x3d(%edx)
 835:	02 08                	add    (%eax),%cl
 837:	00 01                	add    %al,(%ecx)
 839:	01 d5                	add    %edx,%ebp
 83b:	00 00                	add    %al,(%eax)
 83d:	00 02                	add    %al,(%edx)
 83f:	00 36                	add    %dh,(%esi)
 841:	00 00                	add    %al,(%eax)
 843:	00 01                	add    %al,(%ecx)
 845:	01 fb                	add    %edi,%ebx
 847:	0e                   	push   %cs
 848:	0d 00 01 01 01       	or     $0x1010100,%eax
 84d:	01 00                	add    %eax,(%eax)
 84f:	00 00                	add    %al,(%eax)
 851:	01 00                	add    %eax,(%eax)
 853:	00 01                	add    %al,(%ecx)
 855:	2e 2e 2f             	cs cs das 
 858:	6c                   	insb   (%dx),%es:(%edi)
 859:	69 62 00 00 61 72 69 	imul   $0x69726100,0x0(%edx),%esp
 860:	74 68                	je     8ca <__executable_start-0x80477ca>
 862:	6d                   	insl   (%dx),%es:(%edi)
 863:	65 74 69             	gs je  8cf <__executable_start-0x80477c5>
 866:	63 2e                	arpl   %bp,(%esi)
 868:	63 00                	arpl   %ax,(%eax)
 86a:	01 00                	add    %eax,(%eax)
 86c:	00 73 74             	add    %dh,0x74(%ebx)
 86f:	64 69 6e 74 2e 68 00 	imul   $0x100682e,%fs:0x74(%esi),%ebp
 876:	01 
 877:	00 00                	add    %al,(%eax)
 879:	00 00                	add    %al,(%eax)
 87b:	05 02 10 9b 04       	add    $0x49b1002,%eax
 880:	08 03                	or     %al,(%ebx)
 882:	ce                   	into   
 883:	00 01                	add    %al,(%ecx)
 885:	08 59 03             	or     %bl,0x3(%ecx)
 888:	1b 66 4e             	sbb    0x4e(%esi),%esp
 88b:	03 b1 7f 08 ac 03    	add    0x3ac087f(%ecx),%esi
 891:	cf                   	iret   
 892:	00 2e                	add    %ch,(%esi)
 894:	08 50 08             	or     %dl,0x8(%eax)
 897:	4e                   	dec    %esi
 898:	03 b8 7f 2e 59 85    	add    -0x7aa6d181(%eax),%edi
 89e:	3b 31                	cmp    (%ecx),%esi
 8a0:	76 3d                	jbe    8df <__executable_start-0x80477b5>
 8a2:	3e 76 3d             	jbe,pt 8e2 <__executable_start-0x80477b2>
 8a5:	3e 76 3d             	jbe,pt 8e5 <__executable_start-0x80477af>
 8a8:	3f                   	aas    
 8a9:	03 34 82             	add    (%edx,%eax,4),%esi
 8ac:	03 a5 7f 08 f2 03    	add    0x3f2087f(%ebp),%esp
 8b2:	db 00                	fildl  (%eax)
 8b4:	66 08 67 03          	data16 or %ah,0x3(%edi)
 8b8:	7a 02                	jp     8bc <__executable_start-0x80477d8>
 8ba:	48                   	dec    %eax
 8bb:	01 c0                	add    %eax,%eax
 8bd:	85 03                	test   %eax,(%ebx)
 8bf:	0e                   	push   %cs
 8c0:	82                   	(bad)  
 8c1:	08 59 00             	or     %bl,0x0(%ecx)
 8c4:	02 04 02             	add    (%edx,%eax,1),%al
 8c7:	06                   	push   %es
 8c8:	4a                   	dec    %edx
 8c9:	00 02                	add    %al,(%edx)
 8cb:	04 03                	add    $0x3,%al
 8cd:	06                   	push   %es
 8ce:	e5 00                	in     $0x0,%eax
 8d0:	02 04 01             	add    (%ecx,%eax,1),%al
 8d3:	06                   	push   %es
 8d4:	4a                   	dec    %edx
 8d5:	00 02                	add    %al,(%edx)
 8d7:	04 02                	add    $0x2,%al
 8d9:	66 00 02             	data16 add %al,(%edx)
 8dc:	04 03                	add    $0x3,%al
 8de:	06                   	push   %es
 8df:	ad                   	lods   %ds:(%esi),%eax
 8e0:	00 02                	add    %al,(%edx)
 8e2:	04 03                	add    $0x3,%al
 8e4:	bb 00 02 04 01       	mov    $0x1040200,%ebx
 8e9:	06                   	push   %es
 8ea:	08 ba 00 02 04 03    	or     %bh,0x3040200(%edx)
 8f0:	06                   	push   %es
 8f1:	4b                   	dec    %ebx
 8f2:	03 14 ac             	add    (%esp,%ebp,4),%edx
 8f5:	3d 08 ad 4f 03       	cmp    $0x34fad08,%eax
 8fa:	6c                   	insb   (%dx),%es:(%edi)
 8fb:	c8 03 15 08          	enter  $0x1503,$0x8
 8ff:	ba 21 6b 3d 08       	mov    $0x83d6b21,%edx
 904:	ad                   	lods   %ds:(%esi),%eax
 905:	4f                   	dec    %edi
 906:	03 4b c8             	add    -0x38(%ebx),%ecx
 909:	03 36                	add    (%esi),%esi
 90b:	08 ba 59 02 06 00    	or     %bh,0x60259(%edx)
 911:	01 01                	add    %eax,(%ecx)

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	2f                   	das    
   1:	68 6f 6d 65 2f       	push   $0x2f656d6f
   6:	63 61 72             	arpl   %sp,0x72(%ecx)
   9:	6d                   	insl   (%dx),%es:(%edi)
   a:	69 6e 61 2f 70 69 6e 	imul   $0x6e69702f,0x61(%esi),%ebp
  11:	74 6f                	je     82 <__executable_start-0x8048012>
  13:	73 2f                	jae    44 <__executable_start-0x8048050>
  15:	73 72                	jae    89 <__executable_start-0x804800b>
  17:	63 2f                	arpl   %bp,(%edi)
  19:	65 78 61             	gs js  7d <__executable_start-0x8048017>
  1c:	6d                   	insl   (%dx),%es:(%edi)
  1d:	70 6c                	jo     8b <__executable_start-0x8048009>
  1f:	65 73 00             	gs jae 22 <__executable_start-0x8048072>
  22:	61                   	popa   
  23:	72 67                	jb     8c <__executable_start-0x8048008>
  25:	76 00                	jbe    27 <__executable_start-0x804806d>
  27:	6f                   	outsl  %ds:(%esi),(%dx)
  28:	70 65                	jo     8f <__executable_start-0x8048005>
  2a:	6e                   	outsb  %ds:(%esi),(%dx)
  2b:	00 61 72             	add    %ah,0x72(%ecx)
  2e:	67 63 00             	arpl   %ax,(%bx,%si)
  31:	6f                   	outsl  %ds:(%esi),(%dx)
  32:	70 65                	jo     99 <__executable_start-0x8047ffb>
  34:	6e                   	outsb  %ds:(%esi),(%dx)
  35:	2d 6e 6f 72 6d       	sub    $0x6d726f6e,%eax
  3a:	61                   	popa   
  3b:	6c                   	insb   (%dx),%es:(%edi)
  3c:	2e 63 00             	arpl   %ax,%cs:(%eax)
  3f:	72 65                	jb     a6 <__executable_start-0x8047fee>
  41:	61                   	popa   
  42:	64 00 73 69          	add    %dh,%fs:0x69(%ebx)
  46:	7a 65                	jp     ad <__executable_start-0x8047fe7>
  48:	74 79                	je     c3 <__executable_start-0x8047fd1>
  4a:	70 65                	jo     b1 <__executable_start-0x8047fe3>
  4c:	00 6d 61             	add    %ch,0x61(%ebp)
  4f:	69 6e 00 47 4e 55 20 	imul   $0x20554e47,0x0(%esi),%ebp
  56:	43                   	inc    %ebx
  57:	20 34 2e             	and    %dh,(%esi,%ebp,1)
  5a:	38 2e                	cmp    %ch,(%esi)
  5c:	35 20 2d 6d 33       	xor    $0x336d2d20,%eax
  61:	32 20                	xor    (%eax),%ah
  63:	2d 6d 73 6f 66       	sub    $0x666f736d,%eax
  68:	74 2d                	je     97 <__executable_start-0x8047ffd>
  6a:	66 6c                	data16 insb (%dx),%es:(%edi)
  6c:	6f                   	outsl  %ds:(%esi),(%dx)
  6d:	61                   	popa   
  6e:	74 20                	je     90 <__executable_start-0x8048004>
  70:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  75:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  7b:	72 69                	jb     e6 <__executable_start-0x8047fae>
  7d:	63 20                	arpl   %sp,(%eax)
  7f:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  84:	68 3d 69 36 38       	push   $0x3836693d
  89:	36 20 2d 67 20 2d 4f 	and    %ch,%ss:0x4f2d2067
  90:	20 2d 66 6e 6f 2d    	and    %ch,0x2d6f6e66
  96:	73 74                	jae    10c <__executable_start-0x8047f88>
  98:	61                   	popa   
  99:	63 6b 2d             	arpl   %bp,0x2d(%ebx)
  9c:	70 72                	jo     110 <__executable_start-0x8047f84>
  9e:	6f                   	outsl  %ds:(%esi),(%dx)
  9f:	74 65                	je     106 <__executable_start-0x8047f8e>
  a1:	63 74 6f 72          	arpl   %si,0x72(%edi,%ebp,2)
  a5:	00 5f 73             	add    %bl,0x73(%edi)
  a8:	74 61                	je     10b <__executable_start-0x8047f89>
  aa:	72 74                	jb     120 <__executable_start-0x8047f74>
  ac:	00 2e                	add    %ch,(%esi)
  ae:	2e 2f                	cs das 
  b0:	6c                   	insb   (%dx),%es:(%edi)
  b1:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
  b8:	2f                   	das    
  b9:	65 6e                	outsb  %gs:(%esi),(%dx)
  bb:	74 72                	je     12f <__executable_start-0x8047f65>
  bd:	79 2e                	jns    ed <__executable_start-0x8047fa7>
  bf:	63 00                	arpl   %ax,(%eax)
  c1:	63 6c 6f 73          	arpl   %bp,0x73(%edi,%ebp,2)
  c5:	65 00 75 74          	add    %dh,%gs:0x74(%ebp)
  c9:	68 72 65 61 64       	push   $0x64616572
  ce:	5f                   	pop    %edi
  cf:	6a 6f                	push   $0x6f
  d1:	69 6e 00 2e 2e 2f 6c 	imul   $0x6c2f2e2e,0x0(%esi),%ebp
  d8:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
  df:	2f                   	das    
  e0:	73 79                	jae    15b <__executable_start-0x8047f39>
  e2:	73 63                	jae    147 <__executable_start-0x8047f4d>
  e4:	61                   	popa   
  e5:	6c                   	insb   (%dx),%es:(%edi)
  e6:	6c                   	insb   (%dx),%es:(%edi)
  e7:	2e 63 00             	arpl   %ax,%cs:(%eax)
  ea:	72 65                	jb     151 <__executable_start-0x8047f43>
  ec:	61                   	popa   
  ed:	64 64 69 72 00 75 74 	fs imul $0x72687475,%fs:0x0(%edx),%esi
  f4:	68 72 
  f6:	65 61                	gs popa 
  f8:	64 5f                	fs pop %edi
  fa:	65 78 69             	gs js  166 <__executable_start-0x8047f2e>
  fd:	74 00                	je     ff <__executable_start-0x8047f95>
  ff:	61                   	popa   
 100:	64 64 72 00          	fs fs jb 104 <__executable_start-0x8047f90>
 104:	6d                   	insl   (%dx),%es:(%edi)
 105:	6b 64 69 72 00       	imul   $0x0,0x72(%ecx,%ebp,2),%esp
 10a:	77 72                	ja     17e <__executable_start-0x8047f16>
 10c:	69 74 65 00 63 68 64 	imul   $0x69646863,0x0(%ebp,%eiz,2),%esi
 113:	69 
 114:	72 00                	jb     116 <__executable_start-0x8047f7e>
 116:	53                   	push   %ebx
 117:	59                   	pop    %ecx
 118:	53                   	push   %ebx
 119:	5f                   	pop    %edi
 11a:	43                   	inc    %ebx
 11b:	4c                   	dec    %esp
 11c:	4f                   	dec    %edi
 11d:	53                   	push   %ebx
 11e:	45                   	inc    %ebp
 11f:	00 53 59             	add    %dl,0x59(%ebx)
 122:	53                   	push   %ebx
 123:	5f                   	pop    %edi
 124:	57                   	push   %edi
 125:	41                   	inc    %ecx
 126:	49                   	dec    %ecx
 127:	54                   	push   %esp
 128:	00 73 68             	add    %dh,0x68(%ebx)
 12b:	6f                   	outsl  %ds:(%esi),(%dx)
 12c:	72 74                	jb     1a2 <__executable_start-0x8047ef2>
 12e:	20 69 6e             	and    %ch,0x6e(%ecx)
 131:	74 00                	je     133 <__executable_start-0x8047f61>
 133:	53                   	push   %ebx
 134:	59                   	pop    %ecx
 135:	53                   	push   %ebx
 136:	5f                   	pop    %edi
 137:	52                   	push   %edx
 138:	45                   	inc    %ebp
 139:	41                   	inc    %ecx
 13a:	44                   	inc    %esp
 13b:	00 54 48 52          	add    %dl,0x52(%eax,%ecx,2)
 13f:	45                   	inc    %ebp
 140:	41                   	inc    %ecx
 141:	44                   	inc    %esp
 142:	5f                   	pop    %edi
 143:	46                   	inc    %esi
 144:	55                   	push   %ebp
 145:	4e                   	dec    %esi
 146:	43                   	inc    %ebx
 147:	00 74 68 5f          	add    %dh,0x5f(%eax,%ebp,2)
 14b:	65 78 69             	gs js  1b7 <__executable_start-0x8047edd>
 14e:	74 5f                	je     1af <__executable_start-0x8047ee5>
 150:	63 6f 64             	arpl   %bp,0x64(%edi)
 153:	65 00 53 59          	add    %dl,%gs:0x59(%ebx)
 157:	53                   	push   %ebx
 158:	5f                   	pop    %edi
 159:	4f                   	dec    %edi
 15a:	50                   	push   %eax
 15b:	45                   	inc    %ebp
 15c:	4e                   	dec    %esi
 15d:	00 66 69             	add    %ah,0x69(%esi)
 160:	6c                   	insb   (%dx),%es:(%edi)
 161:	65 00 53 59          	add    %dl,%gs:0x59(%ebx)
 165:	53                   	push   %ebx
 166:	5f                   	pop    %edi
 167:	43                   	inc    %ebx
 168:	52                   	push   %edx
 169:	45                   	inc    %ebp
 16a:	41                   	inc    %ecx
 16b:	54                   	push   %esp
 16c:	45                   	inc    %ebp
 16d:	00 6d 61             	add    %ch,0x61(%ebp)
 170:	70 69                	jo     1db <__executable_start-0x8047eb9>
 172:	64 5f                	fs pop %edi
 174:	74 00                	je     176 <__executable_start-0x8047f1e>
 176:	75 74                	jne    1ec <__executable_start-0x8047ea8>
 178:	68 72 65 61 64       	push   $0x64616572
 17d:	5f                   	pop    %edi
 17e:	63 72 65             	arpl   %si,0x65(%edx)
 181:	61                   	popa   
 182:	74 65                	je     1e9 <__executable_start-0x8047eab>
 184:	00 53 59             	add    %dl,0x59(%ebx)
 187:	53                   	push   %ebx
 188:	5f                   	pop    %edi
 189:	49                   	dec    %ecx
 18a:	53                   	push   %ebx
 18b:	44                   	inc    %esp
 18c:	49                   	dec    %ecx
 18d:	52                   	push   %edx
 18e:	00 66 69             	add    %ah,0x69(%esi)
 191:	6c                   	insb   (%dx),%es:(%edi)
 192:	65 73 69             	gs jae 1fe <__executable_start-0x8047e96>
 195:	7a 65                	jp     1fc <__executable_start-0x8047e98>
 197:	00 75 74             	add    %dh,0x74(%ebp)
 19a:	68 72 65 61 64       	push   $0x64616572
 19f:	5f                   	pop    %edi
 1a0:	67 65 74 70          	addr16 gs je 214 <__executable_start-0x8047e80>
 1a4:	69 64 00 77 61 69 74 	imul   $0x746961,0x77(%eax,%eax,1),%esp
 1ab:	00 
 1ac:	75 74                	jne    222 <__executable_start-0x8047e72>
 1ae:	68 72 65 61 64       	push   $0x64616572
 1b3:	5f                   	pop    %edi
 1b4:	6d                   	insl   (%dx),%es:(%edi)
 1b5:	73 6c                	jae    223 <__executable_start-0x8047e71>
 1b7:	65 65 70 00          	gs gs jo 1bb <__executable_start-0x8047ed9>
 1bb:	65 78 65             	gs js  223 <__executable_start-0x8047e71>
 1be:	63 00                	arpl   %ax,(%eax)
 1c0:	53                   	push   %ebx
 1c1:	59                   	pop    %ecx
 1c2:	53                   	push   %ebx
 1c3:	5f                   	pop    %edi
 1c4:	55                   	push   %ebp
 1c5:	54                   	push   %esp
 1c6:	48                   	dec    %eax
 1c7:	52                   	push   %edx
 1c8:	45                   	inc    %ebp
 1c9:	41                   	inc    %ecx
 1ca:	44                   	inc    %esp
 1cb:	5f                   	pop    %edi
 1cc:	47                   	inc    %edi
 1cd:	45                   	inc    %ebp
 1ce:	54                   	push   %esp
 1cf:	54                   	push   %esp
 1d0:	49                   	dec    %ecx
 1d1:	44                   	inc    %esp
 1d2:	00 6c 6f 6e          	add    %ch,0x6e(%edi,%ebp,2)
 1d6:	67 20 6c 6f          	and    %ch,0x6f(%si)
 1da:	6e                   	outsb  %ds:(%esi),(%dx)
 1db:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
 1df:	74 00                	je     1e1 <__executable_start-0x8047eb3>
 1e1:	69 6e 75 6d 62 65 72 	imul   $0x7265626d,0x75(%esi),%ebp
 1e8:	00 64 65 62          	add    %ah,0x62(%ebp,%eiz,2)
 1ec:	75 67                	jne    255 <__executable_start-0x8047e3f>
 1ee:	5f                   	pop    %edi
 1ef:	70 61                	jo     252 <__executable_start-0x8047e42>
 1f1:	6e                   	outsb  %ds:(%esi),(%dx)
 1f2:	69 63 00 6d 61 70 69 	imul   $0x6970616d,0x0(%ebx),%esp
 1f9:	64 00 53 59          	add    %dl,%fs:0x59(%ebx)
 1fd:	53                   	push   %ebx
 1fe:	5f                   	pop    %edi
 1ff:	4d                   	dec    %ebp
 200:	53                   	push   %ebx
 201:	4c                   	dec    %esp
 202:	45                   	inc    %ebp
 203:	45                   	inc    %ebp
 204:	50                   	push   %eax
 205:	00 6d 6d             	add    %ch,0x6d(%ebp)
 208:	61                   	popa   
 209:	70 00                	jo     20b <__executable_start-0x8047e89>
 20b:	53                   	push   %ebx
 20c:	59                   	pop    %ecx
 20d:	53                   	push   %ebx
 20e:	5f                   	pop    %edi
 20f:	52                   	push   %edx
 210:	45                   	inc    %ebp
 211:	41                   	inc    %ecx
 212:	44                   	inc    %esp
 213:	44                   	inc    %esp
 214:	49                   	dec    %ecx
 215:	52                   	push   %edx
 216:	00 53 59             	add    %dl,0x59(%ebx)
 219:	53                   	push   %ebx
 21a:	5f                   	pop    %edi
 21b:	55                   	push   %ebp
 21c:	54                   	push   %esp
 21d:	48                   	dec    %eax
 21e:	52                   	push   %edx
 21f:	45                   	inc    %ebp
 220:	41                   	inc    %ecx
 221:	44                   	inc    %esp
 222:	5f                   	pop    %edi
 223:	45                   	inc    %ebp
 224:	58                   	pop    %eax
 225:	49                   	dec    %ecx
 226:	54                   	push   %esp
 227:	00 75 74             	add    %dh,0x74(%ebp)
 22a:	68 72 65 61 64       	push   $0x64616572
 22f:	5f                   	pop    %edi
 230:	67 65 74 74          	addr16 gs je 2a8 <__executable_start-0x8047dec>
 234:	69 64 00 75 74 68 72 	imul   $0x65726874,0x75(%eax,%eax,1),%esp
 23b:	65 
 23c:	61                   	popa   
 23d:	64 5f                	fs pop %edi
 23f:	6a 6f                	push   $0x6f
 241:	69 6e 61 6c 6c 00 6e 	imul   $0x6e006c6c,0x61(%esi),%ebp
 248:	61                   	popa   
 249:	6d                   	insl   (%dx),%es:(%edi)
 24a:	65 00 53 59          	add    %dl,%gs:0x59(%ebx)
 24e:	53                   	push   %ebx
 24f:	5f                   	pop    %edi
 250:	53                   	push   %ebx
 251:	45                   	inc    %ebp
 252:	45                   	inc    %ebp
 253:	4b                   	dec    %ebx
 254:	00 53 59             	add    %dl,0x59(%ebx)
 257:	53                   	push   %ebx
 258:	5f                   	pop    %edi
 259:	46                   	inc    %esi
 25a:	49                   	dec    %ecx
 25b:	4c                   	dec    %esp
 25c:	45                   	inc    %ebp
 25d:	53                   	push   %ebx
 25e:	49                   	dec    %ecx
 25f:	5a                   	pop    %edx
 260:	45                   	inc    %ebp
 261:	00 75 6e             	add    %dh,0x6e(%ebp)
 264:	73 69                	jae    2cf <__executable_start-0x8047dc5>
 266:	67 6e                	outsb  %ds:(%si),(%dx)
 268:	65 64 20 63 68       	gs and %ah,%fs:0x68(%ebx)
 26d:	61                   	popa   
 26e:	72 00                	jb     270 <__executable_start-0x8047e24>
 270:	6c                   	insb   (%dx),%es:(%edi)
 271:	6f                   	outsl  %ds:(%esi),(%dx)
 272:	6e                   	outsb  %ds:(%esi),(%dx)
 273:	67 20 6c 6f          	and    %ch,0x6f(%si)
 277:	6e                   	outsb  %ds:(%esi),(%dx)
 278:	67 20 75 6e          	and    %dh,0x6e(%di)
 27c:	73 69                	jae    2e7 <__executable_start-0x8047dad>
 27e:	67 6e                	outsb  %ds:(%si),(%dx)
 280:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
 285:	74 00                	je     287 <__executable_start-0x8047e0d>
 287:	75 69                	jne    2f2 <__executable_start-0x8047da2>
 289:	6e                   	outsb  %ds:(%esi),(%dx)
 28a:	74 33                	je     2bf <__executable_start-0x8047dd5>
 28c:	32 5f 74             	xor    0x74(%edi),%bl
 28f:	00 63 6d             	add    %ah,0x6d(%ebx)
 292:	64 5f                	fs pop %edi
 294:	6c                   	insb   (%dx),%es:(%edi)
 295:	69 6e 65 00 69 73 64 	imul   $0x64736900,0x65(%esi),%ebp
 29c:	69 72 00 53 59 53 5f 	imul   $0x5f535953,0x0(%edx),%esi
 2a3:	57                   	push   %edi
 2a4:	52                   	push   %edx
 2a5:	49                   	dec    %ecx
 2a6:	54                   	push   %esp
 2a7:	45                   	inc    %ebp
 2a8:	00 53 59             	add    %dl,0x59(%ebx)
 2ab:	53                   	push   %ebx
 2ac:	5f                   	pop    %edi
 2ad:	4d                   	dec    %ebp
 2ae:	55                   	push   %ebp
 2af:	4e                   	dec    %esi
 2b0:	4d                   	dec    %ebp
 2b1:	41                   	inc    %ecx
 2b2:	50                   	push   %eax
 2b3:	00 5f 5f             	add    %bl,0x5f(%edi)
 2b6:	66 75 6e             	data16 jne 327 <__executable_start-0x8047d6d>
 2b9:	63 5f 5f             	arpl   %bx,0x5f(%edi)
 2bc:	00 53 59             	add    %dl,0x59(%ebx)
 2bf:	53                   	push   %ebx
 2c0:	5f                   	pop    %edi
 2c1:	54                   	push   %esp
 2c2:	45                   	inc    %ebp
 2c3:	4c                   	dec    %esp
 2c4:	4c                   	dec    %esp
 2c5:	00 73 68             	add    %dh,0x68(%ebx)
 2c8:	6f                   	outsl  %ds:(%esi),(%dx)
 2c9:	72 74                	jb     33f <__executable_start-0x8047d55>
 2cb:	20 75 6e             	and    %dh,0x6e(%ebp)
 2ce:	73 69                	jae    339 <__executable_start-0x8047d5b>
 2d0:	67 6e                	outsb  %ds:(%si),(%dx)
 2d2:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
 2d7:	74 00                	je     2d9 <__executable_start-0x8047dbb>
 2d9:	74 68                	je     343 <__executable_start-0x8047d51>
 2db:	5f                   	pop    %edi
 2dc:	69 64 00 53 59 53 5f 	imul   $0x455f5359,0x53(%eax,%eax,1),%esp
 2e3:	45 
 2e4:	58                   	pop    %eax
 2e5:	45                   	inc    %ebp
 2e6:	43                   	inc    %ebx
 2e7:	00 5f 42             	add    %bl,0x42(%edi)
 2ea:	6f                   	outsl  %ds:(%esi),(%dx)
 2eb:	6f                   	outsl  %ds:(%esi),(%dx)
 2ec:	6c                   	insb   (%dx),%es:(%edi)
 2ed:	00 53 59             	add    %dl,0x59(%ebx)
 2f0:	53                   	push   %ebx
 2f1:	5f                   	pop    %edi
 2f2:	55                   	push   %ebp
 2f3:	54                   	push   %esp
 2f4:	48                   	dec    %eax
 2f5:	52                   	push   %edx
 2f6:	45                   	inc    %ebp
 2f7:	41                   	inc    %ecx
 2f8:	44                   	inc    %esp
 2f9:	5f                   	pop    %edi
 2fa:	43                   	inc    %ebx
 2fb:	52                   	push   %edx
 2fc:	45                   	inc    %ebp
 2fd:	41                   	inc    %ecx
 2fe:	54                   	push   %esp
 2ff:	45                   	inc    %ebp
 300:	00 53 59             	add    %dl,0x59(%ebx)
 303:	53                   	push   %ebx
 304:	5f                   	pop    %edi
 305:	43                   	inc    %ebx
 306:	48                   	dec    %eax
 307:	44                   	inc    %esp
 308:	49                   	dec    %ecx
 309:	52                   	push   %edx
 30a:	00 73 65             	add    %dh,0x65(%ebx)
 30d:	65 6b 00 68          	imul   $0x68,%gs:(%eax),%eax
 311:	61                   	popa   
 312:	6c                   	insb   (%dx),%es:(%edi)
 313:	74 00                	je     315 <__executable_start-0x8047d7f>
 315:	62 75 66             	bound  %esi,0x66(%ebp)
 318:	66 65 72 00          	data16 gs jb 31c <__executable_start-0x8047d78>
 31c:	53                   	push   %ebx
 31d:	59                   	pop    %ecx
 31e:	53                   	push   %ebx
 31f:	5f                   	pop    %edi
 320:	55                   	push   %ebp
 321:	54                   	push   %esp
 322:	48                   	dec    %eax
 323:	52                   	push   %edx
 324:	45                   	inc    %ebp
 325:	41                   	inc    %ecx
 326:	44                   	inc    %esp
 327:	5f                   	pop    %edi
 328:	4a                   	dec    %edx
 329:	4f                   	dec    %edi
 32a:	49                   	dec    %ecx
 32b:	4e                   	dec    %esi
 32c:	41                   	inc    %ecx
 32d:	4c                   	dec    %esp
 32e:	4c                   	dec    %esp
 32f:	00 66 63             	add    %ah,0x63(%esi)
 332:	5f                   	pop    %edi
 333:	61                   	popa   
 334:	72 67                	jb     39d <__executable_start-0x8047cf7>
 336:	00 53 59             	add    %dl,0x59(%ebx)
 339:	53                   	push   %ebx
 33a:	5f                   	pop    %edi
 33b:	45                   	inc    %ebp
 33c:	58                   	pop    %eax
 33d:	49                   	dec    %ecx
 33e:	54                   	push   %esp
 33f:	00 72 65             	add    %dh,0x65(%edx)
 342:	6d                   	insl   (%dx),%es:(%edi)
 343:	6f                   	outsl  %ds:(%esi),(%dx)
 344:	76 65                	jbe    3ab <__executable_start-0x8047ce9>
 346:	00 72 65             	add    %dh,0x65(%edx)
 349:	74 76                	je     3c1 <__executable_start-0x8047cd3>
 34b:	61                   	popa   
 34c:	6c                   	insb   (%dx),%es:(%edi)
 34d:	00 53 59             	add    %dl,0x59(%ebx)
 350:	53                   	push   %ebx
 351:	5f                   	pop    %edi
 352:	55                   	push   %ebp
 353:	54                   	push   %esp
 354:	48                   	dec    %eax
 355:	52                   	push   %edx
 356:	45                   	inc    %ebp
 357:	41                   	inc    %ecx
 358:	44                   	inc    %esp
 359:	5f                   	pop    %edi
 35a:	47                   	inc    %edi
 35b:	45                   	inc    %ebp
 35c:	54                   	push   %esp
 35d:	50                   	push   %eax
 35e:	49                   	dec    %ecx
 35f:	44                   	inc    %esp
 360:	00 74 65 6c          	add    %dh,0x6c(%ebp,%eiz,2)
 364:	6c                   	insb   (%dx),%es:(%edi)
 365:	00 6d 75             	add    %ch,0x75(%ebp)
 368:	6e                   	outsb  %ds:(%esi),(%dx)
 369:	6d                   	insl   (%dx),%es:(%edi)
 36a:	61                   	popa   
 36b:	70 00                	jo     36d <__executable_start-0x8047d27>
 36d:	53                   	push   %ebx
 36e:	59                   	pop    %ecx
 36f:	53                   	push   %ebx
 370:	5f                   	pop    %edi
 371:	55                   	push   %ebp
 372:	54                   	push   %esp
 373:	48                   	dec    %eax
 374:	52                   	push   %edx
 375:	45                   	inc    %ebp
 376:	41                   	inc    %ecx
 377:	44                   	inc    %esp
 378:	5f                   	pop    %edi
 379:	4a                   	dec    %edx
 37a:	4f                   	dec    %edi
 37b:	49                   	dec    %ecx
 37c:	4e                   	dec    %esi
 37d:	00 74 68 5f          	add    %dh,0x5f(%eax,%ebp,2)
 381:	73 74                	jae    3f7 <__executable_start-0x8047c9d>
 383:	61                   	popa   
 384:	74 75                	je     3fb <__executable_start-0x8047c99>
 386:	73 00                	jae    388 <__executable_start-0x8047d0c>
 388:	70 6f                	jo     3f9 <__executable_start-0x8047c9b>
 38a:	73 69                	jae    3f5 <__executable_start-0x8047c9f>
 38c:	74 69                	je     3f7 <__executable_start-0x8047c9d>
 38e:	6f                   	outsl  %ds:(%esi),(%dx)
 38f:	6e                   	outsb  %ds:(%esi),(%dx)
 390:	00 74 68 5f          	add    %dh,0x5f(%eax,%ebp,2)
 394:	66 63 00             	data16 arpl %ax,(%eax)
 397:	53                   	push   %ebx
 398:	59                   	pop    %ecx
 399:	53                   	push   %ebx
 39a:	5f                   	pop    %edi
 39b:	4d                   	dec    %ebp
 39c:	4d                   	dec    %ebp
 39d:	41                   	inc    %ecx
 39e:	50                   	push   %eax
 39f:	00 53 59             	add    %dl,0x59(%ebx)
 3a2:	53                   	push   %ebx
 3a3:	5f                   	pop    %edi
 3a4:	4d                   	dec    %ebp
 3a5:	4b                   	dec    %ebx
 3a6:	44                   	inc    %esp
 3a7:	49                   	dec    %ecx
 3a8:	52                   	push   %edx
 3a9:	00 53 59             	add    %dl,0x59(%ebx)
 3ac:	53                   	push   %ebx
 3ad:	5f                   	pop    %edi
 3ae:	49                   	dec    %ecx
 3af:	4e                   	dec    %esi
 3b0:	55                   	push   %ebp
 3b1:	4d                   	dec    %ebp
 3b2:	42                   	inc    %edx
 3b3:	45                   	inc    %ebp
 3b4:	52                   	push   %edx
 3b5:	00 53 59             	add    %dl,0x59(%ebx)
 3b8:	53                   	push   %ebx
 3b9:	5f                   	pop    %edi
 3ba:	52                   	push   %edx
 3bb:	45                   	inc    %ebp
 3bc:	4d                   	dec    %ebp
 3bd:	4f                   	dec    %edi
 3be:	56                   	push   %esi
 3bf:	45                   	inc    %ebp
 3c0:	00 53 59             	add    %dl,0x59(%ebx)
 3c3:	53                   	push   %ebx
 3c4:	5f                   	pop    %edi
 3c5:	48                   	dec    %eax
 3c6:	41                   	inc    %ecx
 3c7:	4c                   	dec    %esp
 3c8:	54                   	push   %esp
 3c9:	00 69 6e             	add    %ch,0x6e(%ecx)
 3cc:	69 74 69 61 6c 5f 73 	imul   $0x69735f6c,0x61(%ecx,%ebp,2),%esi
 3d3:	69 
 3d4:	7a 65                	jp     43b <__executable_start-0x8047c59>
 3d6:	00 6d 65             	add    %ch,0x65(%ebp)
 3d9:	73 73                	jae    44e <__executable_start-0x8047c46>
 3db:	61                   	popa   
 3dc:	67 65 00 5f 5f       	add    %bl,%gs:0x5f(%bx)
 3e1:	62 75 69             	bound  %esi,0x69(%ebp)
 3e4:	6c                   	insb   (%dx),%es:(%edi)
 3e5:	74 69                	je     450 <__executable_start-0x8047c44>
 3e7:	6e                   	outsb  %ds:(%esi),(%dx)
 3e8:	5f                   	pop    %edi
 3e9:	76 61                	jbe    44c <__executable_start-0x8047c48>
 3eb:	5f                   	pop    %edi
 3ec:	6c                   	insb   (%dx),%es:(%edi)
 3ed:	69 73 74 00 2e 2e 2f 	imul   $0x2f2e2e00,0x74(%ebx),%esi
 3f4:	6c                   	insb   (%dx),%es:(%edi)
 3f5:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
 3fc:	2f                   	das    
 3fd:	64 65 62 75 67       	fs bound %esi,%gs:0x67(%ebp)
 402:	2e 63 00             	arpl   %ax,%cs:(%eax)
 405:	66 75 6e             	data16 jne 476 <__executable_start-0x8047c1e>
 408:	63 74 69 6f          	arpl   %si,0x6f(%ecx,%ebp,2)
 40c:	6e                   	outsb  %ds:(%esi),(%dx)
 40d:	00 64 65 62          	add    %ah,0x62(%ebp,%eiz,2)
 411:	75 67                	jne    47a <__executable_start-0x8047c1a>
 413:	5f                   	pop    %edi
 414:	62 61 63             	bound  %esp,0x63(%ecx)
 417:	6b 74 72 61 63       	imul   $0x63,0x61(%edx,%esi,2),%esi
 41c:	65 00 5f 5f          	add    %bl,%gs:0x5f(%edi)
 420:	62 75 69             	bound  %esi,0x69(%ebp)
 423:	6c                   	insb   (%dx),%es:(%edi)
 424:	74 69                	je     48f <__executable_start-0x8047c05>
 426:	6e                   	outsb  %ds:(%esi),(%dx)
 427:	5f                   	pop    %edi
 428:	70 75                	jo     49f <__executable_start-0x8047bf5>
 42a:	74 63                	je     48f <__executable_start-0x8047c05>
 42c:	68 61 72 00 61       	push   $0x61007261
 431:	72 67                	jb     49a <__executable_start-0x8047bfa>
 433:	73 00                	jae    435 <__executable_start-0x8047c5f>
 435:	76 68                	jbe    49f <__executable_start-0x8047bf5>
 437:	70 72                	jo     4ab <__executable_start-0x8047be9>
 439:	69 6e 74 66 00 68 61 	imul   $0x61680066,0x74(%esi),%ebp
 440:	6e                   	outsb  %ds:(%esi),(%dx)
 441:	64 6c                	fs insb (%dx),%es:(%edi)
 443:	65 00 66 6f          	add    %ah,%gs:0x6f(%esi)
 447:	72 6d                	jb     4b6 <__executable_start-0x8047bde>
 449:	61                   	popa   
 44a:	74 00                	je     44c <__executable_start-0x8047c48>
 44c:	2e 2e 2f             	cs cs das 
 44f:	6c                   	insb   (%dx),%es:(%edi)
 450:	69 62 2f 75 73 65 72 	imul   $0x72657375,0x2f(%edx),%esp
 457:	2f                   	das    
 458:	63 6f 6e             	arpl   %bp,0x6e(%edi)
 45b:	73 6f                	jae    4cc <__executable_start-0x8047bc8>
 45d:	6c                   	insb   (%dx),%es:(%edi)
 45e:	65 2e 63 00          	gs arpl %ax,%cs:(%eax)
 462:	61                   	popa   
 463:	75 78                	jne    4dd <__executable_start-0x8047bb7>
 465:	5f                   	pop    %edi
 466:	00 5f 5f             	add    %bl,0x5f(%edi)
 469:	76 70                	jbe    4db <__executable_start-0x8047bb9>
 46b:	72 69                	jb     4d6 <__executable_start-0x8047bbe>
 46d:	6e                   	outsb  %ds:(%esi),(%dx)
 46e:	74 66                	je     4d6 <__executable_start-0x8047bbe>
 470:	00 66 6c             	add    %ah,0x6c(%esi)
 473:	75 73                	jne    4e8 <__executable_start-0x8047bac>
 475:	68 00 76 68 70       	push   $0x70687600
 47a:	72 69                	jb     4e5 <__executable_start-0x8047baf>
 47c:	6e                   	outsb  %ds:(%esi),(%dx)
 47d:	74 66                	je     4e5 <__executable_start-0x8047baf>
 47f:	5f                   	pop    %edi
 480:	61                   	popa   
 481:	75 78                	jne    4fb <__executable_start-0x8047b99>
 483:	00 61 64             	add    %ah,0x64(%ecx)
 486:	64 5f                	fs pop %edi
 488:	63 68 61             	arpl   %bp,0x61(%eax)
 48b:	72 00                	jb     48d <__executable_start-0x8047c07>
 48d:	63 68 61             	arpl   %bp,0x61(%eax)
 490:	72 5f                	jb     4f1 <__executable_start-0x8047ba3>
 492:	63 6e 74             	arpl   %bp,0x74(%esi)
 495:	00 5f 5f             	add    %bl,0x5f(%edi)
 498:	62 75 69             	bound  %esi,0x69(%ebp)
 49b:	6c                   	insb   (%dx),%es:(%edi)
 49c:	74 69                	je     507 <__executable_start-0x8047b8d>
 49e:	6e                   	outsb  %ds:(%esi),(%dx)
 49f:	5f                   	pop    %edi
 4a0:	70 75                	jo     517 <__executable_start-0x8047b7d>
 4a2:	74 73                	je     517 <__executable_start-0x8047b7d>
 4a4:	00 75 69             	add    %dh,0x69(%ebp)
 4a7:	6e                   	outsb  %ds:(%esi),(%dx)
 4a8:	74 70                	je     51a <__executable_start-0x8047b7a>
 4aa:	74 72                	je     51e <__executable_start-0x8047b76>
 4ac:	5f                   	pop    %edi
 4ad:	74 00                	je     4af <__executable_start-0x8047be5>
 4af:	65 78 70             	gs js  522 <__executable_start-0x8047b72>
 4b2:	6c                   	insb   (%dx),%es:(%edi)
 4b3:	61                   	popa   
 4b4:	69 6e 65 64 00 2e 2e 	imul   $0x2e2e0064,0x65(%esi),%ebp
 4bb:	2f                   	das    
 4bc:	6c                   	insb   (%dx),%es:(%edi)
 4bd:	69 62 2f 64 65 62 75 	imul   $0x75626564,0x2f(%edx),%esp
 4c4:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
 4c8:	66 72 61             	data16 jb 52c <__executable_start-0x8047b68>
 4cb:	6d                   	insl   (%dx),%es:(%edi)
 4cc:	65 00 73 74          	add    %dh,%gs:0x74(%ebx)
 4d0:	72 6e                	jb     540 <__executable_start-0x8047b54>
 4d2:	6c                   	insb   (%dx),%es:(%edi)
 4d3:	65 6e                	outsb  %gs:(%esi),(%dx)
 4d5:	00 69 73             	add    %ch,0x73(%ecx)
 4d8:	64 69 67 69 74 00 47 	imul   $0x52470074,%fs:0x69(%edi),%esp
 4df:	52 
 4e0:	4f                   	dec    %edi
 4e1:	55                   	push   %ebp
 4e2:	50                   	push   %eax
 4e3:	00 62 75             	add    %ah,0x75(%edx)
 4e6:	66 5f                	pop    %di
 4e8:	73 69                	jae    553 <__executable_start-0x8047b41>
 4ea:	7a 65                	jp     551 <__executable_start-0x8047b43>
 4ec:	00 75 69             	add    %dh,0x69(%ebp)
 4ef:	6e                   	outsb  %ds:(%esi),(%dx)
 4f0:	74 36                	je     528 <__executable_start-0x8047b6c>
 4f2:	34 5f                	xor    $0x5f,%al
 4f4:	74 00                	je     4f6 <__executable_start-0x8047b9e>
 4f6:	73 69                	jae    561 <__executable_start-0x8047b33>
 4f8:	7a 65                	jp     55f <__executable_start-0x8047b35>
 4fa:	5f                   	pop    %edi
 4fb:	74 00                	je     4fd <__executable_start-0x8047b97>
 4fd:	67 72 6f             	addr16 jb 56f <__executable_start-0x8047b25>
 500:	75 70                	jne    572 <__executable_start-0x8047b22>
 502:	00 62 75             	add    %ah,0x75(%edx)
 505:	66 5f                	pop    %di
 507:	00 70 61             	add    %dh,0x61(%eax)
 50a:	64 5f                	fs pop %edi
 50c:	63 6e 74             	arpl   %bp,0x74(%esi)
 50f:	00 5a 45             	add    %bl,0x45(%edx)
 512:	52                   	push   %edx
 513:	4f                   	dec    %edi
 514:	00 75 69             	add    %dh,0x69(%ebp)
 517:	6e                   	outsb  %ds:(%esi),(%dx)
 518:	74 38                	je     552 <__executable_start-0x8047b42>
 51a:	5f                   	pop    %edi
 51b:	74 00                	je     51d <__executable_start-0x8047b77>
 51d:	6f                   	outsl  %ds:(%esi),(%dx)
 51e:	75 74                	jne    594 <__executable_start-0x8047b00>
 520:	70 75                	jo     597 <__executable_start-0x8047afd>
 522:	74 5f                	je     583 <__executable_start-0x8047b11>
 524:	64 75 70             	fs jne 597 <__executable_start-0x8047afd>
 527:	00 76 73             	add    %dh,0x73(%esi)
 52a:	6e                   	outsb  %ds:(%esi),(%dx)
 52b:	70 72                	jo     59f <__executable_start-0x8047af5>
 52d:	69 6e 74 66 5f 68 65 	imul   $0x65685f66,0x74(%esi),%ebp
 534:	6c                   	insb   (%dx),%es:(%edi)
 535:	70 65                	jo     59c <__executable_start-0x8047af8>
 537:	72 00                	jb     539 <__executable_start-0x8047b5b>
 539:	77 69                	ja     5a4 <__executable_start-0x8047af0>
 53b:	64 74 68             	fs je  5a6 <__executable_start-0x8047aee>
 53e:	00 6e 6f             	add    %ch,0x6f(%esi)
 541:	74 5f                	je     5a2 <__executable_start-0x8047af2>
 543:	61                   	popa   
 544:	5f                   	pop    %edi
 545:	66 6c                	data16 insb (%dx),%es:(%edi)
 547:	61                   	popa   
 548:	67 00 62 61          	add    %ah,0x61(%bp,%si)
 54c:	73 65                	jae    5b3 <__executable_start-0x8047ae1>
 54e:	5f                   	pop    %edi
 54f:	64 00 43 48          	add    %al,%fs:0x48(%ebx)
 553:	41                   	inc    %ecx
 554:	52                   	push   %edx
 555:	00 6e 65             	add    %ch,0x65(%esi)
 558:	67 61                	addr16 popa 
 55a:	74 69                	je     5c5 <__executable_start-0x8047acf>
 55c:	76 65                	jbe    5c3 <__executable_start-0x8047ad1>
 55e:	00 64 69 67          	add    %ah,0x67(%ecx,%ebp,2)
 562:	69 74 73 00 53 49 5a 	imul   $0x455a4953,0x0(%ebx,%esi,2),%esi
 569:	45 
 56a:	54                   	push   %esp
 56b:	00 50 4c             	add    %dl,0x4c(%eax)
 56e:	55                   	push   %ebp
 56f:	53                   	push   %ebx
 570:	00 2e                	add    %ch,(%esi)
 572:	2e 2f                	cs das 
 574:	6c                   	insb   (%dx),%es:(%edi)
 575:	69 62 2f 73 74 64 69 	imul   $0x69647473,0x2f(%edx),%esp
 57c:	6f                   	outsl  %ds:(%esi),(%dx)
 57d:	2e 63 00             	arpl   %ax,%cs:(%eax)
 580:	69 6e 74 65 67 65 72 	imul   $0x72656765,0x74(%esi),%ebp
 587:	5f                   	pop    %edi
 588:	62 61 73             	bound  %esp,0x73(%ecx)
 58b:	65 00 62 61          	add    %ah,%gs:0x61(%edx)
 58f:	73 65                	jae    5f6 <__executable_start-0x8047a9e>
 591:	5f                   	pop    %edi
 592:	58                   	pop    %eax
 593:	00 70 72             	add    %dh,0x72(%eax)
 596:	69 6e 74 5f 68 75 6d 	imul   $0x6d75685f,0x74(%esi),%ebp
 59d:	61                   	popa   
 59e:	6e                   	outsb  %ds:(%esi),(%dx)
 59f:	5f                   	pop    %edi
 5a0:	72 65                	jb     607 <__executable_start-0x8047a8d>
 5a2:	61                   	popa   
 5a3:	64 61                	fs popa 
 5a5:	62 6c 65 5f          	bound  %ebp,0x5f(%ebp,%eiz,2)
 5a9:	73 69                	jae    614 <__executable_start-0x8047a80>
 5ab:	7a 65                	jp     612 <__executable_start-0x8047a82>
 5ad:	00 53 50             	add    %dl,0x50(%ebx)
 5b0:	41                   	inc    %ecx
 5b1:	43                   	inc    %ebx
 5b2:	45                   	inc    %ebp
 5b3:	00 66 6c             	add    %ah,0x6c(%esi)
 5b6:	61                   	popa   
 5b7:	67 73 00             	addr16 jae 5ba <__executable_start-0x8047ada>
 5ba:	66 6f                	outsw  %ds:(%esi),(%dx)
 5bc:	72 6d                	jb     62b <__executable_start-0x8047a69>
 5be:	61                   	popa   
 5bf:	74 5f                	je     620 <__executable_start-0x8047a74>
 5c1:	69 6e 74 65 67 65 72 	imul   $0x72656765,0x74(%esi),%ebp
 5c8:	00 61 73             	add    %ah,0x73(%ecx)
 5cb:	63 69 69             	arpl   %bp,0x69(%ecx)
 5ce:	00 62 61             	add    %ah,0x61(%edx)
 5d1:	73 65                	jae    638 <__executable_start-0x8047a5c>
 5d3:	5f                   	pop    %edi
 5d4:	6f                   	outsl  %ds:(%esi),(%dx)
 5d5:	00 75 69             	add    %dh,0x69(%ebp)
 5d8:	6e                   	outsb  %ds:(%esi),(%dx)
 5d9:	74 6d                	je     648 <__executable_start-0x8047a4c>
 5db:	61                   	popa   
 5dc:	78 5f                	js     63d <__executable_start-0x8047a57>
 5de:	74 00                	je     5e0 <__executable_start-0x8047ab4>
 5e0:	70 65                	jo     647 <__executable_start-0x8047a4d>
 5e2:	72 5f                	jb     643 <__executable_start-0x8047a51>
 5e4:	6c                   	insb   (%dx),%es:(%edi)
 5e5:	69 6e 65 00 62 61 73 	imul   $0x73616200,0x65(%esi),%ebp
 5ec:	65 5f                	gs pop %edi
 5ee:	78 00                	js     5f0 <__executable_start-0x8047aa4>
 5f0:	76 73                	jbe    665 <__executable_start-0x8047a2f>
 5f2:	6e                   	outsb  %ds:(%esi),(%dx)
 5f3:	70 72                	jo     667 <__executable_start-0x8047a2d>
 5f5:	69 6e 74 66 00 68 65 	imul   $0x65680066,0x74(%esi),%ebp
 5fc:	78 5f                	js     65d <__executable_start-0x8047a37>
 5fe:	64 75 6d             	fs jne 66e <__executable_start-0x8047a26>
 601:	70 00                	jo     603 <__executable_start-0x8047a91>
 603:	64 69 67 69 74 5f 63 	imul   $0x6e635f74,%fs:0x69(%edi),%esp
 60a:	6e 
 60b:	74 00                	je     60d <__executable_start-0x8047a87>
 60d:	49                   	dec    %ecx
 60e:	4e                   	dec    %esi
 60f:	54                   	push   %esp
 610:	4d                   	dec    %ebp
 611:	41                   	inc    %ecx
 612:	58                   	pop    %eax
 613:	00 76 61             	add    %dh,0x61(%esi)
 616:	6c                   	insb   (%dx),%es:(%edi)
 617:	75 65                	jne    67e <__executable_start-0x8047a16>
 619:	00 4c 4f 4e          	add    %cl,0x4e(%edi,%ecx,2)
 61d:	47                   	inc    %edi
 61e:	4c                   	dec    %esp
 61f:	4f                   	dec    %edi
 620:	4e                   	dec    %esi
 621:	47                   	inc    %edi
 622:	00 69 73             	add    %ch,0x73(%ecx)
 625:	70 72                	jo     699 <__executable_start-0x80479fb>
 627:	69 6e 74 00 66 61 63 	imul   $0x63616600,0x74(%esi),%ebp
 62e:	74 6f                	je     69f <__executable_start-0x80479f5>
 630:	72 73                	jb     6a5 <__executable_start-0x80479ef>
 632:	00 73 69             	add    %dh,0x69(%ebx)
 635:	67 6e                	outsb  %ds:(%si),(%dx)
 637:	00 69 73             	add    %ch,0x73(%ecx)
 63a:	5f                   	pop    %edi
 63b:	73 69                	jae    6a6 <__executable_start-0x80479ee>
 63d:	67 6e                	outsb  %ds:(%si),(%dx)
 63f:	65 64 00 50 4f       	gs add %dl,%fs:0x4f(%eax)
 644:	55                   	push   %ebp
 645:	4e                   	dec    %esi
 646:	44                   	inc    %esp
 647:	00 76 73             	add    %dh,0x73(%esi)
 64a:	6e                   	outsb  %ds:(%esi),(%dx)
 64b:	70 72                	jo     6bf <__executable_start-0x80479d5>
 64d:	69 6e 74 66 5f 61 75 	imul   $0x75615f66,0x74(%esi),%ebp
 654:	78 00                	js     656 <__executable_start-0x8047a3e>
 656:	70 61                	jo     6b9 <__executable_start-0x80479db>
 658:	72 73                	jb     6cd <__executable_start-0x80479c7>
 65a:	65 5f                	gs pop %edi
 65c:	63 6f 6e             	arpl   %bp,0x6e(%edi)
 65f:	76 65                	jbe    6c6 <__executable_start-0x80479ce>
 661:	72 73                	jb     6d6 <__executable_start-0x80479be>
 663:	69 6f 6e 00 50 54 52 	imul   $0x52545000,0x6e(%edi),%ebp
 66a:	44                   	inc    %esp
 66b:	49                   	dec    %ecx
 66c:	46                   	inc    %esi
 66d:	46                   	inc    %esi
 66e:	54                   	push   %esp
 66f:	00 66 6f             	add    %ah,0x6f(%esi)
 672:	72 6d                	jb     6e1 <__executable_start-0x80479b3>
 674:	61                   	popa   
 675:	74 5f                	je     6d6 <__executable_start-0x80479be>
 677:	73 74                	jae    6ed <__executable_start-0x80479a7>
 679:	72 69                	jb     6e4 <__executable_start-0x80479b0>
 67b:	6e                   	outsb  %ds:(%esi),(%dx)
 67c:	67 00 6f 75          	add    %ch,0x75(%bx)
 680:	74 70                	je     6f2 <__executable_start-0x80479a2>
 682:	75 74                	jne    6f8 <__executable_start-0x804799c>
 684:	00 53 48             	add    %dl,0x48(%ebx)
 687:	4f                   	dec    %edi
 688:	52                   	push   %edx
 689:	54                   	push   %esp
 68a:	00 70 72             	add    %dh,0x72(%eax)
 68d:	69 6e 74 66 5f 63 6f 	imul   $0x6f635f66,0x74(%esi),%ebp
 694:	6e                   	outsb  %ds:(%esi),(%dx)
 695:	76 65                	jbe    6fc <__executable_start-0x8047998>
 697:	72 73                	jb     70c <__executable_start-0x8047988>
 699:	69 6f 6e 00 6d 61 78 	imul   $0x78616d00,0x6e(%edi),%ebp
 6a0:	5f                   	pop    %edi
 6a1:	6c                   	insb   (%dx),%es:(%edi)
 6a2:	65 6e                	outsb  %gs:(%esi),(%dx)
 6a4:	67 74 68             	addr16 je 70f <__executable_start-0x8047985>
 6a7:	00 5f 5f             	add    %bl,0x5f(%edi)
 6aa:	70 72                	jo     71e <__executable_start-0x8047976>
 6ac:	69 6e 74 66 00 4d 49 	imul   $0x494d0066,0x74(%esi),%ebp
 6b3:	4e                   	dec    %esi
 6b4:	55                   	push   %ebp
 6b5:	53                   	push   %ebx
 6b6:	00 70 72             	add    %dh,0x72(%eax)
 6b9:	65 63 69 73          	arpl   %bp,%gs:0x73(%ecx)
 6bd:	69 6f 6e 00 6d 65 6d 	imul   $0x6d656d00,0x6e(%edi),%ebp
 6c4:	6d                   	insl   (%dx),%es:(%edi)
 6c5:	6f                   	outsl  %ds:(%esi),(%dx)
 6c6:	76 65                	jbe    72d <__executable_start-0x8047967>
 6c8:	00 73 74             	add    %dh,0x74(%ebx)
 6cb:	72 74                	jb     741 <__executable_start-0x8047953>
 6cd:	6f                   	outsl  %ds:(%esi),(%dx)
 6ce:	6b 5f 72 00          	imul   $0x0,0x72(%edi),%ebx
 6d2:	73 74                	jae    748 <__executable_start-0x804794c>
 6d4:	72 63                	jb     739 <__executable_start-0x804795b>
 6d6:	68 72 00 6d 61       	push   $0x616d0072
 6db:	78 6c                	js     749 <__executable_start-0x804794b>
 6dd:	65 6e                	outsb  %gs:(%esi),(%dx)
 6df:	00 6d 65             	add    %ch,0x65(%ebp)
 6e2:	6d                   	insl   (%dx),%es:(%edi)
 6e3:	63 6d 70             	arpl   %bp,0x70(%ebp)
 6e6:	00 73 72             	add    %dh,0x72(%ebx)
 6e9:	63 5f 6c             	arpl   %bx,0x6c(%edi)
 6ec:	65 6e                	outsb  %gs:(%esi),(%dx)
 6ee:	00 73 72             	add    %dh,0x72(%ebx)
 6f1:	63 5f 00             	arpl   %bx,0x0(%edi)
 6f4:	73 74                	jae    76a <__executable_start-0x804792a>
 6f6:	72 6c                	jb     764 <__executable_start-0x8047930>
 6f8:	65 6e                	outsb  %gs:(%esi),(%dx)
 6fa:	00 62 6c             	add    %ah,0x6c(%edx)
 6fd:	6f                   	outsl  %ds:(%esi),(%dx)
 6fe:	63 6b 00             	arpl   %bp,0x0(%ebx)
 701:	73 74                	jae    777 <__executable_start-0x804791d>
 703:	72 6c                	jb     771 <__executable_start-0x8047923>
 705:	63 70 79             	arpl   %si,0x79(%eax)
 708:	00 64 65 6c          	add    %ah,0x6c(%ebp,%eiz,2)
 70c:	69 6d 69 74 65 72 73 	imul   $0x73726574,0x69(%ebp),%ebp
 713:	00 73 74             	add    %dh,0x74(%ebx)
 716:	6f                   	outsl  %ds:(%esi),(%dx)
 717:	70 00                	jo     719 <__executable_start-0x804797b>
 719:	64 73 74             	fs jae 790 <__executable_start-0x8047904>
 71c:	5f                   	pop    %edi
 71d:	6c                   	insb   (%dx),%es:(%edi)
 71e:	65 6e                	outsb  %gs:(%esi),(%dx)
 720:	00 73 74             	add    %dh,0x74(%ebx)
 723:	72 70                	jb     795 <__executable_start-0x80478ff>
 725:	62 72 6b             	bound  %esi,0x6b(%edx)
 728:	00 6d 65             	add    %ch,0x65(%ebp)
 72b:	6d                   	insl   (%dx),%es:(%edi)
 72c:	63 68 72             	arpl   %bp,0x72(%eax)
 72f:	00 6e 65             	add    %ch,0x65(%esi)
 732:	65 64 6c             	gs fs insb (%dx),%es:(%edi)
 735:	65 00 2e             	add    %ch,%gs:(%esi)
 738:	2e 2f                	cs das 
 73a:	6c                   	insb   (%dx),%es:(%edi)
 73b:	69 62 2f 73 74 72 69 	imul   $0x69727473,0x2f(%edx),%esp
 742:	6e                   	outsb  %ds:(%esi),(%dx)
 743:	67 2e 63 00          	arpl   %ax,%cs:(%bx,%si)
 747:	64 73 74             	fs jae 7be <__executable_start-0x80478d6>
 74a:	5f                   	pop    %edi
 74b:	00 62 6c             	add    %ah,0x6c(%edx)
 74e:	6f                   	outsl  %ds:(%esi),(%dx)
 74f:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 752:	00 73 74             	add    %dh,0x74(%ebx)
 755:	72 63                	jb     7ba <__executable_start-0x80478da>
 757:	73 70                	jae    7c9 <__executable_start-0x80478cb>
 759:	6e                   	outsb  %ds:(%esi),(%dx)
 75a:	00 73 6b             	add    %dh,0x6b(%ebx)
 75d:	69 70 00 73 61 76 65 	imul   $0x65766173,0x0(%eax),%esi
 764:	5f                   	pop    %edi
 765:	70 74                	jo     7db <__executable_start-0x80478b9>
 767:	72 00                	jb     769 <__executable_start-0x804792b>
 769:	73 74                	jae    7df <__executable_start-0x80478b5>
 76b:	72 6c                	jb     7d9 <__executable_start-0x80478bb>
 76d:	63 61 74             	arpl   %sp,0x74(%ecx)
 770:	00 6e 65             	add    %ch,0x65(%esi)
 773:	65 64 6c             	gs fs insb (%dx),%es:(%edi)
 776:	65 5f                	gs pop %edi
 778:	6c                   	insb   (%dx),%es:(%edi)
 779:	65 6e                	outsb  %gs:(%esi),(%dx)
 77b:	00 73 74             	add    %dh,0x74(%ebx)
 77e:	72 63                	jb     7e3 <__executable_start-0x80478b1>
 780:	6d                   	insl   (%dx),%es:(%edi)
 781:	70 00                	jo     783 <__executable_start-0x8047911>
 783:	6d                   	insl   (%dx),%es:(%edi)
 784:	65 6d                	gs insl (%dx),%es:(%edi)
 786:	63 70 79             	arpl   %si,0x79(%eax)
 789:	00 73 74             	add    %dh,0x74(%ebx)
 78c:	72 73                	jb     801 <__executable_start-0x8047893>
 78e:	70 6e                	jo     7fe <__executable_start-0x8047896>
 790:	00 6d 65             	add    %ch,0x65(%ebp)
 793:	6d                   	insl   (%dx),%es:(%edi)
 794:	73 65                	jae    7fb <__executable_start-0x8047899>
 796:	74 00                	je     798 <__executable_start-0x80478fc>
 798:	68 61 79 73 74       	push   $0x74737961
 79d:	61                   	popa   
 79e:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 7a1:	6c                   	insb   (%dx),%es:(%edi)
 7a2:	65 6e                	outsb  %gs:(%esi),(%dx)
 7a4:	00 74 6f 6b          	add    %dh,0x6b(%edi,%ebp,2)
 7a8:	65 6e                	outsb  %gs:(%esi),(%dx)
 7aa:	00 73 74             	add    %dh,0x74(%ebx)
 7ad:	72 73                	jb     822 <__executable_start-0x8047872>
 7af:	74 72                	je     823 <__executable_start-0x8047871>
 7b1:	00 68 61             	add    %ch,0x61(%eax)
 7b4:	79 73                	jns    829 <__executable_start-0x804786b>
 7b6:	74 61                	je     819 <__executable_start-0x804787b>
 7b8:	63 6b 00             	arpl   %bp,0x0(%ebx)
 7bb:	63 6f 70             	arpl   %bp,0x70(%edi)
 7be:	79 5f                	jns    81f <__executable_start-0x8047875>
 7c0:	63 6e 74             	arpl   %bp,0x74(%esi)
 7c3:	00 73 74             	add    %dh,0x74(%ebx)
 7c6:	72 72                	jb     83a <__executable_start-0x804785a>
 7c8:	63 68 72             	arpl   %bp,0x72(%eax)
 7cb:	00 6e 5f             	add    %ch,0x5f(%esi)
 7ce:	61                   	popa   
 7cf:	62 73 00             	bound  %esi,0x0(%ebx)
 7d2:	5f                   	pop    %edi
 7d3:	5f                   	pop    %edi
 7d4:	6d                   	insl   (%dx),%es:(%edi)
 7d5:	6f                   	outsl  %ds:(%esi),(%dx)
 7d6:	64 64 69 33 00 5f 5f 	fs imul $0x755f5f00,%fs:(%ebx),%esi
 7dd:	75 
 7de:	6d                   	insl   (%dx),%es:(%edi)
 7df:	6f                   	outsl  %ds:(%esi),(%dx)
 7e0:	64 64 69 33 00 73 6d 	fs imul $0x6f6d7300,%fs:(%ebx),%esi
 7e7:	6f 
 7e8:	64 36 34 00          	fs ss xor $0x0,%al
 7ec:	64 69 76 6c 00 5f 5f 	imul   $0x645f5f00,%fs:0x6c(%esi),%esi
 7f3:	64 
 7f4:	69 76 64 69 33 00 2e 	imul   $0x2e003369,0x64(%esi),%esi
 7fb:	2e 2f                	cs das 
 7fd:	6c                   	insb   (%dx),%es:(%edi)
 7fe:	69 62 2f 61 72 69 74 	imul   $0x74697261,0x2f(%edx),%esp
 805:	68 6d 65 74 69       	push   $0x6974656d
 80a:	63 2e                	arpl   %bp,(%esi)
 80c:	63 00                	arpl   %ax,(%eax)
 80e:	75 64                	jne    874 <__executable_start-0x8047820>
 810:	69 76 36 34 00 5f 5f 	imul   $0x5f5f0034,0x36(%esi),%esi
 817:	75 64                	jne    87d <__executable_start-0x8047817>
 819:	69 76 64 69 33 00 75 	imul   $0x75003369,0x64(%esi),%esi
 820:	6d                   	insl   (%dx),%es:(%edi)
 821:	6f                   	outsl  %ds:(%esi),(%dx)
 822:	64 36 34 00          	fs ss xor $0x0,%al
 826:	71 5f                	jno    887 <__executable_start-0x804780d>
 828:	61                   	popa   
 829:	62 73 00             	bound  %esi,0x0(%ebx)
 82c:	73 64                	jae    892 <__executable_start-0x8047802>
 82e:	69 76 36 34 00 64 5f 	imul   $0x5f640034,0x36(%esi),%esi
 835:	61                   	popa   
 836:	62 73 00             	bound  %esi,0x0(%ebx)

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
       0:	15 00 00 00 2c       	adc    $0x2c000000,%eax
       5:	00 00                	add    %al,(%eax)
       7:	00 01                	add    %al,(%ecx)
       9:	00 50 00             	add    %dl,0x0(%eax)
       c:	00 00                	add    %al,(%eax)
       e:	00 00                	add    %al,(%eax)
      10:	00 00                	add    %al,(%eax)
      12:	00 87 00 00 00 8c    	add    %al,-0x74000000(%edi)
      18:	00 00                	add    %al,(%eax)
      1a:	00 01                	add    %al,(%ecx)
      1c:	00 50 00             	add    %dl,0x0(%eax)
      1f:	00 00                	add    %al,(%eax)
      21:	00 00                	add    %al,(%eax)
      23:	00 00                	add    %al,(%eax)
      25:	00 98 00 00 00 9d    	add    %bl,-0x63000000(%eax)
      2b:	00 00                	add    %al,(%eax)
      2d:	00 01                	add    %al,(%ecx)
      2f:	00 50 00             	add    %dl,0x0(%eax)
      32:	00 00                	add    %al,(%eax)
      34:	00 00                	add    %al,(%eax)
      36:	00 00                	add    %al,(%eax)
      38:	00 2d 01 00 00 32    	add    %ch,0x32000001
      3e:	01 00                	add    %eax,(%eax)
      40:	00 01                	add    %al,(%ecx)
      42:	00 50 00             	add    %dl,0x0(%eax)
      45:	00 00                	add    %al,(%eax)
      47:	00 00                	add    %al,(%eax)
      49:	00 00                	add    %al,(%eax)
      4b:	00 3e                	add    %bh,(%esi)
      4d:	01 00                	add    %eax,(%eax)
      4f:	00 43 01             	add    %al,0x1(%ebx)
      52:	00 00                	add    %al,(%eax)
      54:	01 00                	add    %eax,(%eax)
      56:	50                   	push   %eax
	...
      5f:	53                   	push   %ebx
      60:	01 00                	add    %eax,(%eax)
      62:	00 58 01             	add    %bl,0x1(%eax)
      65:	00 00                	add    %al,(%eax)
      67:	01 00                	add    %eax,(%eax)
      69:	50                   	push   %eax
	...
      72:	64 01 00             	add    %eax,%fs:(%eax)
      75:	00 69 01             	add    %ch,0x1(%ecx)
      78:	00 00                	add    %al,(%eax)
      7a:	01 00                	add    %eax,(%eax)
      7c:	50                   	push   %eax
	...
      85:	2b 00                	sub    (%eax),%eax
      87:	00 00                	add    %al,(%eax)
      89:	33 00                	xor    (%eax),%eax
      8b:	00 00                	add    %al,(%eax)
      8d:	01 00                	add    %eax,(%eax)
      8f:	50                   	push   %eax
      90:	33 00                	xor    (%eax),%eax
      92:	00 00                	add    %al,(%eax)
      94:	3a 00                	cmp    (%eax),%al
      96:	00 00                	add    %al,(%eax)
      98:	02 00                	add    (%eax),%al
      9a:	91                   	xchg   %eax,%ecx
      9b:	64 3a 00             	cmp    %fs:(%eax),%al
      9e:	00 00                	add    %al,(%eax)
      a0:	58                   	pop    %eax
      a1:	00 00                	add    %al,(%eax)
      a3:	00 03                	add    %al,(%ebx)
      a5:	00 91 10 9f 00 00    	add    %dl,0x9f10(%ecx)
	...
      b3:	00 00                	add    %al,(%eax)
      b5:	09 00                	or     %eax,(%eax)
      b7:	00 00                	add    %al,(%eax)
      b9:	01 00                	add    %eax,(%eax)
      bb:	50                   	push   %eax
      bc:	09 00                	or     %eax,(%eax)
      be:	00 00                	add    %al,(%eax)
      c0:	29 00                	sub    %eax,(%eax)
      c2:	00 00                	add    %al,(%eax)
      c4:	01 00                	add    %eax,(%eax)
      c6:	53                   	push   %ebx
      c7:	29 00                	sub    %eax,(%eax)
      c9:	00 00                	add    %al,(%eax)
      cb:	2a 00                	sub    (%eax),%al
      cd:	00 00                	add    %al,(%eax)
      cf:	04 00                	add    $0x0,%al
      d1:	f3 01 50 9f          	repz add %edx,-0x61(%eax)
	...
      dd:	36 00 00             	add    %al,%ss:(%eax)
      e0:	00 58 00             	add    %bl,0x0(%eax)
      e3:	00 00                	add    %al,(%eax)
      e5:	01 00                	add    %eax,(%eax)
      e7:	53                   	push   %ebx
      e8:	58                   	pop    %eax
      e9:	00 00                	add    %al,(%eax)
      eb:	00 59 00             	add    %bl,0x0(%ecx)
      ee:	00 00                	add    %al,(%eax)
      f0:	02 00                	add    (%eax),%al
      f2:	91                   	xchg   %eax,%ecx
      f3:	04 00                	add    $0x0,%al
      f5:	00 00                	add    %al,(%eax)
      f7:	00 00                	add    %al,(%eax)
      f9:	00 00                	add    %al,(%eax)
      fb:	00 88 00 00 00 9e    	add    %cl,-0x62000000(%eax)
     101:	00 00                	add    %al,(%eax)
     103:	00 02                	add    %al,(%edx)
     105:	00 91 00 00 00 00    	add    %dl,0x0(%ecx)
     10b:	00 00                	add    %al,(%eax)
     10d:	00 00                	add    %al,(%eax)
     10f:	00 43 01             	add    %al,0x1(%ebx)
     112:	00 00                	add    %al,(%eax)
     114:	4b                   	dec    %ebx
     115:	01 00                	add    %eax,(%eax)
     117:	00 01                	add    %al,(%ecx)
     119:	00 50 4b             	add    %dl,0x4b(%eax)
     11c:	01 00                	add    %eax,(%eax)
     11e:	00 5a 01             	add    %bl,0x1(%edx)
     121:	00 00                	add    %al,(%eax)
     123:	02 00                	add    (%eax),%al
     125:	91                   	xchg   %eax,%ecx
     126:	68 5a 01 00 00       	push   $0x15a
     12b:	5f                   	pop    %edi
     12c:	01 00                	add    %eax,(%eax)
     12e:	00 03                	add    %al,(%ebx)
     130:	00 91 08 9f 00 00    	add    %dl,0x9f08(%ecx)
     136:	00 00                	add    %al,(%eax)
     138:	00 00                	add    %al,(%eax)
     13a:	00 00                	add    %al,(%eax)
     13c:	1d 00 00 00 78       	sbb    $0x78000000,%eax
     141:	00 00                	add    %al,(%eax)
     143:	00 01                	add    %al,(%ecx)
     145:	00 53 00             	add    %dl,0x0(%ebx)
     148:	00 00                	add    %al,(%eax)
     14a:	00 00                	add    %al,(%eax)
     14c:	00 00                	add    %al,(%eax)
     14e:	00 22                	add    %ah,(%edx)
     150:	00 00                	add    %al,(%eax)
     152:	00 38                	add    %bh,(%eax)
     154:	00 00                	add    %al,(%eax)
     156:	00 01                	add    %al,(%ecx)
     158:	00 50 38             	add    %dl,0x38(%eax)
     15b:	00 00                	add    %al,(%eax)
     15d:	00 46 00             	add    %al,0x0(%esi)
     160:	00 00                	add    %al,(%eax)
     162:	01 00                	add    %eax,(%eax)
     164:	55                   	push   %ebp
     165:	46                   	inc    %esi
     166:	00 00                	add    %al,(%eax)
     168:	00 4e 00             	add    %cl,0x0(%esi)
     16b:	00 00                	add    %al,(%eax)
     16d:	04 00                	add    $0x0,%al
     16f:	f3 01 50 9f          	repz add %edx,-0x61(%eax)
	...
     17b:	22 00                	and    (%eax),%al
     17d:	00 00                	add    %al,(%eax)
     17f:	2d 00 00 00 01       	sub    $0x1000000,%eax
     184:	00 52 2d             	add    %dl,0x2d(%edx)
     187:	00 00                	add    %al,(%eax)
     189:	00 38                	add    %bh,(%eax)
     18b:	00 00                	add    %al,(%eax)
     18d:	00 03                	add    %al,(%ebx)
     18f:	00 72 7f             	add    %dh,0x7f(%edx)
     192:	9f                   	lahf   
     193:	38 00                	cmp    %al,(%eax)
     195:	00 00                	add    %al,(%eax)
     197:	41                   	inc    %ecx
     198:	00 00                	add    %al,(%eax)
     19a:	00 03                	add    %al,(%ebx)
     19c:	00 73 7f             	add    %dh,0x7f(%ebx)
     19f:	9f                   	lahf   
     1a0:	41                   	inc    %ecx
     1a1:	00 00                	add    %al,(%eax)
     1a3:	00 44 00 00          	add    %al,0x0(%eax,%eax,1)
     1a7:	00 03                	add    %al,(%ebx)
     1a9:	00 73 7e             	add    %dh,0x7e(%ebx)
     1ac:	9f                   	lahf   
     1ad:	44                   	inc    %esp
     1ae:	00 00                	add    %al,(%eax)
     1b0:	00 46 00             	add    %al,0x0(%esi)
     1b3:	00 00                	add    %al,(%eax)
     1b5:	03 00                	add    (%eax),%eax
     1b7:	73 7f                	jae    238 <__executable_start-0x8047e5c>
     1b9:	9f                   	lahf   
	...
     1c2:	22 00                	and    (%eax),%al
     1c4:	00 00                	add    %al,(%eax)
     1c6:	38 00                	cmp    %al,(%eax)
     1c8:	00 00                	add    %al,(%eax)
     1ca:	01 00                	add    %eax,(%eax)
     1cc:	51                   	push   %ecx
     1cd:	38 00                	cmp    %al,(%eax)
     1cf:	00 00                	add    %al,(%eax)
     1d1:	46                   	inc    %esi
     1d2:	00 00                	add    %al,(%eax)
     1d4:	00 01                	add    %al,(%ecx)
     1d6:	00 56 46             	add    %dl,0x46(%esi)
     1d9:	00 00                	add    %al,(%eax)
     1db:	00 4e 00             	add    %cl,0x0(%esi)
     1de:	00 00                	add    %al,(%eax)
     1e0:	04 00                	add    $0x0,%al
     1e2:	f3 01 51 9f          	repz add %edx,-0x61(%ecx)
	...
     1ee:	4e                   	dec    %esi
     1ef:	00 00                	add    %al,(%eax)
     1f1:	00 63 00             	add    %ah,0x0(%ebx)
     1f4:	00 00                	add    %al,(%eax)
     1f6:	06                   	push   %es
     1f7:	00 50 93             	add    %dl,-0x6d(%eax)
     1fa:	04 52                	add    $0x52,%al
     1fc:	93                   	xchg   %eax,%ebx
     1fd:	04 63                	add    $0x63,%al
     1ff:	00 00                	add    %al,(%eax)
     201:	00 e9                	add    %ch,%cl
     203:	00 00                	add    %al,(%eax)
     205:	00 06                	add    %al,(%esi)
     207:	00 f3                	add    %dh,%bl
     209:	03 f5                	add    %ebp,%esi
     20b:	00 25 9f e9 00 00    	add    %ah,0xe99f
     211:	00 f3                	add    %dh,%bl
     213:	00 00                	add    %al,(%eax)
     215:	00 06                	add    %al,(%esi)
     217:	00 56 93             	add    %dl,-0x6d(%esi)
     21a:	04 57                	add    $0x57,%al
     21c:	93                   	xchg   %eax,%ebx
     21d:	04 2d                	add    $0x2d,%al
     21f:	01 00                	add    %eax,(%eax)
     221:	00 b3 01 00 00 06    	add    %dh,0x6000001(%ebx)
     227:	00 56 93             	add    %dl,-0x6d(%esi)
     22a:	04 57                	add    $0x57,%al
     22c:	93                   	xchg   %eax,%ebx
     22d:	04 b5                	add    $0xb5,%al
     22f:	01 00                	add    %eax,(%eax)
     231:	00 c4                	add    %al,%ah
     233:	01 00                	add    %eax,(%eax)
     235:	00 06                	add    %al,(%esi)
     237:	00 50 93             	add    %dl,-0x6d(%eax)
     23a:	04 52                	add    $0x52,%al
     23c:	93                   	xchg   %eax,%ebx
     23d:	04 c4                	add    $0xc4,%al
     23f:	01 00                	add    %eax,(%eax)
     241:	00 d2                	add    %dl,%dl
     243:	01 00                	add    %eax,(%eax)
     245:	00 06                	add    %al,(%esi)
     247:	00 f3                	add    %dh,%bl
     249:	03 f5                	add    %ebp,%esi
     24b:	00 25 9f d2 01 00    	add    %ah,0x1d29f
     251:	00 d6                	add    %dl,%dh
     253:	01 00                	add    %eax,(%eax)
     255:	00 06                	add    %al,(%esi)
     257:	00 50 93             	add    %dl,-0x6d(%eax)
     25a:	04 52                	add    $0x52,%al
     25c:	93                   	xchg   %eax,%ebx
     25d:	04 00                	add    $0x0,%al
     25f:	00 00                	add    %al,(%eax)
     261:	00 00                	add    %al,(%eax)
     263:	00 00                	add    %al,(%eax)
     265:	00 4e 00             	add    %cl,0x0(%esi)
     268:	00 00                	add    %al,(%eax)
     26a:	76 00                	jbe    26c <__executable_start-0x8047e28>
     26c:	00 00                	add    %al,(%eax)
     26e:	01 00                	add    %eax,(%eax)
     270:	51                   	push   %ecx
     271:	76 00                	jbe    273 <__executable_start-0x8047e21>
     273:	00 00                	add    %al,(%eax)
     275:	7a 03                	jp     27a <__executable_start-0x8047e1a>
     277:	00 00                	add    %al,(%eax)
     279:	04 00                	add    $0x0,%al
     27b:	f3 01 51 9f          	repz add %edx,-0x61(%ecx)
	...
     287:	e9 00 00 00 20       	jmp    2000028c <explained.1502+0x17fb4fd8>
     28c:	01 00                	add    %eax,(%eax)
     28e:	00 04 00             	add    %al,(%eax,%eax,1)
     291:	91                   	xchg   %eax,%ecx
     292:	a0 7f 9f 20 01       	mov    0x1209f7f,%al
     297:	00 00                	add    %al,(%eax)
     299:	2d 01 00 00 01       	sub    $0x1000001,%eax
     29e:	00 55 2d             	add    %dl,0x2d(%ebp)
     2a1:	01 00                	add    %eax,(%eax)
     2a3:	00 3f                	add    %bh,(%edi)
     2a5:	01 00                	add    %eax,(%eax)
     2a7:	00 04 00             	add    %al,(%eax,%eax,1)
     2aa:	91                   	xchg   %eax,%ecx
     2ab:	a0 7f 9f 3f 01       	mov    0x13f9f7f,%al
     2b0:	00 00                	add    %al,(%eax)
     2b2:	44                   	inc    %esp
     2b3:	01 00                	add    %eax,(%eax)
     2b5:	00 01                	add    %al,(%ecx)
     2b7:	00 53 44             	add    %dl,0x44(%ebx)
     2ba:	01 00                	add    %eax,(%eax)
     2bc:	00 60 01             	add    %ah,0x1(%eax)
     2bf:	00 00                	add    %al,(%eax)
     2c1:	01 00                	add    %eax,(%eax)
     2c3:	55                   	push   %ebp
     2c4:	60                   	pusha  
     2c5:	01 00                	add    %eax,(%eax)
     2c7:	00 67 01             	add    %ah,0x1(%edi)
     2ca:	00 00                	add    %al,(%eax)
     2cc:	03 00                	add    (%eax),%eax
     2ce:	75 01                	jne    2d1 <__executable_start-0x8047dc3>
     2d0:	9f                   	lahf   
     2d1:	67 01 00             	add    %eax,(%bx,%si)
     2d4:	00 6e 01             	add    %ch,0x1(%esi)
     2d7:	00 00                	add    %al,(%eax)
     2d9:	01 00                	add    %eax,(%eax)
     2db:	55                   	push   %ebp
     2dc:	6e                   	outsb  %ds:(%esi),(%dx)
     2dd:	01 00                	add    %eax,(%eax)
     2df:	00 72 01             	add    %dh,0x1(%edx)
     2e2:	00 00                	add    %al,(%eax)
     2e4:	01 00                	add    %eax,(%eax)
     2e6:	50                   	push   %eax
     2e7:	72 01                	jb     2ea <__executable_start-0x8047daa>
     2e9:	00 00                	add    %al,(%eax)
     2eb:	c4 01                	les    (%ecx),%eax
     2ed:	00 00                	add    %al,(%eax)
     2ef:	03 00                	add    (%eax),%eax
     2f1:	91                   	xchg   %eax,%ecx
     2f2:	84 7f d2             	test   %bh,-0x2e(%edi)
     2f5:	01 00                	add    %eax,(%eax)
     2f7:	00 d6                	add    %dl,%dh
     2f9:	01 00                	add    %eax,(%eax)
     2fb:	00 03                	add    %al,(%ebx)
     2fd:	00 91 84 7f ea 01    	add    %dl,0x1ea7f84(%ecx)
     303:	00 00                	add    %al,(%eax)
     305:	36 02 00             	add    %ss:(%eax),%al
     308:	00 01                	add    %al,(%ecx)
     30a:	00 53 36             	add    %dl,0x36(%ebx)
     30d:	02 00                	add    (%eax),%al
     30f:	00 3c 02             	add    %bh,(%edx,%eax,1)
     312:	00 00                	add    %al,(%eax)
     314:	03 00                	add    (%eax),%eax
     316:	73 01                	jae    319 <__executable_start-0x8047d7b>
     318:	9f                   	lahf   
     319:	3c 02                	cmp    $0x2,%al
     31b:	00 00                	add    %al,(%eax)
     31d:	76 03                	jbe    322 <__executable_start-0x8047d72>
     31f:	00 00                	add    %al,(%eax)
     321:	01 00                	add    %eax,(%eax)
     323:	53                   	push   %ebx
	...
     32c:	e9 00 00 00 eb       	jmp    eb000331 <explained.1502+0xe2fb507d>
     331:	00 00                	add    %al,(%eax)
     333:	00 01                	add    %al,(%ecx)
     335:	00 50 eb             	add    %dl,-0x15(%eax)
     338:	00 00                	add    %al,(%eax)
     33a:	00 f3                	add    %dh,%bl
     33c:	00 00                	add    %al,(%eax)
     33e:	00 02                	add    %al,(%edx)
     340:	00 30                	add    %dh,(%eax)
     342:	9f                   	lahf   
     343:	2d 01 00 00 44       	sub    $0x44000001,%eax
     348:	01 00                	add    %eax,(%eax)
     34a:	00 02                	add    %al,(%edx)
     34c:	00 30                	add    %dh,(%eax)
     34e:	9f                   	lahf   
	...
     357:	63 00                	arpl   %ax,(%eax)
     359:	00 00                	add    %al,(%eax)
     35b:	bb 00 00 00 02       	mov    $0x2000000,%ebx
     360:	00 30                	add    %dh,(%eax)
     362:	9f                   	lahf   
     363:	bb 00 00 00 7a       	mov    $0x7a000000,%ebx
     368:	03 00                	add    (%eax),%eax
     36a:	00 03                	add    %al,(%ebx)
     36c:	00 91 90 7f 00 00    	add    %dl,0x7f90(%ecx)
     372:	00 00                	add    %al,(%eax)
     374:	00 00                	add    %al,(%eax)
     376:	00 00                	add    %al,(%eax)
     378:	ea 01 00 00 87 02 00 	ljmp   $0x2,$0x87000001
     37f:	00 01                	add    %al,(%ecx)
     381:	00 52 00             	add    %dl,0x0(%edx)
     384:	00 00                	add    %al,(%eax)
     386:	00 00                	add    %al,(%eax)
     388:	00 00                	add    %al,(%eax)
     38a:	00 63 02             	add    %ah,0x2(%ebx)
     38d:	00 00                	add    %al,(%eax)
     38f:	65 02 00             	add    %gs:(%eax),%al
     392:	00 06                	add    %al,(%esi)
     394:	00 77 00             	add    %dh,0x0(%edi)
     397:	70 00                	jo     399 <__executable_start-0x8047cfb>
     399:	1c 9f                	sbb    $0x9f,%al
     39b:	65 02 00             	add    %gs:(%eax),%al
     39e:	00 28                	add    %ch,(%eax)
     3a0:	03 00                	add    (%eax),%eax
     3a2:	00 01                	add    %al,(%ecx)
     3a4:	00 57 28             	add    %dl,0x28(%edi)
     3a7:	03 00                	add    (%eax),%eax
     3a9:	00 46 03             	add    %al,0x3(%esi)
     3ac:	00 00                	add    %al,(%eax)
     3ae:	03 00                	add    (%eax),%eax
     3b0:	91                   	xchg   %eax,%ecx
     3b1:	f8                   	clc    
     3b2:	7e 00                	jle    3b4 <__executable_start-0x8047ce0>
     3b4:	00 00                	add    %al,(%eax)
     3b6:	00 00                	add    %al,(%eax)
     3b8:	00 00                	add    %al,(%eax)
     3ba:	00 e9                	add    %ch,%cl
     3bc:	00 00                	add    %al,(%eax)
     3be:	00 44 01 00          	add    %al,0x0(%ecx,%eax,1)
     3c2:	00 02                	add    %al,(%edx)
     3c4:	00 30                	add    %dh,(%eax)
     3c6:	9f                   	lahf   
     3c7:	44                   	inc    %esp
     3c8:	01 00                	add    %eax,(%eax)
     3ca:	00 c4                	add    %al,%ah
     3cc:	01 00                	add    %eax,(%eax)
     3ce:	00 01                	add    %al,(%ecx)
     3d0:	00 53 d2             	add    %dl,-0x2e(%ebx)
     3d3:	01 00                	add    %eax,(%eax)
     3d5:	00 d6                	add    %dl,%dh
     3d7:	01 00                	add    %eax,(%eax)
     3d9:	00 01                	add    %al,(%ecx)
     3db:	00 53 00             	add    %dl,0x0(%ebx)
     3de:	00 00                	add    %al,(%eax)
     3e0:	00 00                	add    %al,(%eax)
     3e2:	00 00                	add    %al,(%eax)
     3e4:	00 7a 03             	add    %bh,0x3(%edx)
     3e7:	00 00                	add    %al,(%eax)
     3e9:	ad                   	lods   %ds:(%esi),%eax
     3ea:	03 00                	add    (%eax),%eax
     3ec:	00 01                	add    %al,(%ecx)
     3ee:	00 50 ad             	add    %dl,-0x53(%eax)
     3f1:	03 00                	add    (%eax),%eax
     3f3:	00 be 03 00 00 01    	add    %bh,0x1000003(%esi)
     3f9:	00 55 be             	add    %dl,-0x42(%ebp)
     3fc:	03 00                	add    (%eax),%eax
     3fe:	00 fe                	add    %bh,%dh
     400:	03 00                	add    (%eax),%eax
     402:	00 04 00             	add    %al,(%eax,%eax,1)
     405:	f3 01 50 9f          	repz add %edx,-0x61(%eax)
	...
     411:	7a 03                	jp     416 <__executable_start-0x8047c7e>
     413:	00 00                	add    %al,(%eax)
     415:	98                   	cwtl   
     416:	03 00                	add    (%eax),%eax
     418:	00 01                	add    %al,(%ecx)
     41a:	00 52 98             	add    %dl,-0x68(%edx)
     41d:	03 00                	add    (%eax),%eax
     41f:	00 bc 03 00 00 01 00 	add    %bh,0x10000(%ebx,%eax,1)
     426:	53                   	push   %ebx
     427:	bc 03 00 00 fe       	mov    $0xfe000003,%esp
     42c:	03 00                	add    (%eax),%eax
     42e:	00 02                	add    %al,(%edx)
     430:	00 91 58 00 00 00    	add    %dl,0x58(%ecx)
     436:	00 00                	add    %al,(%eax)
     438:	00 00                	add    %al,(%eax)
     43a:	00 7a 03             	add    %bh,0x3(%edx)
     43d:	00 00                	add    %al,(%eax)
     43f:	a8 03                	test   $0x3,%al
     441:	00 00                	add    %al,(%eax)
     443:	01 00                	add    %eax,(%eax)
     445:	51                   	push   %ecx
     446:	a8 03                	test   $0x3,%al
     448:	00 00                	add    %al,(%eax)
     44a:	fe 03                	incb   (%ebx)
     44c:	00 00                	add    %al,(%eax)
     44e:	02 00                	add    (%eax),%al
     450:	91                   	xchg   %eax,%ecx
     451:	5c                   	pop    %esp
	...
     45a:	b2 03                	mov    $0x3,%dl
     45c:	00 00                	add    %al,(%eax)
     45e:	be 03 00 00 02       	mov    $0x2000003,%esi
     463:	00 30                	add    %dh,(%eax)
     465:	9f                   	lahf   
     466:	be 03 00 00 ca       	mov    $0xca000003,%esi
     46b:	03 00                	add    (%eax),%eax
     46d:	00 07                	add    %al,(%edi)
     46f:	00 73 00             	add    %dh,0x0(%ebx)
     472:	f3 01 50 1c          	repz add %edx,0x1c(%eax)
     476:	9f                   	lahf   
     477:	ca 03 00             	lret   $0x3
     47a:	00 cd                	add    %cl,%ch
     47c:	03 00                	add    (%eax),%eax
     47e:	00 09                	add    %cl,(%ecx)
     480:	00 73 00             	add    %dh,0x0(%ebx)
     483:	f3 01 50 1c          	repz add %edx,0x1c(%eax)
     487:	23 01                	and    (%ecx),%eax
     489:	9f                   	lahf   
     48a:	cd 03                	int    $0x3
     48c:	00 00                	add    %al,(%eax)
     48e:	d1 03                	roll   (%ebx)
     490:	00 00                	add    %al,(%eax)
     492:	07                   	pop    %es
     493:	00 73 00             	add    %dh,0x0(%ebx)
     496:	f3 01 50 1c          	repz add %edx,0x1c(%eax)
     49a:	9f                   	lahf   
	...
     4a3:	05 04 00 00 0d       	add    $0xd000004,%eax
     4a8:	04 00                	add    $0x0,%al
     4aa:	00 01                	add    %al,(%ecx)
     4ac:	00 50 0d             	add    %dl,0xd(%eax)
     4af:	04 00                	add    $0x0,%al
     4b1:	00 14 04             	add    %dl,(%esp,%eax,1)
     4b4:	00 00                	add    %al,(%eax)
     4b6:	02 00                	add    (%eax),%al
     4b8:	91                   	xchg   %eax,%ecx
     4b9:	64 14 04             	fs adc $0x4,%al
     4bc:	00 00                	add    %al,(%eax)
     4be:	19 04 00             	sbb    %eax,(%eax,%eax,1)
     4c1:	00 03                	add    %al,(%ebx)
     4c3:	00 91 04 9f 00 00    	add    %dl,0x9f04(%ecx)
     4c9:	00 00                	add    %al,(%eax)
     4cb:	00 00                	add    %al,(%eax)
     4cd:	00 00                	add    %al,(%eax)
     4cf:	20 04 00             	and    %al,(%eax,%eax,1)
     4d2:	00 38                	add    %bh,(%eax)
     4d4:	04 00                	add    $0x0,%al
     4d6:	00 01                	add    %al,(%ecx)
     4d8:	00 50 38             	add    %dl,0x38(%eax)
     4db:	04 00                	add    $0x0,%al
     4dd:	00 3f                	add    %bh,(%edi)
     4df:	04 00                	add    $0x0,%al
     4e1:	00 02                	add    %al,(%edx)
     4e3:	00 91 64 3f 04 00    	add    %dl,0x43f64(%ecx)
     4e9:	00 44 04 00          	add    %al,0x0(%esp,%eax,1)
     4ed:	00 03                	add    %al,(%ebx)
     4ef:	00 91 0c 9f 00 00    	add    %dl,0x9f0c(%ecx)
     4f5:	00 00                	add    %al,(%eax)
     4f7:	00 00                	add    %al,(%eax)
     4f9:	00 00                	add    %al,(%eax)
     4fb:	44                   	inc    %esp
     4fc:	04 00                	add    $0x0,%al
     4fe:	00 53 04             	add    %dl,0x4(%ebx)
     501:	00 00                	add    %al,(%eax)
     503:	02 00                	add    (%eax),%al
     505:	91                   	xchg   %eax,%ecx
     506:	00 53 04             	add    %dl,0x4(%ebx)
     509:	00 00                	add    %al,(%eax)
     50b:	7e 04                	jle    511 <__executable_start-0x8047b83>
     50d:	00 00                	add    %al,(%eax)
     50f:	01 00                	add    %eax,(%eax)
     511:	57                   	push   %edi
     512:	7e 04                	jle    518 <__executable_start-0x8047b7c>
     514:	00 00                	add    %al,(%eax)
     516:	a3 04 00 00 01       	mov    %eax,0x1000004
     51b:	00 56 a3             	add    %dl,-0x5d(%esi)
     51e:	04 00                	add    $0x0,%al
     520:	00 f0                	add    %dh,%al
     522:	05 00 00 03 00       	add    $0x30000,%eax
     527:	77 01                	ja     52a <__executable_start-0x8047b6a>
     529:	9f                   	lahf   
     52a:	50                   	push   %eax
     52b:	0a 00                	or     (%eax),%al
     52d:	00 53 0a             	add    %dl,0xa(%ebx)
     530:	00 00                	add    %al,(%eax)
     532:	01 00                	add    %eax,(%eax)
     534:	53                   	push   %ebx
     535:	53                   	push   %ebx
     536:	0a 00                	or     (%eax),%al
     538:	00 61 0a             	add    %ah,0xa(%ecx)
     53b:	00 00                	add    %al,(%eax)
     53d:	01 00                	add    %eax,(%eax)
     53f:	57                   	push   %edi
     540:	61                   	popa   
     541:	0a 00                	or     (%eax),%al
     543:	00 7a 0a             	add    %bh,0xa(%edx)
     546:	00 00                	add    %al,(%eax)
     548:	03 00                	add    (%eax),%eax
     54a:	77 01                	ja     54d <__executable_start-0x8047b47>
     54c:	9f                   	lahf   
     54d:	7a 0a                	jp     559 <__executable_start-0x8047b3b>
     54f:	00 00                	add    %al,(%eax)
     551:	80 0a 00             	orb    $0x0,(%edx)
     554:	00 01                	add    %al,(%ecx)
     556:	00 57 00             	add    %dl,0x0(%edi)
     559:	00 00                	add    %al,(%eax)
     55b:	00 00                	add    %al,(%eax)
     55d:	00 00                	add    %al,(%eax)
     55f:	00 44 04 00          	add    %al,0x0(%esp,%eax,1)
     563:	00 53 04             	add    %dl,0x4(%ebx)
     566:	00 00                	add    %al,(%eax)
     568:	02 00                	add    (%eax),%al
     56a:	91                   	xchg   %eax,%ecx
     56b:	04 53                	add    $0x53,%al
     56d:	04 00                	add    $0x0,%al
     56f:	00 20                	add    %ah,(%eax)
     571:	05 00 00 01 00       	add    $0x10000,%eax
     576:	55                   	push   %ebp
     577:	20 05 00 00 2a 05    	and    %al,0x52a0000
     57d:	00 00                	add    %al,(%eax)
     57f:	03 00                	add    (%eax),%eax
     581:	75 04                	jne    587 <__executable_start-0x8047b0d>
     583:	9f                   	lahf   
     584:	2a 05 00 00 7a 05    	sub    0x57a0000,%al
     58a:	00 00                	add    %al,(%eax)
     58c:	01 00                	add    %eax,(%eax)
     58e:	55                   	push   %ebp
     58f:	7a 05                	jp     596 <__executable_start-0x8047afe>
     591:	00 00                	add    %al,(%eax)
     593:	84 05 00 00 03 00    	test   %al,0x30000
     599:	75 04                	jne    59f <__executable_start-0x8047af5>
     59b:	9f                   	lahf   
     59c:	84 05 00 00 8b 06    	test   %al,0x68b0000
     5a2:	00 00                	add    %al,(%eax)
     5a4:	01 00                	add    %eax,(%eax)
     5a6:	55                   	push   %ebp
     5a7:	8b 06                	mov    (%esi),%eax
     5a9:	00 00                	add    %al,(%eax)
     5ab:	9d                   	popf   
     5ac:	06                   	push   %es
     5ad:	00 00                	add    %al,(%eax)
     5af:	03 00                	add    (%eax),%eax
     5b1:	75 04                	jne    5b7 <__executable_start-0x8047add>
     5b3:	9f                   	lahf   
     5b4:	9d                   	popf   
     5b5:	06                   	push   %es
     5b6:	00 00                	add    %al,(%eax)
     5b8:	a2 06 00 00 01       	mov    %al,0x1000006
     5bd:	00 55 a2             	add    %dl,-0x5e(%ebp)
     5c0:	06                   	push   %es
     5c1:	00 00                	add    %al,(%eax)
     5c3:	b4 06                	mov    $0x6,%ah
     5c5:	00 00                	add    %al,(%eax)
     5c7:	03 00                	add    (%eax),%eax
     5c9:	75 04                	jne    5cf <__executable_start-0x8047ac5>
     5cb:	9f                   	lahf   
     5cc:	b4 06                	mov    $0x6,%ah
     5ce:	00 00                	add    %al,(%eax)
     5d0:	b9 06 00 00 01       	mov    $0x1000006,%ecx
     5d5:	00 55 b9             	add    %dl,-0x47(%ebp)
     5d8:	06                   	push   %es
     5d9:	00 00                	add    %al,(%eax)
     5db:	ca 06 00             	lret   $0x6
     5de:	00 03                	add    %al,(%ebx)
     5e0:	00 75 04             	add    %dh,0x4(%ebp)
     5e3:	9f                   	lahf   
     5e4:	ca 06 00             	lret   $0x6
     5e7:	00 cf                	add    %cl,%bh
     5e9:	06                   	push   %es
     5ea:	00 00                	add    %al,(%eax)
     5ec:	01 00                	add    %eax,(%eax)
     5ee:	55                   	push   %ebp
     5ef:	cf                   	iret   
     5f0:	06                   	push   %es
     5f1:	00 00                	add    %al,(%eax)
     5f3:	e0 06                	loopne 5fb <__executable_start-0x8047a99>
     5f5:	00 00                	add    %al,(%eax)
     5f7:	03 00                	add    (%eax),%eax
     5f9:	75 08                	jne    603 <__executable_start-0x8047a91>
     5fb:	9f                   	lahf   
     5fc:	e0 06                	loopne 604 <__executable_start-0x8047a90>
     5fe:	00 00                	add    %al,(%eax)
     600:	e5 06                	in     $0x6,%eax
     602:	00 00                	add    %al,(%eax)
     604:	01 00                	add    %eax,(%eax)
     606:	55                   	push   %ebp
     607:	e5 06                	in     $0x6,%eax
     609:	00 00                	add    %al,(%eax)
     60b:	f6 06 00             	testb  $0x0,(%esi)
     60e:	00 03                	add    %al,(%ebx)
     610:	00 75 04             	add    %dh,0x4(%ebp)
     613:	9f                   	lahf   
     614:	f6 06 00             	testb  $0x0,(%esi)
     617:	00 f8                	add    %bh,%al
     619:	06                   	push   %es
     61a:	00 00                	add    %al,(%eax)
     61c:	01 00                	add    %eax,(%eax)
     61e:	55                   	push   %ebp
     61f:	f8                   	clc    
     620:	06                   	push   %es
     621:	00 00                	add    %al,(%eax)
     623:	09 07                	or     %eax,(%edi)
     625:	00 00                	add    %al,(%eax)
     627:	03 00                	add    (%eax),%eax
     629:	75 08                	jne    633 <__executable_start-0x8047a61>
     62b:	9f                   	lahf   
     62c:	09 07                	or     %eax,(%edi)
     62e:	00 00                	add    %al,(%eax)
     630:	0b 07                	or     (%edi),%eax
     632:	00 00                	add    %al,(%eax)
     634:	01 00                	add    %eax,(%eax)
     636:	55                   	push   %ebp
     637:	0b 07                	or     (%edi),%eax
     639:	00 00                	add    %al,(%eax)
     63b:	1c 07                	sbb    $0x7,%al
     63d:	00 00                	add    %al,(%eax)
     63f:	03 00                	add    (%eax),%eax
     641:	75 04                	jne    647 <__executable_start-0x8047a4d>
     643:	9f                   	lahf   
     644:	1c 07                	sbb    $0x7,%al
     646:	00 00                	add    %al,(%eax)
     648:	21 07                	and    %eax,(%edi)
     64a:	00 00                	add    %al,(%eax)
     64c:	01 00                	add    %eax,(%eax)
     64e:	55                   	push   %ebp
     64f:	21 07                	and    %eax,(%edi)
     651:	00 00                	add    %al,(%eax)
     653:	49                   	dec    %ecx
     654:	07                   	pop    %es
     655:	00 00                	add    %al,(%eax)
     657:	01 00                	add    %eax,(%eax)
     659:	50                   	push   %eax
     65a:	49                   	dec    %ecx
     65b:	07                   	pop    %es
     65c:	00 00                	add    %al,(%eax)
     65e:	e7 07                	out    %eax,$0x7
     660:	00 00                	add    %al,(%eax)
     662:	01 00                	add    %eax,(%eax)
     664:	55                   	push   %ebp
     665:	e7 07                	out    %eax,$0x7
     667:	00 00                	add    %al,(%eax)
     669:	fa                   	cli    
     66a:	07                   	pop    %es
     66b:	00 00                	add    %al,(%eax)
     66d:	03 00                	add    (%eax),%eax
     66f:	75 04                	jne    675 <__executable_start-0x8047a1f>
     671:	9f                   	lahf   
     672:	fa                   	cli    
     673:	07                   	pop    %es
     674:	00 00                	add    %al,(%eax)
     676:	ff 07                	incl   (%edi)
     678:	00 00                	add    %al,(%eax)
     67a:	01 00                	add    %eax,(%eax)
     67c:	55                   	push   %ebp
     67d:	ff 07                	incl   (%edi)
     67f:	00 00                	add    %al,(%eax)
     681:	12 08                	adc    (%eax),%cl
     683:	00 00                	add    %al,(%eax)
     685:	03 00                	add    (%eax),%eax
     687:	75 04                	jne    68d <__executable_start-0x8047a07>
     689:	9f                   	lahf   
     68a:	12 08                	adc    (%eax),%cl
     68c:	00 00                	add    %al,(%eax)
     68e:	17                   	pop    %ss
     68f:	08 00                	or     %al,(%eax)
     691:	00 01                	add    %al,(%ecx)
     693:	00 55 17             	add    %dl,0x17(%ebp)
     696:	08 00                	or     %al,(%eax)
     698:	00 2a                	add    %ch,(%edx)
     69a:	08 00                	or     %al,(%eax)
     69c:	00 03                	add    %al,(%ebx)
     69e:	00 75 04             	add    %dh,0x4(%ebp)
     6a1:	9f                   	lahf   
     6a2:	2a 08                	sub    (%eax),%cl
     6a4:	00 00                	add    %al,(%eax)
     6a6:	2f                   	das    
     6a7:	08 00                	or     %al,(%eax)
     6a9:	00 01                	add    %al,(%ecx)
     6ab:	00 55 2f             	add    %dl,0x2f(%ebp)
     6ae:	08 00                	or     %al,(%eax)
     6b0:	00 40 08             	add    %al,0x8(%eax)
     6b3:	00 00                	add    %al,(%eax)
     6b5:	03 00                	add    (%eax),%eax
     6b7:	75 08                	jne    6c1 <__executable_start-0x80479d3>
     6b9:	9f                   	lahf   
     6ba:	40                   	inc    %eax
     6bb:	08 00                	or     %al,(%eax)
     6bd:	00 42 08             	add    %al,0x8(%edx)
     6c0:	00 00                	add    %al,(%eax)
     6c2:	01 00                	add    %eax,(%eax)
     6c4:	55                   	push   %ebp
     6c5:	42                   	inc    %edx
     6c6:	08 00                	or     %al,(%eax)
     6c8:	00 55 08             	add    %dl,0x8(%ebp)
     6cb:	00 00                	add    %al,(%eax)
     6cd:	03 00                	add    (%eax),%eax
     6cf:	75 04                	jne    6d5 <__executable_start-0x80479bf>
     6d1:	9f                   	lahf   
     6d2:	55                   	push   %ebp
     6d3:	08 00                	or     %al,(%eax)
     6d5:	00 57 08             	add    %dl,0x8(%edi)
     6d8:	00 00                	add    %al,(%eax)
     6da:	01 00                	add    %eax,(%eax)
     6dc:	55                   	push   %ebp
     6dd:	57                   	push   %edi
     6de:	08 00                	or     %al,(%eax)
     6e0:	00 68 08             	add    %ch,0x8(%eax)
     6e3:	00 00                	add    %al,(%eax)
     6e5:	03 00                	add    (%eax),%eax
     6e7:	75 08                	jne    6f1 <__executable_start-0x80479a3>
     6e9:	9f                   	lahf   
     6ea:	68 08 00 00 6a       	push   $0x6a000008
     6ef:	08 00                	or     %al,(%eax)
     6f1:	00 01                	add    %al,(%ecx)
     6f3:	00 55 6a             	add    %dl,0x6a(%ebp)
     6f6:	08 00                	or     %al,(%eax)
     6f8:	00 7c 08 00          	add    %bh,0x0(%eax,%ecx,1)
     6fc:	00 03                	add    %al,(%ebx)
     6fe:	00 75 04             	add    %dh,0x4(%ebp)
     701:	9f                   	lahf   
     702:	7c 08                	jl     70c <__executable_start-0x8047988>
     704:	00 00                	add    %al,(%eax)
     706:	7e 08                	jle    710 <__executable_start-0x8047984>
     708:	00 00                	add    %al,(%eax)
     70a:	01 00                	add    %eax,(%eax)
     70c:	55                   	push   %ebp
     70d:	7e 08                	jle    717 <__executable_start-0x804797d>
     70f:	00 00                	add    %al,(%eax)
     711:	91                   	xchg   %eax,%ecx
     712:	08 00                	or     %al,(%eax)
     714:	00 03                	add    %al,(%ebx)
     716:	00 75 04             	add    %dh,0x4(%ebp)
     719:	9f                   	lahf   
     71a:	91                   	xchg   %eax,%ecx
     71b:	08 00                	or     %al,(%eax)
     71d:	00 52 09             	add    %dl,0x9(%edx)
     720:	00 00                	add    %al,(%eax)
     722:	01 00                	add    %eax,(%eax)
     724:	55                   	push   %ebp
     725:	52                   	push   %edx
     726:	09 00                	or     %eax,(%eax)
     728:	00 81 09 00 00 01    	add    %al,0x1000009(%ecx)
     72e:	00 56 81             	add    %dl,-0x7f(%esi)
     731:	09 00                	or     %eax,(%eax)
     733:	00 84 09 00 00 01 00 	add    %al,0x10000(%ecx,%ecx,1)
     73a:	55                   	push   %ebp
     73b:	84 09                	test   %cl,(%ecx)
     73d:	00 00                	add    %al,(%eax)
     73f:	c0 09 00             	rorb   $0x0,(%ecx)
     742:	00 01                	add    %al,(%ecx)
     744:	00 56 c0             	add    %dl,-0x40(%esi)
     747:	09 00                	or     %eax,(%eax)
     749:	00 c3                	add    %al,%bl
     74b:	09 00                	or     %eax,(%eax)
     74d:	00 01                	add    %al,(%ecx)
     74f:	00 55 c3             	add    %dl,-0x3d(%ebp)
     752:	09 00                	or     %eax,(%eax)
     754:	00 08                	add    %cl,(%eax)
     756:	0a 00                	or     (%eax),%al
     758:	00 01                	add    %al,(%ecx)
     75a:	00 56 08             	add    %dl,0x8(%esi)
     75d:	0a 00                	or     (%eax),%al
     75f:	00 81 0a 00 00 01    	add    %al,0x100000a(%ecx)
     765:	00 55 00             	add    %dl,0x0(%ebp)
     768:	00 00                	add    %al,(%eax)
     76a:	00 00                	add    %al,(%eax)
     76c:	00 00                	add    %al,(%eax)
     76e:	00 a3 04 00 00 a5    	add    %ah,-0x5afffffc(%ebx)
     774:	04 00                	add    $0x0,%al
     776:	00 01                	add    %al,(%ecx)
     778:	00 52 a5             	add    %dl,-0x5b(%edx)
     77b:	04 00                	add    $0x0,%al
     77d:	00 a8 04 00 00 01    	add    %ch,0x1000004(%eax)
     783:	00 56 a8             	add    %dl,-0x58(%esi)
     786:	04 00                	add    $0x0,%al
     788:	00 e2                	add    %ah,%dl
     78a:	04 00                	add    $0x0,%al
     78c:	00 01                	add    %al,(%ecx)
     78e:	00 52 e2             	add    %dl,-0x1e(%edx)
     791:	04 00                	add    $0x0,%al
     793:	00 0e                	add    %cl,(%esi)
     795:	05 00 00 01 00       	add    $0x10000,%eax
     79a:	50                   	push   %eax
     79b:	0e                   	push   %cs
     79c:	05 00 00 20 05       	add    $0x5200000,%eax
     7a1:	00 00                	add    %al,(%eax)
     7a3:	01 00                	add    %eax,(%eax)
     7a5:	56                   	push   %esi
     7a6:	20 05 00 00 2e 05    	and    %al,0x52e0000
     7ac:	00 00                	add    %al,(%eax)
     7ae:	01 00                	add    %eax,(%eax)
     7b0:	52                   	push   %edx
     7b1:	2e 05 00 00 71 05    	cs add $0x5710000,%eax
     7b7:	00 00                	add    %al,(%eax)
     7b9:	01 00                	add    %eax,(%eax)
     7bb:	56                   	push   %esi
     7bc:	71 05                	jno    7c3 <__executable_start-0x80478d1>
     7be:	00 00                	add    %al,(%eax)
     7c0:	7a 05                	jp     7c7 <__executable_start-0x80478cd>
     7c2:	00 00                	add    %al,(%eax)
     7c4:	03 00                	add    (%eax),%eax
     7c6:	76 01                	jbe    7c9 <__executable_start-0x80478cb>
     7c8:	9f                   	lahf   
     7c9:	7a 05                	jp     7d0 <__executable_start-0x80478c4>
     7cb:	00 00                	add    %al,(%eax)
     7cd:	86 05 00 00 01 00    	xchg   %al,0x10000
     7d3:	56                   	push   %esi
     7d4:	86 05 00 00 a9 05    	xchg   %al,0x5a90000
     7da:	00 00                	add    %al,(%eax)
     7dc:	03 00                	add    (%eax),%eax
     7de:	76 01                	jbe    7e1 <__executable_start-0x80478b3>
     7e0:	9f                   	lahf   
     7e1:	a9 05 00 00 ca       	test   $0xca000005,%eax
     7e6:	05 00 00 01 00       	add    $0x10000,%eax
     7eb:	52                   	push   %edx
     7ec:	ca 05 00             	lret   $0x5
     7ef:	00 ed                	add    %ch,%ch
     7f1:	05 00 00 01 00       	add    $0x10000,%eax
     7f6:	56                   	push   %esi
     7f7:	ed                   	in     (%dx),%eax
     7f8:	05 00 00 50 0a       	add    $0xa500000,%eax
     7fd:	00 00                	add    %al,(%eax)
     7ff:	01 00                	add    %eax,(%eax)
     801:	53                   	push   %ebx
     802:	61                   	popa   
     803:	0a 00                	or     (%eax),%al
     805:	00 6a 0a             	add    %ch,0xa(%edx)
     808:	00 00                	add    %al,(%eax)
     80a:	01 00                	add    %eax,(%eax)
     80c:	56                   	push   %esi
     80d:	6a 0a                	push   $0xa
     80f:	00 00                	add    %al,(%eax)
     811:	6c                   	insb   (%dx),%es:(%edi)
     812:	0a 00                	or     (%eax),%al
     814:	00 03                	add    %al,(%ebx)
     816:	00 76 01             	add    %dh,0x1(%esi)
     819:	9f                   	lahf   
     81a:	6c                   	insb   (%dx),%es:(%edi)
     81b:	0a 00                	or     (%eax),%al
     81d:	00 7a 0a             	add    %bh,0xa(%edx)
     820:	00 00                	add    %al,(%eax)
     822:	01 00                	add    %eax,(%eax)
     824:	56                   	push   %esi
	...
     82d:	0e                   	push   %cs
     82e:	05 00 00 11 05       	add    $0x5110000,%eax
     833:	00 00                	add    %al,(%eax)
     835:	07                   	pop    %es
     836:	00 70 00             	add    %dh,0x0(%eax)
     839:	48                   	dec    %eax
     83a:	24 48                	and    $0x48,%al
     83c:	26 9f                	es lahf 
     83e:	11 05 00 00 14 05    	adc    %eax,0x5140000
     844:	00 00                	add    %al,(%eax)
     846:	01 00                	add    %eax,(%eax)
     848:	51                   	push   %ecx
     849:	14 05                	adc    $0x5,%al
     84b:	00 00                	add    %al,(%eax)
     84d:	20 05 00 00 03 00    	and    %al,0x30000
     853:	71 30                	jno    885 <__executable_start-0x804780f>
     855:	9f                   	lahf   
     856:	2e 05 00 00 34 05    	cs add $0x5340000,%eax
     85c:	00 00                	add    %al,(%eax)
     85e:	07                   	pop    %es
     85f:	00 70 00             	add    %dh,0x0(%eax)
     862:	48                   	dec    %eax
     863:	24 48                	and    $0x48,%al
     865:	26 9f                	es lahf 
     867:	34 05                	xor    $0x5,%al
     869:	00 00                	add    %al,(%eax)
     86b:	3e 05 00 00 01 00    	ds add $0x10000,%eax
     871:	50                   	push   %eax
     872:	3e 05 00 00 41 05    	ds add $0x5410000,%eax
     878:	00 00                	add    %al,(%eax)
     87a:	07                   	pop    %es
     87b:	00 70 00             	add    %dh,0x0(%eax)
     87e:	48                   	dec    %eax
     87f:	24 48                	and    $0x48,%al
     881:	26 9f                	es lahf 
     883:	41                   	inc    %ecx
     884:	05 00 00 44 05       	add    $0x5440000,%eax
     889:	00 00                	add    %al,(%eax)
     88b:	01 00                	add    %eax,(%eax)
     88d:	51                   	push   %ecx
     88e:	44                   	inc    %esp
     88f:	05 00 00 4d 05       	add    $0x54d0000,%eax
     894:	00 00                	add    %al,(%eax)
     896:	03 00                	add    (%eax),%eax
     898:	71 30                	jno    8ca <__executable_start-0x80477ca>
     89a:	9f                   	lahf   
	...
     8a3:	95                   	xchg   %eax,%ebp
     8a4:	05 00 00 98 05       	add    $0x5980000,%eax
     8a9:	00 00                	add    %al,(%eax)
     8ab:	07                   	pop    %es
     8ac:	00 70 00             	add    %dh,0x0(%eax)
     8af:	48                   	dec    %eax
     8b0:	24 48                	and    $0x48,%al
     8b2:	26 9f                	es lahf 
     8b4:	98                   	cwtl   
     8b5:	05 00 00 9b 05       	add    $0x59b0000,%eax
     8ba:	00 00                	add    %al,(%eax)
     8bc:	01 00                	add    %eax,(%eax)
     8be:	51                   	push   %ecx
     8bf:	9b                   	fwait
     8c0:	05 00 00 a9 05       	add    $0x5a90000,%eax
     8c5:	00 00                	add    %al,(%eax)
     8c7:	03 00                	add    (%eax),%eax
     8c9:	71 30                	jno    8fb <__executable_start-0x8047799>
     8cb:	9f                   	lahf   
     8cc:	a9 05 00 00 af       	test   $0xaf000005,%eax
     8d1:	05 00 00 07 00       	add    $0x70000,%eax
     8d6:	70 00                	jo     8d8 <__executable_start-0x80477bc>
     8d8:	48                   	dec    %eax
     8d9:	24 48                	and    $0x48,%al
     8db:	26 9f                	es lahf 
     8dd:	af                   	scas   %es:(%edi),%eax
     8de:	05 00 00 b9 05       	add    $0x5b90000,%eax
     8e3:	00 00                	add    %al,(%eax)
     8e5:	01 00                	add    %eax,(%eax)
     8e7:	50                   	push   %eax
     8e8:	b9 05 00 00 bc       	mov    $0xbc000005,%ecx
     8ed:	05 00 00 07 00       	add    $0x70000,%eax
     8f2:	70 00                	jo     8f4 <__executable_start-0x80477a0>
     8f4:	48                   	dec    %eax
     8f5:	24 48                	and    $0x48,%al
     8f7:	26 9f                	es lahf 
     8f9:	bc 05 00 00 bf       	mov    $0xbf000005,%esp
     8fe:	05 00 00 01 00       	add    $0x10000,%eax
     903:	53                   	push   %ebx
     904:	bf 05 00 00 ca       	mov    $0xca000005,%edi
     909:	05 00 00 03 00       	add    $0x30000,%eax
     90e:	73 30                	jae    940 <__executable_start-0x8047754>
     910:	9f                   	lahf   
     911:	6a 0a                	push   $0xa
     913:	00 00                	add    %al,(%eax)
     915:	6c                   	insb   (%dx),%es:(%edi)
     916:	0a 00                	or     (%eax),%al
     918:	00 03                	add    %al,(%ebx)
     91a:	00 71 30             	add    %dh,0x30(%ecx)
     91d:	9f                   	lahf   
	...
     926:	9a 06 00 00 a2 06 00 	lcall  $0x6,$0xa2000006
     92d:	00 03                	add    %al,(%ebx)
     92f:	00 91 a8 7f b1 06    	add    %dl,0x6b17fa8(%ecx)
     935:	00 00                	add    %al,(%eax)
     937:	b9 06 00 00 03       	mov    $0x3000006,%ecx
     93c:	00 91 a8 7f c7 06    	add    %dl,0x6c77fa8(%ecx)
     942:	00 00                	add    %al,(%eax)
     944:	cf                   	iret   
     945:	06                   	push   %es
     946:	00 00                	add    %al,(%eax)
     948:	03 00                	add    (%eax),%eax
     94a:	91                   	xchg   %eax,%ecx
     94b:	a8 7f                	test   $0x7f,%al
     94d:	dd 06                	fldl   (%esi)
     94f:	00 00                	add    %al,(%eax)
     951:	e5 06                	in     $0x6,%eax
     953:	00 00                	add    %al,(%eax)
     955:	03 00                	add    (%eax),%eax
     957:	91                   	xchg   %eax,%ecx
     958:	a8 7f                	test   $0x7f,%al
     95a:	f3 06                	repz push %es
     95c:	00 00                	add    %al,(%eax)
     95e:	f8                   	clc    
     95f:	06                   	push   %es
     960:	00 00                	add    %al,(%eax)
     962:	03 00                	add    (%eax),%eax
     964:	91                   	xchg   %eax,%ecx
     965:	a8 7f                	test   $0x7f,%al
     967:	06                   	push   %es
     968:	07                   	pop    %es
     969:	00 00                	add    %al,(%eax)
     96b:	0b 07                	or     (%edi),%eax
     96d:	00 00                	add    %al,(%eax)
     96f:	03 00                	add    (%eax),%eax
     971:	91                   	xchg   %eax,%ecx
     972:	a8 7f                	test   $0x7f,%al
     974:	19 07                	sbb    %eax,(%edi)
     976:	00 00                	add    %al,(%eax)
     978:	1e                   	push   %ds
     979:	07                   	pop    %es
     97a:	00 00                	add    %al,(%eax)
     97c:	03 00                	add    (%eax),%eax
     97e:	91                   	xchg   %eax,%ecx
     97f:	a8 7f                	test   $0x7f,%al
     981:	21 07                	and    %eax,(%edi)
     983:	00 00                	add    %al,(%eax)
     985:	29 07                	sub    %eax,(%edi)
     987:	00 00                	add    %al,(%eax)
     989:	08 00                	or     %al,(%eax)
     98b:	75 00                	jne    98d <__executable_start-0x8047707>
     98d:	06                   	push   %es
     98e:	f7 2c f7             	imull  (%edi,%esi,8)
     991:	25 9f 29 07 00       	and    $0x7299f,%eax
     996:	00 47 07             	add    %al,0x7(%edi)
     999:	00 00                	add    %al,(%eax)
     99b:	07                   	pop    %es
     99c:	00 77 00             	add    %dh,0x0(%edi)
     99f:	f7 2c f7             	imull  (%edi,%esi,8)
     9a2:	25 9f 47 07 00       	and    $0x7479f,%eax
     9a7:	00 49 07             	add    %cl,0x7(%ecx)
     9aa:	00 00                	add    %al,(%eax)
     9ac:	03 00                	add    (%eax),%eax
     9ae:	91                   	xchg   %eax,%ecx
     9af:	a8 7f                	test   $0x7f,%al
     9b1:	6d                   	insl   (%dx),%es:(%edi)
     9b2:	07                   	pop    %es
     9b3:	00 00                	add    %al,(%eax)
     9b5:	d1 07                	roll   (%edi)
     9b7:	00 00                	add    %al,(%eax)
     9b9:	03 00                	add    (%eax),%eax
     9bb:	91                   	xchg   %eax,%ecx
     9bc:	a8 7f                	test   $0x7f,%al
	...
     9c6:	f7 07 00 00 ff 07    	testl  $0x7ff0000,(%edi)
     9cc:	00 00                	add    %al,(%eax)
     9ce:	03 00                	add    (%eax),%eax
     9d0:	91                   	xchg   %eax,%ecx
     9d1:	b8 7f 0f 08 00       	mov    $0x80f7f,%eax
     9d6:	00 17                	add    %dl,(%edi)
     9d8:	08 00                	or     %al,(%eax)
     9da:	00 03                	add    %al,(%ebx)
     9dc:	00 91 b8 7f 27 08    	add    %dl,0x8277fb8(%ecx)
     9e2:	00 00                	add    %al,(%eax)
     9e4:	2f                   	das    
     9e5:	08 00                	or     %al,(%eax)
     9e7:	00 03                	add    %al,(%ebx)
     9e9:	00 91 b8 7f 3d 08    	add    %dl,0x83d7fb8(%ecx)
     9ef:	00 00                	add    %al,(%eax)
     9f1:	42                   	inc    %edx
     9f2:	08 00                	or     %al,(%eax)
     9f4:	00 03                	add    %al,(%ebx)
     9f6:	00 91 b8 7f 52 08    	add    %dl,0x8527fb8(%ecx)
     9fc:	00 00                	add    %al,(%eax)
     9fe:	57                   	push   %edi
     9ff:	08 00                	or     %al,(%eax)
     a01:	00 03                	add    %al,(%ebx)
     a03:	00 91 b8 7f 65 08    	add    %dl,0x8657fb8(%ecx)
     a09:	00 00                	add    %al,(%eax)
     a0b:	6a 08                	push   $0x8
     a0d:	00 00                	add    %al,(%eax)
     a0f:	03 00                	add    (%eax),%eax
     a11:	91                   	xchg   %eax,%ecx
     a12:	b8 7f 6a 08 00       	mov    $0x86a7f,%eax
     a17:	00 79 08             	add    %bh,0x8(%ecx)
     a1a:	00 00                	add    %al,(%eax)
     a1c:	08 00                	or     %al,(%eax)
     a1e:	75 00                	jne    a20 <__executable_start-0x8047674>
     a20:	06                   	push   %es
     a21:	f7 33                	divl   (%ebx)
     a23:	f7 25 9f 79 08 00    	mull   0x8799f
     a29:	00 7e 08             	add    %bh,0x8(%esi)
     a2c:	00 00                	add    %al,(%eax)
     a2e:	03 00                	add    (%eax),%eax
     a30:	91                   	xchg   %eax,%ecx
     a31:	b8 7f 8e 08 00       	mov    $0x88e7f,%eax
     a36:	00 93 08 00 00 03    	add    %dl,0x3000008(%ebx)
     a3c:	00 91 b8 7f b7 08    	add    %dl,0x8b77fb8(%ecx)
     a42:	00 00                	add    %al,(%eax)
     a44:	4f                   	dec    %edi
     a45:	09 00                	or     %eax,(%eax)
     a47:	00 03                	add    %al,(%ebx)
     a49:	00 91 b8 7f 00 00    	add    %dl,0x7fb8(%ecx)
     a4f:	00 00                	add    %al,(%eax)
     a51:	00 00                	add    %al,(%eax)
     a53:	00 00                	add    %al,(%eax)
     a55:	d7                   	xlat   %ds:(%ebx)
     a56:	08 00                	or     %al,(%eax)
     a58:	00 de                	add    %bl,%dh
     a5a:	08 00                	or     %al,(%eax)
     a5c:	00 06                	add    %al,(%esi)
     a5e:	00 03                	add    %al,(%ebx)
     a60:	50                   	push   %eax
     a61:	9f                   	lahf   
     a62:	04 08                	add    $0x8,%al
     a64:	9f                   	lahf   
     a65:	de 08                	fimul  (%eax)
     a67:	00 00                	add    %al,(%eax)
     a69:	e5 08                	in     $0x8,%eax
     a6b:	00 00                	add    %al,(%eax)
     a6d:	06                   	push   %es
     a6e:	00 03                	add    %al,(%ebx)
     a70:	40                   	inc    %eax
     a71:	9f                   	lahf   
     a72:	04 08                	add    $0x8,%al
     a74:	9f                   	lahf   
     a75:	15 09 00 00 41       	adc    $0x41000009,%eax
     a7a:	09 00                	or     %eax,(%eax)
     a7c:	00 01                	add    %al,(%ecx)
     a7e:	00 50 41             	add    %dl,0x41(%eax)
     a81:	09 00                	or     %eax,(%eax)
     a83:	00 49 09             	add    %cl,0x9(%ecx)
     a86:	00 00                	add    %al,(%eax)
     a88:	03 00                	add    (%eax),%eax
     a8a:	91                   	xchg   %eax,%ecx
     a8b:	94                   	xchg   %eax,%esp
     a8c:	7f 00                	jg     a8e <__executable_start-0x8047606>
     a8e:	00 00                	add    %al,(%eax)
     a90:	00 00                	add    %al,(%eax)
     a92:	00 00                	add    %al,(%eax)
     a94:	00 87 09 00 00 c0    	add    %al,-0x3ffffff7(%edi)
     a9a:	09 00                	or     %eax,(%eax)
     a9c:	00 01                	add    %al,(%ecx)
     a9e:	00 57 00             	add    %dl,0x0(%edi)
     aa1:	00 00                	add    %al,(%eax)
     aa3:	00 00                	add    %al,(%eax)
     aa5:	00 00                	add    %al,(%eax)
     aa7:	00 c6                	add    %al,%dh
     aa9:	09 00                	or     %eax,(%eax)
     aab:	00 03                	add    %al,(%ebx)
     aad:	0a 00                	or     (%eax),%al
     aaf:	00 01                	add    %al,(%ecx)
     ab1:	00 50 00             	add    %dl,0x0(%eax)
     ab4:	00 00                	add    %al,(%eax)
     ab6:	00 00                	add    %al,(%eax)
     ab8:	00 00                	add    %al,(%eax)
     aba:	00 06                	add    %al,(%esi)
     abc:	0b 00                	or     (%eax),%eax
     abe:	00 0e                	add    %cl,(%esi)
     ac0:	0b 00                	or     (%eax),%eax
     ac2:	00 01                	add    %al,(%ecx)
     ac4:	00 50 0e             	add    %dl,0xe(%eax)
     ac7:	0b 00                	or     (%eax),%eax
     ac9:	00 25 0b 00 00 02    	add    %ah,0x200000b
     acf:	00 91 6c 25 0b 00    	add    %dl,0xb256c(%ecx)
     ad5:	00 2a                	add    %ch,(%edx)
     ad7:	0b 00                	or     (%eax),%eax
     ad9:	00 03                	add    %al,(%ebx)
     adb:	00 91 0c 9f 00 00    	add    %dl,0x9f0c(%ecx)
     ae1:	00 00                	add    %al,(%eax)
     ae3:	00 00                	add    %al,(%eax)
     ae5:	00 00                	add    %al,(%eax)
     ae7:	2a 0b                	sub    (%ebx),%cl
     ae9:	00 00                	add    %al,(%eax)
     aeb:	b7 0c                	mov    $0xc,%bh
     aed:	00 00                	add    %al,(%eax)
     aef:	02 00                	add    (%eax),%al
     af1:	91                   	xchg   %eax,%ecx
     af2:	08 b7 0c 00 00 bb    	or     %dh,-0x44fffff4(%edi)
     af8:	0c 00                	or     $0x0,%al
     afa:	00 07                	add    %al,(%edi)
     afc:	00 91 08 06 70 00    	add    %dl,0x700608(%ecx)
     b02:	1c 9f                	sbb    $0x9f,%al
     b04:	bb 0c 00 00 c9       	mov    $0xc900000c,%ebx
     b09:	0c 00                	or     $0x0,%al
     b0b:	00 02                	add    %al,(%edx)
     b0d:	00 91 08 00 00 00    	add    %dl,0x8(%ecx)
     b13:	00 00                	add    %al,(%eax)
     b15:	00 00                	add    %al,(%eax)
     b17:	00 4c 0b 00          	add    %cl,0x0(%ebx,%ecx,1)
     b1b:	00 b4 0b 00 00 01 00 	add    %dh,0x10000(%ebx,%ecx,1)
     b22:	57                   	push   %edi
     b23:	b4 0b                	mov    $0xb,%ah
     b25:	00 00                	add    %al,(%eax)
     b27:	be 0b 00 00 01       	mov    $0x100000b,%esi
     b2c:	00 53 be             	add    %dl,-0x42(%ebx)
     b2f:	0b 00                	or     (%eax),%eax
     b31:	00 44 0c 00          	add    %al,0x0(%esp,%ecx,1)
     b35:	00 01                	add    %al,(%ecx)
     b37:	00 57 44             	add    %dl,0x44(%edi)
     b3a:	0c 00                	or     $0x0,%al
     b3c:	00 53 0c             	add    %dl,0xc(%ebx)
     b3f:	00 00                	add    %al,(%eax)
     b41:	01 00                	add    %eax,(%eax)
     b43:	53                   	push   %ebx
     b44:	53                   	push   %ebx
     b45:	0c 00                	or     $0x0,%al
     b47:	00 78 0c             	add    %bh,0xc(%eax)
     b4a:	00 00                	add    %al,(%eax)
     b4c:	06                   	push   %es
     b4d:	00 91 00 06 3f 1a    	add    %dl,0x1a3f0600(%ecx)
     b53:	9f                   	lahf   
     b54:	78 0c                	js     b62 <__executable_start-0x8047532>
     b56:	00 00                	add    %al,(%eax)
     b58:	7a 0c                	jp     b66 <__executable_start-0x804752e>
     b5a:	00 00                	add    %al,(%eax)
     b5c:	01 00                	add    %eax,(%eax)
     b5e:	53                   	push   %ebx
     b5f:	7a 0c                	jp     b6d <__executable_start-0x8047527>
     b61:	00 00                	add    %al,(%eax)
     b63:	b3 0c                	mov    $0xc,%bl
     b65:	00 00                	add    %al,(%eax)
     b67:	06                   	push   %es
     b68:	00 91 00 06 3f 1a    	add    %dl,0x1a3f0600(%ecx)
     b6e:	9f                   	lahf   
	...
     b77:	4c                   	dec    %esp
     b78:	0b 00                	or     (%eax),%eax
     b7a:	00 65 0b             	add    %ah,0xb(%ebp)
     b7d:	00 00                	add    %al,(%eax)
     b7f:	02 00                	add    (%eax),%al
     b81:	40                   	inc    %eax
     b82:	9f                   	lahf   
     b83:	65 0b 00             	or     %gs:(%eax),%eax
     b86:	00 7a 0c             	add    %bh,0xc(%edx)
     b89:	00 00                	add    %al,(%eax)
     b8b:	01 00                	add    %eax,(%eax)
     b8d:	56                   	push   %esi
     b8e:	7a 0c                	jp     b9c <__executable_start-0x80474f8>
     b90:	00 00                	add    %al,(%eax)
     b92:	b3 0c                	mov    $0xc,%bl
     b94:	00 00                	add    %al,(%eax)
     b96:	23 00                	and    (%eax),%eax
     b98:	91                   	xchg   %eax,%ecx
     b99:	00 06                	add    %al,(%esi)
     b9b:	3f                   	aas    
     b9c:	1a 91 08 06 22 40    	sbb    0x40220608(%ecx),%dl
     ba2:	40                   	inc    %eax
     ba3:	91                   	xchg   %eax,%ecx
     ba4:	00 06                	add    %al,(%esi)
     ba6:	3f                   	aas    
     ba7:	1a 1c 40             	sbb    (%eax,%eax,2),%bl
     baa:	4b                   	dec    %ebx
     bab:	24 22                	and    $0x22,%al
     bad:	91                   	xchg   %eax,%ecx
     bae:	08 06                	or     %al,(%esi)
     bb0:	40                   	inc    %eax
     bb1:	4b                   	dec    %ebx
     bb2:	24 22                	and    $0x22,%al
     bb4:	2b 28                	sub    (%eax),%ebp
     bb6:	01 00                	add    %eax,(%eax)
     bb8:	16                   	push   %ss
     bb9:	13 9f 00 00 00 00    	adc    0x0(%edi),%ebx
     bbf:	00 00                	add    %al,(%eax)
     bc1:	00 00                	add    %al,(%eax)
     bc3:	6d                   	insl   (%dx),%es:(%edi)
     bc4:	0b 00                	or     (%eax),%eax
     bc6:	00 71 0b             	add    %dh,0xb(%ecx)
     bc9:	00 00                	add    %al,(%eax)
     bcb:	01 00                	add    %eax,(%eax)
     bcd:	50                   	push   %eax
     bce:	71 0b                	jno    bdb <__executable_start-0x80474b9>
     bd0:	00 00                	add    %al,(%eax)
     bd2:	c1 0c 00 00          	rorl   $0x0,(%eax,%eax,1)
     bd6:	02 00                	add    (%eax),%al
     bd8:	91                   	xchg   %eax,%ecx
     bd9:	58                   	pop    %eax
	...
     be2:	8c 0b                	mov    %cs,(%ebx)
     be4:	00 00                	add    %al,(%eax)
     be6:	95                   	xchg   %eax,%ebp
     be7:	0b 00                	or     (%eax),%eax
     be9:	00 02                	add    %al,(%edx)
     beb:	00 30                	add    %dh,(%eax)
     bed:	9f                   	lahf   
     bee:	95                   	xchg   %eax,%ebp
     bef:	0b 00                	or     (%eax),%eax
     bf1:	00 aa 0b 00 00 01    	add    %ch,0x100000b(%edx)
     bf7:	00 53 aa             	add    %dl,-0x56(%ebx)
     bfa:	0b 00                	or     (%eax),%eax
     bfc:	00 b2 0b 00 00 02    	add    %dh,0x200000b(%edx)
     c02:	00 30                	add    %dh,(%eax)
     c04:	9f                   	lahf   
     c05:	b2 0b                	mov    $0xb,%dl
     c07:	00 00                	add    %al,(%eax)
     c09:	f0 0b 00             	lock or (%eax),%eax
     c0c:	00 01                	add    %al,(%ecx)
     c0e:	00 53 fb             	add    %dl,-0x5(%ebx)
     c11:	0b 00                	or     (%eax),%eax
     c13:	00 20                	add    %ah,(%eax)
     c15:	0c 00                	or     $0x0,%al
     c17:	00 01                	add    %al,(%ecx)
     c19:	00 53 20             	add    %dl,0x20(%ebx)
     c1c:	0c 00                	or     $0x0,%al
     c1e:	00 29                	add    %ch,(%ecx)
     c20:	0c 00                	or     $0x0,%al
     c22:	00 02                	add    %al,(%edx)
     c24:	00 30                	add    %dh,(%eax)
     c26:	9f                   	lahf   
     c27:	29 0c 00             	sub    %ecx,(%eax,%eax,1)
     c2a:	00 3e                	add    %bh,(%esi)
     c2c:	0c 00                	or     $0x0,%al
     c2e:	00 01                	add    %al,(%ecx)
     c30:	00 53 3e             	add    %dl,0x3e(%ebx)
     c33:	0c 00                	or     $0x0,%al
     c35:	00 42 0c             	add    %al,0xc(%edx)
     c38:	00 00                	add    %al,(%eax)
     c3a:	02 00                	add    (%eax),%al
     c3c:	30 9f 42 0c 00 00    	xor    %bl,0xc42(%edi)
     c42:	7a 0c                	jp     c50 <__executable_start-0x8047444>
     c44:	00 00                	add    %al,(%eax)
     c46:	01 00                	add    %eax,(%eax)
     c48:	53                   	push   %ebx
     c49:	7a 0c                	jp     c57 <__executable_start-0x804743d>
     c4b:	00 00                	add    %al,(%eax)
     c4d:	9f                   	lahf   
     c4e:	0c 00                	or     $0x0,%al
     c50:	00 01                	add    %al,(%ecx)
     c52:	00 56 00             	add    %dl,0x0(%esi)
     c55:	00 00                	add    %al,(%eax)
     c57:	00 00                	add    %al,(%eax)
     c59:	00 00                	add    %al,(%eax)
     c5b:	00 58 0c             	add    %bl,0xc(%eax)
     c5e:	00 00                	add    %al,(%eax)
     c60:	5b                   	pop    %ebx
     c61:	0c 00                	or     $0x0,%al
     c63:	00 06                	add    %al,(%esi)
     c65:	00 72 00             	add    %dh,0x0(%edx)
     c68:	08 ff                	or     %bh,%bh
     c6a:	1a 9f 5b 0c 00 00    	sbb    0xc5b(%edi),%bl
     c70:	5e                   	pop    %esi
     c71:	0c 00                	or     $0x0,%al
     c73:	00 01                	add    %al,(%ecx)
     c75:	00 50 5e             	add    %dl,0x5e(%eax)
     c78:	0c 00                	or     $0x0,%al
     c7a:	00 61 0c             	add    %ah,0xc(%ecx)
     c7d:	00 00                	add    %al,(%eax)
     c7f:	03 00                	add    (%eax),%eax
     c81:	70 20                	jo     ca3 <__executable_start-0x80473f1>
     c83:	9f                   	lahf   
     c84:	61                   	popa   
     c85:	0c 00                	or     $0x0,%al
     c87:	00 67 0c             	add    %ah,0xc(%edi)
     c8a:	00 00                	add    %al,(%eax)
     c8c:	01 00                	add    %eax,(%eax)
     c8e:	52                   	push   %edx
     c8f:	67 0c 00             	addr16 or $0x0,%al
     c92:	00 6e 0c             	add    %ch,0xc(%esi)
     c95:	00 00                	add    %al,(%eax)
     c97:	03 00                	add    (%eax),%eax
     c99:	70 20                	jo     cbb <__executable_start-0x80473d9>
     c9b:	9f                   	lahf   
	...
     ca4:	c9                   	leave  
     ca5:	0c 00                	or     $0x0,%al
     ca7:	00 df                	add    %bl,%bh
     ca9:	0c 00                	or     $0x0,%al
     cab:	00 02                	add    %al,(%edx)
     cad:	00 91 00 df 0c 00    	add    %dl,0xcdf00(%ecx)
     cb3:	00 01                	add    %al,(%ecx)
     cb5:	0d 00 00 06 00       	or     $0x60000,%eax
     cba:	51                   	push   %ecx
     cbb:	93                   	xchg   %eax,%ebx
     cbc:	04 53                	add    $0x53,%al
     cbe:	93                   	xchg   %eax,%ebx
     cbf:	04 01                	add    $0x1,%al
     cc1:	0d 00 00 0f 0d       	or     $0xd0f0000,%eax
     cc6:	00 00                	add    %al,(%eax)
     cc8:	02 00                	add    (%eax),%al
     cca:	91                   	xchg   %eax,%ecx
     ccb:	00 0f                	add    %cl,(%edi)
     ccd:	0d 00 00 1c 0d       	or     $0xd1c0000,%eax
     cd2:	00 00                	add    %al,(%eax)
     cd4:	06                   	push   %es
     cd5:	00 51 93             	add    %dl,-0x6d(%ecx)
     cd8:	04 53                	add    $0x53,%al
     cda:	93                   	xchg   %eax,%ebx
     cdb:	04 1e                	add    $0x1e,%al
     cdd:	0d 00 00 33 0d       	or     $0xd330000,%eax
     ce2:	00 00                	add    %al,(%eax)
     ce4:	06                   	push   %es
     ce5:	00 50 93             	add    %dl,-0x6d(%eax)
     ce8:	04 52                	add    $0x52,%al
     cea:	93                   	xchg   %eax,%ebx
     ceb:	04 00                	add    $0x0,%al
     ced:	00 00                	add    %al,(%eax)
     cef:	00 00                	add    %al,(%eax)
     cf1:	00 00                	add    %al,(%eax)
     cf3:	00 df                	add    %bl,%bh
     cf5:	0c 00                	or     $0x0,%al
     cf7:	00 01                	add    %al,(%ecx)
     cf9:	0d 00 00 06 00       	or     $0x60000,%eax
     cfe:	03 9c b2 04 08 9f 0f 	add    0xf9f0804(%edx,%esi,4),%ebx
     d05:	0d 00 00 33 0d       	or     $0xd330000,%eax
     d0a:	00 00                	add    %al,(%eax)
     d0c:	01 00                	add    %eax,(%eax)
     d0e:	56                   	push   %esi
	...
     d1b:	52                   	push   %edx
     d1c:	00 00                	add    %al,(%eax)
     d1e:	00 02                	add    %al,(%edx)
     d20:	00 91 08 52 00 00    	add    %dl,0x5208(%ecx)
     d26:	00 5d 00             	add    %bl,0x0(%ebp)
     d29:	00 00                	add    %al,(%eax)
     d2b:	03 00                	add    (%eax),%eax
     d2d:	73 7f                	jae    dae <__executable_start-0x80472e6>
     d2f:	9f                   	lahf   
     d30:	5d                   	pop    %ebp
     d31:	00 00                	add    %al,(%eax)
     d33:	00 89 00 00 00 02    	add    %cl,0x2000000(%ecx)
     d39:	00 91 08 89 00 00    	add    %dl,0x8908(%ecx)
     d3f:	00 90 00 00 00 07    	add    %dl,0x7000000(%eax)
     d45:	00 72 00             	add    %dh,0x0(%edx)
     d48:	20 73 00             	and    %dh,0x0(%ebx)
     d4b:	22 9f 90 00 00 00    	and    0x90(%edi),%bl
     d51:	93                   	xchg   %eax,%ebx
     d52:	00 00                	add    %al,(%eax)
     d54:	00 08                	add    %cl,(%eax)
     d56:	00 73 00             	add    %dh,0x0(%ebx)
     d59:	72 00                	jb     d5b <__executable_start-0x8047339>
     d5b:	1c 32                	sbb    $0x32,%al
     d5d:	1c 9f                	sbb    $0x9f,%al
     d5f:	93                   	xchg   %eax,%ebx
     d60:	00 00                	add    %al,(%eax)
     d62:	00 97 00 00 00 07    	add    %dl,0x7000000(%edi)
     d68:	00 72 00             	add    %dh,0x0(%edx)
     d6b:	20 73 00             	and    %dh,0x0(%ebx)
     d6e:	22 9f 00 00 00 00    	and    0x0(%edi),%bl
     d74:	00 00                	add    %al,(%eax)
     d76:	00 00                	add    %al,(%eax)
     d78:	11 00                	adc    %eax,(%eax)
     d7a:	00 00                	add    %al,(%eax)
     d7c:	49                   	dec    %ecx
     d7d:	00 00                	add    %al,(%eax)
     d7f:	00 01                	add    %al,(%ecx)
     d81:	00 50 49             	add    %dl,0x49(%eax)
     d84:	00 00                	add    %al,(%eax)
     d86:	00 4a 00             	add    %cl,0x0(%edx)
     d89:	00 00                	add    %al,(%eax)
     d8b:	02 00                	add    (%eax),%al
     d8d:	91                   	xchg   %eax,%ecx
     d8e:	00 4a 00             	add    %cl,0x0(%edx)
     d91:	00 00                	add    %al,(%eax)
     d93:	88 00                	mov    %al,(%eax)
     d95:	00 00                	add    %al,(%eax)
     d97:	01 00                	add    %eax,(%eax)
     d99:	50                   	push   %eax
     d9a:	88 00                	mov    %al,(%eax)
     d9c:	00 00                	add    %al,(%eax)
     d9e:	89 00                	mov    %eax,(%eax)
     da0:	00 00                	add    %al,(%eax)
     da2:	02 00                	add    (%eax),%al
     da4:	91                   	xchg   %eax,%ecx
     da5:	00 89 00 00 00 93    	add    %cl,-0x6d000000(%ecx)
     dab:	00 00                	add    %al,(%eax)
     dad:	00 08                	add    %cl,(%eax)
     daf:	00 70 00             	add    %dh,0x0(%eax)
     db2:	72 00                	jb     db4 <__executable_start-0x80472e0>
     db4:	22 23                	and    (%ebx),%ah
     db6:	01 9f 93 00 00 00    	add    %ebx,0x93(%edi)
     dbc:	97                   	xchg   %eax,%edi
     dbd:	00 00                	add    %al,(%eax)
     dbf:	00 06                	add    %al,(%esi)
     dc1:	00 70 00             	add    %dh,0x0(%eax)
     dc4:	72 00                	jb     dc6 <__executable_start-0x80472ce>
     dc6:	22 9f 00 00 00 00    	and    0x0(%edi),%bl
     dcc:	00 00                	add    %al,(%eax)
     dce:	00 00                	add    %al,(%eax)
     dd0:	11 00                	adc    %eax,(%eax)
     dd2:	00 00                	add    %al,(%eax)
     dd4:	89 00                	mov    %eax,(%eax)
     dd6:	00 00                	add    %al,(%eax)
     dd8:	01 00                	add    %eax,(%eax)
     dda:	56                   	push   %esi
     ddb:	89 00                	mov    %eax,(%eax)
     ddd:	00 00                	add    %al,(%eax)
     ddf:	93                   	xchg   %eax,%ebx
     de0:	00 00                	add    %al,(%eax)
     de2:	00 08                	add    %cl,(%eax)
     de4:	00 76 00             	add    %dh,0x0(%esi)
     de7:	72 00                	jb     de9 <__executable_start-0x80472ab>
     de9:	22 23                	and    (%ebx),%ah
     deb:	01 9f 93 00 00 00    	add    %ebx,0x93(%edi)
     df1:	97                   	xchg   %eax,%edi
     df2:	00 00                	add    %al,(%eax)
     df4:	00 06                	add    %al,(%esi)
     df6:	00 76 00             	add    %dh,0x0(%esi)
     df9:	72 00                	jb     dfb <__executable_start-0x8047299>
     dfb:	22 9f 00 00 00 00    	and    0x0(%edi),%bl
     e01:	00 00                	add    %al,(%eax)
     e03:	00 00                	add    %al,(%eax)
     e05:	9d                   	popf   
     e06:	00 00                	add    %al,(%eax)
     e08:	00 20                	add    %ah,(%eax)
     e0a:	01 00                	add    %eax,(%eax)
     e0c:	00 02                	add    %al,(%edx)
     e0e:	00 91 08 20 01 00    	add    %dl,0x12008(%ecx)
     e14:	00 29                	add    %ch,(%ecx)
     e16:	01 00                	add    %eax,(%eax)
     e18:	00 03                	add    %al,(%ebx)
     e1a:	00 77 7f             	add    %dh,0x7f(%edi)
     e1d:	9f                   	lahf   
     e1e:	29 01                	sub    %eax,(%ecx)
     e20:	00 00                	add    %al,(%eax)
     e22:	30 01                	xor    %al,(%ecx)
     e24:	00 00                	add    %al,(%eax)
     e26:	07                   	pop    %es
     e27:	00 72 00             	add    %dh,0x0(%edx)
     e2a:	20 77 00             	and    %dh,0x0(%edi)
     e2d:	22 9f 30 01 00 00    	and    0x130(%edi),%bl
     e33:	33 01                	xor    (%ecx),%eax
     e35:	00 00                	add    %al,(%eax)
     e37:	08 00                	or     %al,(%eax)
     e39:	77 00                	ja     e3b <__executable_start-0x8047259>
     e3b:	72 00                	jb     e3d <__executable_start-0x8047257>
     e3d:	1c 32                	sbb    $0x32,%al
     e3f:	1c 9f                	sbb    $0x9f,%al
     e41:	33 01                	xor    (%ecx),%eax
     e43:	00 00                	add    %al,(%eax)
     e45:	3b 01                	cmp    (%ecx),%eax
     e47:	00 00                	add    %al,(%eax)
     e49:	07                   	pop    %es
     e4a:	00 72 00             	add    %dh,0x0(%edx)
     e4d:	20 77 00             	and    %dh,0x0(%edi)
     e50:	22 9f 3b 01 00 00    	and    0x13b(%edi),%bl
     e56:	40                   	inc    %eax
     e57:	01 00                	add    %eax,(%eax)
     e59:	00 02                	add    %al,(%edx)
     e5b:	00 91 08 40 01 00    	add    %dl,0x14008(%ecx)
     e61:	00 43 01             	add    %al,0x1(%ebx)
     e64:	00 00                	add    %al,(%eax)
     e66:	01 00                	add    %eax,(%eax)
     e68:	57                   	push   %edi
     e69:	43                   	inc    %ebx
     e6a:	01 00                	add    %eax,(%eax)
     e6c:	00 64 01 00          	add    %ah,0x0(%ecx,%eax,1)
     e70:	00 01                	add    %al,(%ecx)
     e72:	00 52 00             	add    %dl,0x0(%edx)
     e75:	00 00                	add    %al,(%eax)
     e77:	00 00                	add    %al,(%eax)
     e79:	00 00                	add    %al,(%eax)
     e7b:	00 af 00 00 00 29    	add    %ch,0x29000000(%edi)
     e81:	01 00                	add    %eax,(%eax)
     e83:	00 01                	add    %al,(%ecx)
     e85:	00 56 29             	add    %dl,0x29(%esi)
     e88:	01 00                	add    %eax,(%eax)
     e8a:	00 33                	add    %dh,(%ebx)
     e8c:	01 00                	add    %eax,(%eax)
     e8e:	00 08                	add    %cl,(%eax)
     e90:	00 76 00             	add    %dh,0x0(%esi)
     e93:	72 00                	jb     e95 <__executable_start-0x80471ff>
     e95:	22 23                	and    (%ebx),%ah
     e97:	01 9f 33 01 00 00    	add    %ebx,0x133(%edi)
     e9d:	39 01                	cmp    %eax,(%ecx)
     e9f:	00 00                	add    %al,(%eax)
     ea1:	06                   	push   %es
     ea2:	00 76 00             	add    %dh,0x0(%esi)
     ea5:	72 00                	jb     ea7 <__executable_start-0x80471ed>
     ea7:	22 9f 39 01 00 00    	and    0x139(%edi),%bl
     ead:	3b 01                	cmp    (%ecx),%eax
     eaf:	00 00                	add    %al,(%eax)
     eb1:	07                   	pop    %es
     eb2:	00 91 00 06 72 00    	add    %dl,0x720600(%ecx)
     eb8:	22 9f 3b 01 00 00    	and    0x13b(%edi),%bl
     ebe:	3e 01 00             	add    %eax,%ds:(%eax)
     ec1:	00 01                	add    %al,(%ecx)
     ec3:	00 56 3e             	add    %dl,0x3e(%esi)
     ec6:	01 00                	add    %eax,(%eax)
     ec8:	00 4f 01             	add    %cl,0x1(%edi)
     ecb:	00 00                	add    %al,(%eax)
     ecd:	01 00                	add    %eax,(%eax)
     ecf:	50                   	push   %eax
     ed0:	62 01                	bound  %eax,(%ecx)
     ed2:	00 00                	add    %al,(%eax)
     ed4:	64 01 00             	add    %eax,%fs:(%eax)
     ed7:	00 01                	add    %al,(%ecx)
     ed9:	00 50 64             	add    %dl,0x64(%eax)
     edc:	01 00                	add    %eax,(%eax)
     ede:	00 6b 01             	add    %ch,0x1(%ebx)
     ee1:	00 00                	add    %al,(%eax)
     ee3:	01 00                	add    %eax,(%eax)
     ee5:	56                   	push   %esi
     ee6:	6b 01 00             	imul   $0x0,(%ecx),%eax
     ee9:	00 6d 01             	add    %ch,0x1(%ebp)
     eec:	00 00                	add    %al,(%eax)
     eee:	01 00                	add    %eax,(%eax)
     ef0:	50                   	push   %eax
	...
     ef9:	af                   	scas   %es:(%edi),%eax
     efa:	00 00                	add    %al,(%eax)
     efc:	00 29                	add    %ch,(%ecx)
     efe:	01 00                	add    %eax,(%eax)
     f00:	00 01                	add    %al,(%ecx)
     f02:	00 53 29             	add    %dl,0x29(%ebx)
     f05:	01 00                	add    %eax,(%eax)
     f07:	00 33                	add    %dh,(%ebx)
     f09:	01 00                	add    %eax,(%eax)
     f0b:	00 08                	add    %cl,(%eax)
     f0d:	00 73 00             	add    %dh,0x0(%ebx)
     f10:	72 00                	jb     f12 <__executable_start-0x8047182>
     f12:	22 23                	and    (%ebx),%ah
     f14:	01 9f 33 01 00 00    	add    %ebx,0x133(%edi)
     f1a:	3b 01                	cmp    (%ecx),%eax
     f1c:	00 00                	add    %al,(%eax)
     f1e:	06                   	push   %es
     f1f:	00 73 00             	add    %dh,0x0(%ebx)
     f22:	72 00                	jb     f24 <__executable_start-0x8047170>
     f24:	22 9f 3b 01 00 00    	and    0x13b(%edi),%bl
     f2a:	4d                   	dec    %ebp
     f2b:	01 00                	add    %eax,(%eax)
     f2d:	00 01                	add    %al,(%ecx)
     f2f:	00 53 4d             	add    %dl,0x4d(%ebx)
     f32:	01 00                	add    %eax,(%eax)
     f34:	00 4f 01             	add    %cl,0x1(%edi)
     f37:	00 00                	add    %al,(%eax)
     f39:	08 00                	or     %al,(%eax)
     f3b:	91                   	xchg   %eax,%ecx
     f3c:	04 06                	add    $0x6,%al
     f3e:	91                   	xchg   %eax,%ecx
     f3f:	08 06                	or     %al,(%esi)
     f41:	22 9f 62 01 00 00    	and    0x162(%edi),%bl
     f47:	64 01 00             	add    %eax,%fs:(%eax)
     f4a:	00 01                	add    %al,(%ecx)
     f4c:	00 53 00             	add    %dl,0x0(%ebx)
     f4f:	00 00                	add    %al,(%eax)
     f51:	00 00                	add    %al,(%eax)
     f53:	00 00                	add    %al,(%eax)
     f55:	00 6d 01             	add    %ch,0x1(%ebp)
     f58:	00 00                	add    %al,(%eax)
     f5a:	c0 01 00             	rolb   $0x0,(%ecx)
     f5d:	00 02                	add    %al,(%edx)
     f5f:	00 91 08 c0 01 00    	add    %dl,0x1c008(%ecx)
     f65:	00 c3                	add    %al,%bl
     f67:	01 00                	add    %eax,(%eax)
     f69:	00 01                	add    %al,(%ecx)
     f6b:	00 50 c3             	add    %dl,-0x3d(%eax)
     f6e:	01 00                	add    %eax,(%eax)
     f70:	00 d8                	add    %bl,%al
     f72:	01 00                	add    %eax,(%eax)
     f74:	00 01                	add    %al,(%ecx)
     f76:	00 57 d8             	add    %dl,-0x28(%edi)
     f79:	01 00                	add    %eax,(%eax)
     f7b:	00 04 02             	add    %al,(%edx,%eax,1)
     f7e:	00 00                	add    %al,(%eax)
     f80:	02 00                	add    (%eax),%al
     f82:	91                   	xchg   %eax,%ecx
     f83:	08 04 02             	or     %al,(%edx,%eax,1)
     f86:	00 00                	add    %al,(%eax)
     f88:	0c 02                	or     $0x2,%al
     f8a:	00 00                	add    %al,(%eax)
     f8c:	09 00                	or     %eax,(%eax)
     f8e:	91                   	xchg   %eax,%ecx
     f8f:	08 06                	or     %al,(%esi)
     f91:	70 00                	jo     f93 <__executable_start-0x8047101>
     f93:	1c 32                	sbb    $0x32,%al
     f95:	1c 9f                	sbb    $0x9f,%al
     f97:	0c 02                	or     $0x2,%al
     f99:	00 00                	add    %al,(%eax)
     f9b:	14 02                	adc    $0x2,%al
     f9d:	00 00                	add    %al,(%eax)
     f9f:	08 00                	or     %al,(%eax)
     fa1:	70 00                	jo     fa3 <__executable_start-0x80470f1>
     fa3:	20 91 08 06 22 9f    	and    %dl,-0x60ddf9f8(%ecx)
     fa9:	20 02                	and    %al,(%edx)
     fab:	00 00                	add    %al,(%eax)
     fad:	29 02                	sub    %eax,(%edx)
     faf:	00 00                	add    %al,(%eax)
     fb1:	09 00                	or     %eax,(%eax)
     fb3:	91                   	xchg   %eax,%ecx
     fb4:	08 06                	or     %al,(%esi)
     fb6:	70 00                	jo     fb8 <__executable_start-0x80470dc>
     fb8:	1c 32                	sbb    $0x32,%al
     fba:	1c 9f                	sbb    $0x9f,%al
     fbc:	2b 02                	sub    (%edx),%eax
     fbe:	00 00                	add    %al,(%eax)
     fc0:	30 02                	xor    %al,(%edx)
     fc2:	00 00                	add    %al,(%eax)
     fc4:	01 00                	add    %eax,(%eax)
     fc6:	57                   	push   %edi
	...
     fcf:	7f 01                	jg     fd2 <__executable_start-0x80470c2>
     fd1:	00 00                	add    %al,(%eax)
     fd3:	04 02                	add    $0x2,%al
     fd5:	00 00                	add    %al,(%eax)
     fd7:	01 00                	add    %eax,(%eax)
     fd9:	53                   	push   %ebx
     fda:	04 02                	add    $0x2,%al
     fdc:	00 00                	add    %al,(%eax)
     fde:	0c 02                	or     $0x2,%al
     fe0:	00 00                	add    %al,(%eax)
     fe2:	08 00                	or     %al,(%eax)
     fe4:	73 00                	jae    fe6 <__executable_start-0x80470ae>
     fe6:	70 00                	jo     fe8 <__executable_start-0x80470ac>
     fe8:	22 23                	and    (%ebx),%ah
     fea:	01 9f 0c 02 00 00    	add    %ebx,0x20c(%edi)
     ff0:	14 02                	adc    $0x2,%al
     ff2:	00 00                	add    %al,(%eax)
     ff4:	06                   	push   %es
     ff5:	00 73 00             	add    %dh,0x0(%ebx)
     ff8:	70 00                	jo     ffa <__executable_start-0x804709a>
     ffa:	22 9f 20 02 00 00    	and    0x220(%edi),%bl
    1000:	29 02                	sub    %eax,(%edx)
    1002:	00 00                	add    %al,(%eax)
    1004:	08 00                	or     %al,(%eax)
    1006:	73 00                	jae    1008 <__executable_start-0x804708c>
    1008:	70 00                	jo     100a <__executable_start-0x804708a>
    100a:	22 23                	and    (%ebx),%ah
    100c:	01 9f 2b 02 00 00    	add    %ebx,0x22b(%edi)
    1012:	30 02                	xor    %al,(%edx)
    1014:	00 00                	add    %al,(%eax)
    1016:	01 00                	add    %eax,(%eax)
    1018:	53                   	push   %ebx
	...
    1021:	7f 01                	jg     1024 <__executable_start-0x8047070>
    1023:	00 00                	add    %al,(%eax)
    1025:	04 02                	add    $0x2,%al
    1027:	00 00                	add    %al,(%eax)
    1029:	01 00                	add    %eax,(%eax)
    102b:	56                   	push   %esi
    102c:	04 02                	add    $0x2,%al
    102e:	00 00                	add    %al,(%eax)
    1030:	0c 02                	or     $0x2,%al
    1032:	00 00                	add    %al,(%eax)
    1034:	08 00                	or     %al,(%eax)
    1036:	76 00                	jbe    1038 <__executable_start-0x804705c>
    1038:	70 00                	jo     103a <__executable_start-0x804705a>
    103a:	22 23                	and    (%ebx),%ah
    103c:	01 9f 0c 02 00 00    	add    %ebx,0x20c(%edi)
    1042:	14 02                	adc    $0x2,%al
    1044:	00 00                	add    %al,(%eax)
    1046:	06                   	push   %es
    1047:	00 76 00             	add    %dh,0x0(%esi)
    104a:	70 00                	jo     104c <__executable_start-0x8047048>
    104c:	22 9f 20 02 00 00    	and    0x220(%edi),%bl
    1052:	29 02                	sub    %eax,(%edx)
    1054:	00 00                	add    %al,(%eax)
    1056:	08 00                	or     %al,(%eax)
    1058:	76 00                	jbe    105a <__executable_start-0x804703a>
    105a:	70 00                	jo     105c <__executable_start-0x8047038>
    105c:	22 23                	and    (%ebx),%ah
    105e:	01 9f 2b 02 00 00    	add    %ebx,0x22b(%edi)
    1064:	30 02                	xor    %al,(%edx)
    1066:	00 00                	add    %al,(%eax)
    1068:	01 00                	add    %eax,(%eax)
    106a:	56                   	push   %esi
	...
    1073:	42                   	inc    %edx
    1074:	02 00                	add    (%eax),%al
    1076:	00 71 02             	add    %dh,0x2(%ecx)
    1079:	00 00                	add    %al,(%eax)
    107b:	01 00                	add    %eax,(%eax)
    107d:	51                   	push   %ecx
    107e:	71 02                	jno    1082 <__executable_start-0x8047012>
    1080:	00 00                	add    %al,(%eax)
    1082:	72 02                	jb     1086 <__executable_start-0x804700e>
    1084:	00 00                	add    %al,(%eax)
    1086:	02 00                	add    (%eax),%al
    1088:	91                   	xchg   %eax,%ecx
    1089:	00 72 02             	add    %dh,0x2(%edx)
    108c:	00 00                	add    %al,(%eax)
    108e:	af                   	scas   %es:(%edi),%eax
    108f:	02 00                	add    (%eax),%al
    1091:	00 01                	add    %al,(%ecx)
    1093:	00 51 af             	add    %dl,-0x51(%ecx)
    1096:	02 00                	add    (%eax),%al
    1098:	00 b0 02 00 00 02    	add    %dh,0x2000002(%eax)
    109e:	00 91 00 b0 02 00    	add    %dl,0x2b000(%ecx)
    10a4:	00 db                	add    %bl,%bl
    10a6:	02 00                	add    (%eax),%al
    10a8:	00 01                	add    %al,(%ecx)
    10aa:	00 51 00             	add    %dl,0x0(%ecx)
    10ad:	00 00                	add    %al,(%eax)
    10af:	00 00                	add    %al,(%eax)
    10b1:	00 00                	add    %al,(%eax)
    10b3:	00 42 02             	add    %al,0x2(%edx)
    10b6:	00 00                	add    %al,(%eax)
    10b8:	71 02                	jno    10bc <__executable_start-0x8046fd8>
    10ba:	00 00                	add    %al,(%eax)
    10bc:	01 00                	add    %eax,(%eax)
    10be:	52                   	push   %edx
    10bf:	71 02                	jno    10c3 <__executable_start-0x8046fd1>
    10c1:	00 00                	add    %al,(%eax)
    10c3:	72 02                	jb     10c7 <__executable_start-0x8046fcd>
    10c5:	00 00                	add    %al,(%eax)
    10c7:	02 00                	add    (%eax),%al
    10c9:	91                   	xchg   %eax,%ecx
    10ca:	04 72                	add    $0x72,%al
    10cc:	02 00                	add    (%eax),%al
    10ce:	00 af 02 00 00 01    	add    %ch,0x1000002(%edi)
    10d4:	00 52 af             	add    %dl,-0x51(%edx)
    10d7:	02 00                	add    (%eax),%al
    10d9:	00 b0 02 00 00 02    	add    %dh,0x2000002(%eax)
    10df:	00 91 04 b0 02 00    	add    %dl,0x2b004(%ecx)
    10e5:	00 c4                	add    %al,%ah
    10e7:	02 00                	add    (%eax),%al
    10e9:	00 01                	add    %al,(%ecx)
    10eb:	00 52 00             	add    %dl,0x0(%edx)
    10ee:	00 00                	add    %al,(%eax)
    10f0:	00 00                	add    %al,(%eax)
    10f2:	00 00                	add    %al,(%eax)
    10f4:	00 db                	add    %bl,%bl
    10f6:	02 00                	add    (%eax),%al
    10f8:	00 f6                	add    %dh,%dh
    10fa:	02 00                	add    (%eax),%al
    10fc:	00 02                	add    %al,(%edx)
    10fe:	00 91 08 f6 02 00    	add    %dl,0x2f608(%ecx)
    1104:	00 f9                	add    %bh,%cl
    1106:	02 00                	add    (%eax),%al
    1108:	00 01                	add    %al,(%ecx)
    110a:	00 52 f9             	add    %dl,-0x7(%edx)
    110d:	02 00                	add    (%eax),%al
    110f:	00 0a                	add    %cl,(%edx)
    1111:	03 00                	add    (%eax),%eax
    1113:	00 01                	add    %al,(%ecx)
    1115:	00 51 0a             	add    %dl,0xa(%ecx)
    1118:	03 00                	add    (%eax),%eax
    111a:	00 36                	add    %dh,(%esi)
    111c:	03 00                	add    (%eax),%eax
    111e:	00 02                	add    %al,(%edx)
    1120:	00 91 08 36 03 00    	add    %dl,0x33608(%ecx)
    1126:	00 39                	add    %bh,(%ecx)
    1128:	03 00                	add    (%eax),%eax
    112a:	00 09                	add    %cl,(%ecx)
    112c:	00 91 08 06 72 00    	add    %dl,0x720608(%ecx)
    1132:	1c 32                	sbb    $0x32,%al
    1134:	1c 9f                	sbb    $0x9f,%al
    1136:	39 03                	cmp    %eax,(%ebx)
    1138:	00 00                	add    %al,(%eax)
    113a:	40                   	inc    %eax
    113b:	03 00                	add    (%eax),%eax
    113d:	00 08                	add    %cl,(%eax)
    113f:	00 72 00             	add    %dh,0x0(%edx)
    1142:	20 91 08 06 22 9f    	and    %dl,-0x60ddf9f8(%ecx)
    1148:	40                   	inc    %eax
    1149:	03 00                	add    (%eax),%eax
    114b:	00 4b 03             	add    %cl,0x3(%ebx)
    114e:	00 00                	add    %al,(%eax)
    1150:	09 00                	or     %eax,(%eax)
    1152:	91                   	xchg   %eax,%ecx
    1153:	08 06                	or     %al,(%esi)
    1155:	72 00                	jb     1157 <__executable_start-0x8046f3d>
    1157:	1c 32                	sbb    $0x32,%al
    1159:	1c 9f                	sbb    $0x9f,%al
    115b:	4b                   	dec    %ebx
    115c:	03 00                	add    (%eax),%eax
    115e:	00 50 03             	add    %dl,0x3(%eax)
    1161:	00 00                	add    %al,(%eax)
    1163:	01 00                	add    %eax,(%eax)
    1165:	51                   	push   %ecx
	...
    116e:	ec                   	in     (%dx),%al
    116f:	02 00                	add    (%eax),%al
    1171:	00 35 03 00 00 01    	add    %dh,0x1000003
    1177:	00 50 35             	add    %dl,0x35(%eax)
    117a:	03 00                	add    (%eax),%eax
    117c:	00 36                	add    %dh,(%esi)
    117e:	03 00                	add    (%eax),%eax
    1180:	00 02                	add    %al,(%edx)
    1182:	00 91 00 36 03 00    	add    %dl,0x33600(%ecx)
    1188:	00 49 03             	add    %cl,0x3(%ecx)
    118b:	00 00                	add    %al,(%eax)
    118d:	01 00                	add    %eax,(%eax)
    118f:	50                   	push   %eax
    1190:	4b                   	dec    %ebx
    1191:	03 00                	add    (%eax),%eax
    1193:	00 50 03             	add    %dl,0x3(%eax)
    1196:	00 00                	add    %al,(%eax)
    1198:	01 00                	add    %eax,(%eax)
    119a:	50                   	push   %eax
	...
    11a3:	ee                   	out    %al,(%dx)
    11a4:	02 00                	add    (%eax),%al
    11a6:	00 03                	add    %al,(%ebx)
    11a8:	03 00                	add    (%eax),%eax
    11aa:	00 01                	add    %al,(%ecx)
    11ac:	00 53 03             	add    %dl,0x3(%ebx)
    11af:	03 00                	add    (%eax),%eax
    11b1:	00 08                	add    %cl,(%eax)
    11b3:	03 00                	add    (%eax),%eax
    11b5:	00 01                	add    %al,(%ecx)
    11b7:	00 52 08             	add    %dl,0x8(%edx)
    11ba:	03 00                	add    (%eax),%eax
    11bc:	00 54 03 00          	add    %dl,0x0(%ebx,%eax,1)
    11c0:	00 01                	add    %al,(%ecx)
    11c2:	00 53 54             	add    %dl,0x54(%ebx)
    11c5:	03 00                	add    (%eax),%eax
    11c7:	00 55 03             	add    %dl,0x3(%ebp)
    11ca:	00 00                	add    %al,(%eax)
    11cc:	01 00                	add    %eax,(%eax)
    11ce:	56                   	push   %esi
    11cf:	55                   	push   %ebp
    11d0:	03 00                	add    (%eax),%eax
    11d2:	00 56 03             	add    %dl,0x3(%esi)
    11d5:	00 00                	add    %al,(%eax)
    11d7:	02 00                	add    (%eax),%al
    11d9:	91                   	xchg   %eax,%ecx
    11da:	04 00                	add    $0x0,%al
    11dc:	00 00                	add    %al,(%eax)
    11de:	00 00                	add    %al,(%eax)
    11e0:	00 00                	add    %al,(%eax)
    11e2:	00 56 03             	add    %dl,0x3(%esi)
    11e5:	00 00                	add    %al,(%eax)
    11e7:	68 03 00 00 02       	push   $0x2000003
    11ec:	00 91 00 68 03 00    	add    %dl,0x36800(%ecx)
    11f2:	00 71 03             	add    %dh,0x3(%ecx)
    11f5:	00 00                	add    %al,(%eax)
    11f7:	01 00                	add    %eax,(%eax)
    11f9:	50                   	push   %eax
    11fa:	71 03                	jno    11ff <__executable_start-0x8046e95>
    11fc:	00 00                	add    %al,(%eax)
    11fe:	9d                   	popf   
    11ff:	03 00                	add    (%eax),%eax
    1201:	00 02                	add    %al,(%edx)
    1203:	00 91 00 9d 03 00    	add    %dl,0x39d00(%ecx)
    1209:	00 b8 03 00 00 01    	add    %bh,0x1000003(%eax)
    120f:	00 50 b8             	add    %dl,-0x48(%eax)
    1212:	03 00                	add    (%eax),%eax
    1214:	00 ba 03 00 00 02    	add    %bh,0x2000003(%edx)
    121a:	00 91 00 ba 03 00    	add    %dl,0x3ba00(%ecx)
    1220:	00 bf 03 00 00 01    	add    %bh,0x1000003(%edi)
    1226:	00 50 00             	add    %dl,0x0(%eax)
    1229:	00 00                	add    %al,(%eax)
    122b:	00 00                	add    %al,(%eax)
    122d:	00 00                	add    %al,(%eax)
    122f:	00 62 03             	add    %ah,0x3(%edx)
    1232:	00 00                	add    %al,(%eax)
    1234:	9c                   	pushf  
    1235:	03 00                	add    (%eax),%eax
    1237:	00 01                	add    %al,(%ecx)
    1239:	00 52 9c             	add    %dl,-0x64(%edx)
    123c:	03 00                	add    (%eax),%eax
    123e:	00 9d 03 00 00 02    	add    %bl,0x2000003(%ebp)
    1244:	00 91 04 9d 03 00    	add    %dl,0x39d04(%ecx)
    124a:	00 a3 03 00 00 01    	add    %ah,0x1000003(%ebx)
    1250:	00 52 a3             	add    %dl,-0x5d(%edx)
    1253:	03 00                	add    (%eax),%eax
    1255:	00 b3 03 00 00 01    	add    %dh,0x1000003(%ebx)
    125b:	00 51 b3             	add    %dl,-0x4d(%ecx)
    125e:	03 00                	add    (%eax),%eax
    1260:	00 ba 03 00 00 01    	add    %bh,0x1000003(%edx)
    1266:	00 52 ba             	add    %dl,-0x46(%edx)
    1269:	03 00                	add    (%eax),%eax
    126b:	00 c4                	add    %al,%ah
    126d:	03 00                	add    (%eax),%eax
    126f:	00 01                	add    %al,(%ecx)
    1271:	00 51 00             	add    %dl,0x0(%ecx)
    1274:	00 00                	add    %al,(%eax)
    1276:	00 00                	add    %al,(%eax)
    1278:	00 00                	add    %al,(%eax)
    127a:	00 d2                	add    %dl,%dl
    127c:	03 00                	add    (%eax),%eax
    127e:	00 de                	add    %bl,%dh
    1280:	03 00                	add    (%eax),%eax
    1282:	00 02                	add    %al,(%edx)
    1284:	00 30                	add    %dh,(%eax)
    1286:	9f                   	lahf   
    1287:	de 03                	fiadd  (%ebx)
    1289:	00 00                	add    %al,(%eax)
    128b:	fe 03                	incb   (%ebx)
    128d:	00 00                	add    %al,(%eax)
    128f:	01 00                	add    %eax,(%eax)
    1291:	53                   	push   %ebx
    1292:	fe 03                	incb   (%ebx)
    1294:	00 00                	add    %al,(%eax)
    1296:	03 04 00             	add    (%eax,%eax,1),%eax
    1299:	00 02                	add    %al,(%edx)
    129b:	00 30                	add    %dh,(%eax)
    129d:	9f                   	lahf   
	...
    12a6:	0c 04                	or     $0x4,%al
    12a8:	00 00                	add    %al,(%eax)
    12aa:	19 04 00             	sbb    %eax,(%eax,%eax,1)
    12ad:	00 02                	add    %al,(%edx)
    12af:	00 91 00 19 04 00    	add    %dl,0x41900(%ecx)
    12b5:	00 4c 04 00          	add    %cl,0x0(%esp,%eax,1)
    12b9:	00 01                	add    %al,(%ecx)
    12bb:	00 53 00             	add    %dl,0x0(%ebx)
    12be:	00 00                	add    %al,(%eax)
    12c0:	00 00                	add    %al,(%eax)
    12c2:	00 00                	add    %al,(%eax)
    12c4:	00 4e 04             	add    %cl,0x4(%esi)
    12c7:	00 00                	add    %al,(%eax)
    12c9:	64 04 00             	fs add $0x0,%al
    12cc:	00 02                	add    %al,(%edx)
    12ce:	00 91 00 64 04 00    	add    %dl,0x46400(%ecx)
    12d4:	00 7c 04 00          	add    %bh,0x0(%esp,%eax,1)
    12d8:	00 01                	add    %al,(%ecx)
    12da:	00 52 00             	add    %dl,0x0(%edx)
    12dd:	00 00                	add    %al,(%eax)
    12df:	00 00                	add    %al,(%eax)
    12e1:	00 00                	add    %al,(%eax)
    12e3:	00 58 04             	add    %bl,0x4(%eax)
    12e6:	00 00                	add    %al,(%eax)
    12e8:	64 04 00             	fs add $0x0,%al
    12eb:	00 02                	add    %al,(%edx)
    12ed:	00 30                	add    %dh,(%eax)
    12ef:	9f                   	lahf   
    12f0:	64 04 00             	fs add $0x0,%al
    12f3:	00 75 04             	add    %dh,0x4(%ebp)
    12f6:	00 00                	add    %al,(%eax)
    12f8:	01 00                	add    %eax,(%eax)
    12fa:	50                   	push   %eax
    12fb:	75 04                	jne    1301 <__executable_start-0x8046d93>
    12fd:	00 00                	add    %al,(%eax)
    12ff:	7a 04                	jp     1305 <__executable_start-0x8046d8f>
    1301:	00 00                	add    %al,(%eax)
    1303:	02 00                	add    (%eax),%al
    1305:	30 9f 00 00 00 00    	xor    %bl,0x0(%edi)
    130b:	00 00                	add    %al,(%eax)
    130d:	00 00                	add    %al,(%eax)
    130f:	8a 04 00             	mov    (%eax,%eax,1),%al
    1312:	00 96 04 00 00 02    	add    %dl,0x2000004(%esi)
    1318:	00 30                	add    %dh,(%eax)
    131a:	9f                   	lahf   
    131b:	96                   	xchg   %eax,%esi
    131c:	04 00                	add    $0x0,%al
    131e:	00 b6 04 00 00 01    	add    %dh,0x1000004(%esi)
    1324:	00 53 b6             	add    %dl,-0x4a(%ebx)
    1327:	04 00                	add    $0x0,%al
    1329:	00 bb 04 00 00 02    	add    %bh,0x2000004(%ebx)
    132f:	00 30                	add    %dh,(%eax)
    1331:	9f                   	lahf   
	...
    133a:	c4 04 00             	les    (%eax,%eax,1),%eax
    133d:	00 40 05             	add    %al,0x5(%eax)
    1340:	00 00                	add    %al,(%eax)
    1342:	02 00                	add    (%eax),%al
    1344:	91                   	xchg   %eax,%ecx
    1345:	00 40 05             	add    %al,0x5(%eax)
    1348:	00 00                	add    %al,(%eax)
    134a:	a0 05 00 00 01       	mov    0x1000005,%al
    134f:	00 53 a0             	add    %dl,-0x60(%ebx)
    1352:	05 00 00 c7 05       	add    $0x5c70000,%eax
    1357:	00 00                	add    %al,(%eax)
    1359:	01 00                	add    %eax,(%eax)
    135b:	57                   	push   %edi
    135c:	c7 05 00 00 d1 05 00 	movl   $0x30000,0x5d10000
    1363:	00 03 00 
    1366:	77 7f                	ja     13e7 <__executable_start-0x8046cad>
    1368:	9f                   	lahf   
    1369:	d1 05 00 00 d9 05    	roll   0x5d90000
    136f:	00 00                	add    %al,(%eax)
    1371:	01 00                	add    %eax,(%eax)
    1373:	57                   	push   %edi
	...
    137c:	e1 05                	loope  1383 <__executable_start-0x8046d11>
    137e:	00 00                	add    %al,(%eax)
    1380:	fa                   	cli    
    1381:	05 00 00 02 00       	add    $0x20000,%eax
    1386:	91                   	xchg   %eax,%ecx
    1387:	08 fa                	or     %bh,%dl
    1389:	05 00 00 05 06       	add    $0x6050000,%eax
    138e:	00 00                	add    %al,(%eax)
    1390:	03 00                	add    (%eax),%eax
    1392:	76 7f                	jbe    1413 <__executable_start-0x8046c81>
    1394:	9f                   	lahf   
    1395:	05 06 00 00 31       	add    $0x31000006,%eax
    139a:	06                   	push   %es
    139b:	00 00                	add    %al,(%eax)
    139d:	02 00                	add    (%eax),%al
    139f:	91                   	xchg   %eax,%ecx
    13a0:	08 31                	or     %dh,(%ecx)
    13a2:	06                   	push   %es
    13a3:	00 00                	add    %al,(%eax)
    13a5:	34 06                	xor    $0x6,%al
    13a7:	00 00                	add    %al,(%eax)
    13a9:	0a 00                	or     (%eax),%al
    13ab:	72 00                	jb     13ad <__executable_start-0x8046ce7>
    13ad:	20 70 00             	and    %dh,0x0(%eax)
    13b0:	22 76 00             	and    0x0(%esi),%dh
    13b3:	22 9f 34 06 00 00    	and    0x634(%edi),%bl
    13b9:	37                   	aaa    
    13ba:	06                   	push   %es
    13bb:	00 00                	add    %al,(%eax)
    13bd:	09 00                	or     %eax,(%eax)
    13bf:	70 00                	jo     13c1 <__executable_start-0x8046cd3>
    13c1:	72 00                	jb     13c3 <__executable_start-0x8046cd1>
    13c3:	1c 76                	sbb    $0x76,%al
    13c5:	00 22                	add    %ah,(%edx)
    13c7:	9f                   	lahf   
    13c8:	37                   	aaa    
    13c9:	06                   	push   %es
    13ca:	00 00                	add    %al,(%eax)
    13cc:	3b 06                	cmp    (%esi),%eax
    13ce:	00 00                	add    %al,(%eax)
    13d0:	0a 00                	or     (%eax),%al
    13d2:	72 00                	jb     13d4 <__executable_start-0x8046cc0>
    13d4:	20 70 00             	and    %dh,0x0(%eax)
    13d7:	22 76 00             	and    0x0(%esi),%dh
    13da:	22 9f 00 00 00 00    	and    0x0(%edi),%bl
    13e0:	00 00                	add    %al,(%eax)
    13e2:	00 00                	add    %al,(%eax)
    13e4:	f2 05 00 00 30 06    	repnz add $0x6300000,%eax
    13ea:	00 00                	add    %al,(%eax)
    13ec:	01 00                	add    %eax,(%eax)
    13ee:	50                   	push   %eax
    13ef:	30 06                	xor    %al,(%esi)
    13f1:	00 00                	add    %al,(%eax)
    13f3:	31 06                	xor    %eax,(%esi)
    13f5:	00 00                	add    %al,(%eax)
    13f7:	02 00                	add    (%eax),%al
    13f9:	91                   	xchg   %eax,%ecx
    13fa:	00 31                	add    %dh,(%ecx)
    13fc:	06                   	push   %es
    13fd:	00 00                	add    %al,(%eax)
    13ff:	41                   	inc    %ecx
    1400:	06                   	push   %es
    1401:	00 00                	add    %al,(%eax)
    1403:	01 00                	add    %eax,(%eax)
    1405:	52                   	push   %edx
	...
    140e:	4c                   	dec    %esp
    140f:	06                   	push   %es
    1410:	00 00                	add    %al,(%eax)
    1412:	55                   	push   %ebp
    1413:	06                   	push   %es
    1414:	00 00                	add    %al,(%eax)
    1416:	01 00                	add    %eax,(%eax)
    1418:	52                   	push   %edx
    1419:	81 06 00 00 8d 06    	addl   $0x68d0000,(%esi)
    141f:	00 00                	add    %al,(%eax)
    1421:	01 00                	add    %eax,(%eax)
    1423:	50                   	push   %eax
	...
    142c:	91                   	xchg   %eax,%ecx
    142d:	06                   	push   %es
    142e:	00 00                	add    %al,(%eax)
    1430:	ae                   	scas   %es:(%edi),%al
    1431:	06                   	push   %es
    1432:	00 00                	add    %al,(%eax)
    1434:	02 00                	add    (%eax),%al
    1436:	91                   	xchg   %eax,%ecx
	...
    143f:	00 91 06 00 00 b9    	add    %dl,-0x46fffffa(%ecx)
    1445:	06                   	push   %es
    1446:	00 00                	add    %al,(%eax)
    1448:	02 00                	add    (%eax),%al
    144a:	91                   	xchg   %eax,%ecx
    144b:	04 00                	add    $0x0,%al
    144d:	00 00                	add    %al,(%eax)
    144f:	00 00                	add    %al,(%eax)
    1451:	00 00                	add    %al,(%eax)
    1453:	00 b3 06 00 00 c4    	add    %dh,-0x3bfffffa(%ebx)
    1459:	06                   	push   %es
    145a:	00 00                	add    %al,(%eax)
    145c:	01 00                	add    %eax,(%eax)
    145e:	52                   	push   %edx
    145f:	f2 06                	repnz push %es
    1461:	00 00                	add    %al,(%eax)
    1463:	f9                   	stc    
    1464:	06                   	push   %es
    1465:	00 00                	add    %al,(%eax)
    1467:	01 00                	add    %eax,(%eax)
    1469:	52                   	push   %edx
	...
    1472:	be 06 00 00 08       	mov    $0x8000006,%esi
    1477:	07                   	pop    %es
    1478:	00 00                	add    %al,(%eax)
    147a:	01 00                	add    %eax,(%eax)
    147c:	57                   	push   %edi
	...
    1485:	c2 06 00             	ret    $0x6
    1488:	00 cd                	add    %cl,%ch
    148a:	06                   	push   %es
    148b:	00 00                	add    %al,(%eax)
    148d:	02 00                	add    (%eax),%al
    148f:	30 9f cd 06 00 00    	xor    %bl,0x6cd(%edi)
    1495:	f2 06                	repnz push %es
    1497:	00 00                	add    %al,(%eax)
    1499:	01 00                	add    %eax,(%eax)
    149b:	53                   	push   %ebx
    149c:	f9                   	stc    
    149d:	06                   	push   %es
    149e:	00 00                	add    %al,(%eax)
    14a0:	02 07                	add    (%edi),%al
    14a2:	00 00                	add    %al,(%eax)
    14a4:	01 00                	add    %eax,(%eax)
    14a6:	53                   	push   %ebx
	...
    14af:	0a 07                	or     (%edi),%al
    14b1:	00 00                	add    %al,(%eax)
    14b3:	2f                   	das    
    14b4:	07                   	pop    %es
    14b5:	00 00                	add    %al,(%eax)
    14b7:	02 00                	add    (%eax),%al
    14b9:	91                   	xchg   %eax,%ecx
    14ba:	00 2f                	add    %ch,(%edi)
    14bc:	07                   	pop    %es
    14bd:	00 00                	add    %al,(%eax)
    14bf:	36 07                	ss pop %es
    14c1:	00 00                	add    %al,(%eax)
    14c3:	01 00                	add    %eax,(%eax)
    14c5:	52                   	push   %edx
	...
    14ce:	0a 07                	or     (%edi),%al
    14d0:	00 00                	add    %al,(%eax)
    14d2:	2f                   	das    
    14d3:	07                   	pop    %es
    14d4:	00 00                	add    %al,(%eax)
    14d6:	02 00                	add    (%eax),%al
    14d8:	91                   	xchg   %eax,%ecx
    14d9:	04 2f                	add    $0x2f,%al
    14db:	07                   	pop    %es
    14dc:	00 00                	add    %al,(%eax)
    14de:	36 07                	ss pop %es
    14e0:	00 00                	add    %al,(%eax)
    14e2:	01 00                	add    %eax,(%eax)
    14e4:	51                   	push   %ecx
	...
    14ed:	12 07                	adc    (%edi),%al
    14ef:	00 00                	add    %al,(%eax)
    14f1:	20 07                	and    %al,(%edi)
    14f3:	00 00                	add    %al,(%eax)
    14f5:	02 00                	add    (%eax),%al
    14f7:	30 9f 20 07 00 00    	xor    %bl,0x720(%edi)
    14fd:	2f                   	das    
    14fe:	07                   	pop    %es
    14ff:	00 00                	add    %al,(%eax)
    1501:	01 00                	add    %eax,(%eax)
    1503:	50                   	push   %eax
    1504:	2f                   	das    
    1505:	07                   	pop    %es
    1506:	00 00                	add    %al,(%eax)
    1508:	34 07                	xor    $0x7,%al
    150a:	00 00                	add    %al,(%eax)
    150c:	02 00                	add    (%eax),%al
    150e:	30 9f 00 00 00 00    	xor    %bl,0x0(%edi)
    1514:	00 00                	add    %al,(%eax)
    1516:	00 00                	add    %al,(%eax)
    1518:	36 07                	ss pop %es
    151a:	00 00                	add    %al,(%eax)
    151c:	b6 07                	mov    $0x7,%dh
    151e:	00 00                	add    %al,(%eax)
    1520:	02 00                	add    (%eax),%al
    1522:	91                   	xchg   %eax,%ecx
    1523:	04 00                	add    $0x0,%al
    1525:	00 00                	add    %al,(%eax)
    1527:	00 00                	add    %al,(%eax)
    1529:	00 00                	add    %al,(%eax)
    152b:	00 bb 07 00 00 e3    	add    %bh,-0x1cfffff9(%ebx)
    1531:	07                   	pop    %es
    1532:	00 00                	add    %al,(%eax)
    1534:	01 00                	add    %eax,(%eax)
    1536:	57                   	push   %edi
    1537:	e3 07                	jecxz  1540 <__executable_start-0x8046b54>
    1539:	00 00                	add    %al,(%eax)
    153b:	e4 07                	in     $0x7,%al
    153d:	00 00                	add    %al,(%eax)
    153f:	01 00                	add    %eax,(%eax)
    1541:	50                   	push   %eax
	...
    154a:	c2 07 00             	ret    $0x7
    154d:	00 db                	add    %bl,%bl
    154f:	07                   	pop    %es
    1550:	00 00                	add    %al,(%eax)
    1552:	01 00                	add    %eax,(%eax)
    1554:	56                   	push   %esi
	...
    155d:	e4 07                	in     $0x7,%al
    155f:	00 00                	add    %al,(%eax)
    1561:	6e                   	outsb  %ds:(%esi),(%dx)
    1562:	08 00                	or     %al,(%eax)
    1564:	00 02                	add    %al,(%edx)
    1566:	00 91 00 00 00 00    	add    %dl,0x0(%ecx)
    156c:	00 00                	add    %al,(%eax)
    156e:	00 00                	add    %al,(%eax)
    1570:	00 e4                	add    %ah,%ah
    1572:	07                   	pop    %es
    1573:	00 00                	add    %al,(%eax)
    1575:	63 08                	arpl   %cx,(%eax)
    1577:	00 00                	add    %al,(%eax)
    1579:	02 00                	add    (%eax),%al
    157b:	91                   	xchg   %eax,%ecx
    157c:	04 00                	add    $0x0,%al
    157e:	00 00                	add    %al,(%eax)
    1580:	00 00                	add    %al,(%eax)
    1582:	00 00                	add    %al,(%eax)
    1584:	00 68 08             	add    %ch,0x8(%eax)
    1587:	00 00                	add    %al,(%eax)
    1589:	af                   	scas   %es:(%edi),%eax
    158a:	08 00                	or     %al,(%eax)
    158c:	00 01                	add    %al,(%ecx)
    158e:	00 56 00             	add    %dl,0x0(%esi)
    1591:	00 00                	add    %al,(%eax)
    1593:	00 00                	add    %al,(%eax)
    1595:	00 00                	add    %al,(%eax)
    1597:	00 75 08             	add    %dh,0x8(%ebp)
    159a:	00 00                	add    %al,(%eax)
    159c:	ae                   	scas   %es:(%edi),%al
    159d:	08 00                	or     %al,(%eax)
    159f:	00 01                	add    %al,(%ecx)
    15a1:	00 53 00             	add    %dl,0x0(%ebx)
    15a4:	00 00                	add    %al,(%eax)
    15a6:	00 00                	add    %al,(%eax)
    15a8:	00 00                	add    %al,(%eax)
    15aa:	00 8b 08 00 00 a7    	add    %cl,-0x58fffff8(%ebx)
    15b0:	08 00                	or     %al,(%eax)
    15b2:	00 01                	add    %al,(%ecx)
    15b4:	00 57 00             	add    %dl,0x0(%edi)
	...
    15bf:	00 00                	add    %al,(%eax)
    15c1:	00 20                	add    %ah,(%eax)
    15c3:	00 00                	add    %al,(%eax)
    15c5:	00 06                	add    %al,(%esi)
    15c7:	00 50 93             	add    %dl,-0x6d(%eax)
    15ca:	04 52                	add    $0x52,%al
    15cc:	93                   	xchg   %eax,%ebx
    15cd:	04 20                	add    $0x20,%al
    15cf:	00 00                	add    %al,(%eax)
    15d1:	00 53 00             	add    %dl,0x0(%ebx)
    15d4:	00 00                	add    %al,(%eax)
    15d6:	06                   	push   %es
    15d7:	00 f3                	add    %dh,%bl
    15d9:	03 f5                	add    %ebp,%esi
    15db:	00 25 9f 53 00 00    	add    %ah,0x539f
    15e1:	00 6a 00             	add    %ch,0x0(%edx)
    15e4:	00 00                	add    %al,(%eax)
    15e6:	06                   	push   %es
    15e7:	00 50 93             	add    %dl,-0x6d(%eax)
    15ea:	04 52                	add    $0x52,%al
    15ec:	93                   	xchg   %eax,%ebx
    15ed:	04 6a                	add    $0x6a,%al
    15ef:	00 00                	add    %al,(%eax)
    15f1:	00 31                	add    %dh,(%ecx)
    15f3:	01 00                	add    %eax,(%eax)
    15f5:	00 06                	add    %al,(%esi)
    15f7:	00 f3                	add    %dh,%bl
    15f9:	03 f5                	add    %ebp,%esi
    15fb:	00 25 9f 31 01 00    	add    %ah,0x1319f
    1601:	00 36                	add    %dh,(%esi)
    1603:	01 00                	add    %eax,(%eax)
    1605:	00 06                	add    %al,(%esi)
    1607:	00 50 93             	add    %dl,-0x6d(%eax)
    160a:	04 52                	add    $0x52,%al
    160c:	93                   	xchg   %eax,%ebx
    160d:	04 36                	add    $0x36,%al
    160f:	01 00                	add    %eax,(%eax)
    1611:	00 4d 01             	add    %cl,0x1(%ebp)
    1614:	00 00                	add    %al,(%eax)
    1616:	06                   	push   %es
    1617:	00 f3                	add    %dh,%bl
    1619:	03 f5                	add    %ebp,%esi
    161b:	00 25 9f 00 00 00    	add    %ah,0x9f
    1621:	00 00                	add    %al,(%eax)
    1623:	00 00                	add    %al,(%eax)
    1625:	00 1c 00             	add    %bl,(%eax,%eax,1)
    1628:	00 00                	add    %al,(%eax)
    162a:	53                   	push   %ebx
    162b:	00 00                	add    %al,(%eax)
    162d:	00 0a                	add    %cl,(%edx)
    162f:	00 9e 08 00 00 00    	add    %bl,0x8(%esi)
    1635:	00 01                	add    %al,(%ecx)
	...
    163f:	00 00                	add    %al,(%eax)
    1641:	00 20                	add    %ah,(%eax)
    1643:	00 00                	add    %al,(%eax)
    1645:	00 27                	add    %ah,(%edi)
    1647:	00 00                	add    %al,(%eax)
    1649:	00 01                	add    %al,(%ecx)
    164b:	00 50 27             	add    %dl,0x27(%eax)
    164e:	00 00                	add    %al,(%eax)
    1650:	00 53 00             	add    %dl,0x0(%ebx)
    1653:	00 00                	add    %al,(%eax)
    1655:	02 00                	add    (%eax),%al
    1657:	91                   	xchg   %eax,%ecx
    1658:	54                   	push   %esp
	...
    1661:	20 00                	and    %al,(%eax)
    1663:	00 00                	add    %al,(%eax)
    1665:	53                   	push   %ebx
    1666:	00 00                	add    %al,(%eax)
    1668:	00 02                	add    %al,(%edx)
    166a:	00 74 00 00          	add    %dh,0x0(%eax,%eax,1)
    166e:	00 00                	add    %al,(%eax)
    1670:	00 00                	add    %al,(%eax)
    1672:	00 00                	add    %al,(%eax)
    1674:	00 20                	add    %ah,(%eax)
    1676:	00 00                	add    %al,(%eax)
    1678:	00 45 00             	add    %al,0x0(%ebp)
    167b:	00 00                	add    %al,(%eax)
    167d:	01 00                	add    %eax,(%eax)
    167f:	57                   	push   %edi
    1680:	45                   	inc    %ebp
    1681:	00 00                	add    %al,(%eax)
    1683:	00 53 00             	add    %dl,0x0(%ebx)
    1686:	00 00                	add    %al,(%eax)
    1688:	02 00                	add    (%eax),%al
    168a:	91                   	xchg   %eax,%ecx
	...
    1693:	00 3c 00             	add    %bh,(%eax,%eax,1)
    1696:	00 00                	add    %al,(%eax)
    1698:	45                   	inc    %ebp
    1699:	00 00                	add    %al,(%eax)
    169b:	00 01                	add    %al,(%ecx)
    169d:	00 57 45             	add    %dl,0x45(%edi)
    16a0:	00 00                	add    %al,(%eax)
    16a2:	00 53 00             	add    %dl,0x0(%ebx)
    16a5:	00 00                	add    %al,(%eax)
    16a7:	02 00                	add    (%eax),%al
    16a9:	91                   	xchg   %eax,%ecx
	...
    16b2:	00 3c 00             	add    %bh,(%eax,%eax,1)
    16b5:	00 00                	add    %al,(%eax)
    16b7:	3e 00 00             	add    %al,%ds:(%eax)
    16ba:	00 06                	add    %al,(%esi)
    16bc:	00 50 93             	add    %dl,-0x6d(%eax)
    16bf:	04 52                	add    $0x52,%al
    16c1:	93                   	xchg   %eax,%ebx
    16c2:	04 00                	add    $0x0,%al
    16c4:	00 00                	add    %al,(%eax)
    16c6:	00 00                	add    %al,(%eax)
    16c8:	00 00                	add    %al,(%eax)
    16ca:	00 3c 00             	add    %bh,(%eax,%eax,1)
    16cd:	00 00                	add    %al,(%eax)
    16cf:	3e 00 00             	add    %al,%ds:(%eax)
    16d2:	00 01                	add    %al,(%ecx)
    16d4:	00 52 00             	add    %dl,0x0(%edx)
    16d7:	00 00                	add    %al,(%eax)
    16d9:	00 00                	add    %al,(%eax)
    16db:	00 00                	add    %al,(%eax)
    16dd:	00 3c 00             	add    %bh,(%eax,%eax,1)
    16e0:	00 00                	add    %al,(%eax)
    16e2:	3e 00 00             	add    %al,%ds:(%eax)
    16e5:	00 01                	add    %al,(%ecx)
    16e7:	00 50 3e             	add    %dl,0x3e(%eax)
    16ea:	00 00                	add    %al,(%eax)
    16ec:	00 53 00             	add    %dl,0x0(%ebx)
    16ef:	00 00                	add    %al,(%eax)
    16f1:	07                   	pop    %es
    16f2:	00 74 00 06          	add    %dh,0x6(%eax,%eax,1)
    16f6:	71 00                	jno    16f8 <__executable_start-0x804699c>
    16f8:	22 9f 00 00 00 00    	and    0x0(%edi),%bl
    16fe:	00 00                	add    %al,(%eax)
    1700:	00 00                	add    %al,(%eax)
    1702:	3e 00 00             	add    %al,%ds:(%eax)
    1705:	00 53 00             	add    %dl,0x0(%ebx)
    1708:	00 00                	add    %al,(%eax)
    170a:	01 00                	add    %eax,(%eax)
    170c:	50                   	push   %eax
	...
    1715:	6a 00                	push   $0x0
    1717:	00 00                	add    %al,(%eax)
    1719:	77 00                	ja     171b <__executable_start-0x8046979>
    171b:	00 00                	add    %al,(%eax)
    171d:	01 00                	add    %eax,(%eax)
    171f:	52                   	push   %edx
    1720:	77 00                	ja     1722 <__executable_start-0x8046972>
    1722:	00 00                	add    %al,(%eax)
    1724:	7a 00                	jp     1726 <__executable_start-0x804696e>
    1726:	00 00                	add    %al,(%eax)
    1728:	01 00                	add    %eax,(%eax)
    172a:	50                   	push   %eax
    172b:	7a 00                	jp     172d <__executable_start-0x8046967>
    172d:	00 00                	add    %al,(%eax)
    172f:	b2 00                	mov    $0x0,%dl
    1731:	00 00                	add    %al,(%eax)
    1733:	01 00                	add    %eax,(%eax)
    1735:	52                   	push   %edx
    1736:	b2 00                	mov    $0x0,%dl
    1738:	00 00                	add    %al,(%eax)
    173a:	31 01                	xor    %eax,(%ecx)
    173c:	00 00                	add    %al,(%eax)
    173e:	01 00                	add    %eax,(%eax)
    1740:	55                   	push   %ebp
    1741:	3d 01 00 00 45       	cmp    $0x45000001,%eax
    1746:	01 00                	add    %eax,(%eax)
    1748:	00 01                	add    %al,(%ecx)
    174a:	00 55 00             	add    %dl,0x0(%ebp)
    174d:	00 00                	add    %al,(%eax)
    174f:	00 00                	add    %al,(%eax)
    1751:	00 00                	add    %al,(%eax)
    1753:	00 e9                	add    %ch,%cl
    1755:	00 00                	add    %al,(%eax)
    1757:	00 31                	add    %dh,(%ecx)
    1759:	01 00                	add    %eax,(%eax)
    175b:	00 02                	add    %al,(%edx)
    175d:	00 91 60 3d 01 00    	add    %dl,0x13d60(%ecx)
    1763:	00 45 01             	add    %al,0x1(%ebp)
    1766:	00 00                	add    %al,(%eax)
    1768:	02 00                	add    (%eax),%al
    176a:	91                   	xchg   %eax,%ecx
    176b:	60                   	pusha  
	...
    1774:	6a 00                	push   $0x0
    1776:	00 00                	add    %al,(%eax)
    1778:	77 00                	ja     177a <__executable_start-0x804691a>
    177a:	00 00                	add    %al,(%eax)
    177c:	01 00                	add    %eax,(%eax)
    177e:	52                   	push   %edx
    177f:	77 00                	ja     1781 <__executable_start-0x8046913>
    1781:	00 00                	add    %al,(%eax)
    1783:	ae                   	scas   %es:(%edi),%al
    1784:	00 00                	add    %al,(%eax)
    1786:	00 01                	add    %al,(%ecx)
    1788:	00 50 00             	add    %dl,0x0(%eax)
    178b:	00 00                	add    %al,(%eax)
    178d:	00 00                	add    %al,(%eax)
    178f:	00 00                	add    %al,(%eax)
    1791:	00 6a 00             	add    %ch,0x0(%edx)
    1794:	00 00                	add    %al,(%eax)
    1796:	77 00                	ja     1798 <__executable_start-0x80468fc>
    1798:	00 00                	add    %al,(%eax)
    179a:	02 00                	add    (%eax),%al
    179c:	30 9f 77 00 00 00    	xor    %bl,0x77(%edi)
    17a2:	7c 00                	jl     17a4 <__executable_start-0x80468f0>
    17a4:	00 00                	add    %al,(%eax)
    17a6:	02 00                	add    (%eax),%al
    17a8:	40                   	inc    %eax
    17a9:	9f                   	lahf   
    17aa:	7c 00                	jl     17ac <__executable_start-0x80468e8>
    17ac:	00 00                	add    %al,(%eax)
    17ae:	db 00                	fildl  (%eax)
    17b0:	00 00                	add    %al,(%eax)
    17b2:	01 00                	add    %eax,(%eax)
    17b4:	51                   	push   %ecx
	...
    17bd:	b8 00 00 00 d0       	mov    $0xd0000000,%eax
    17c2:	00 00                	add    %al,(%eax)
    17c4:	00 06                	add    %al,(%esi)
    17c6:	00 50 93             	add    %dl,-0x6d(%eax)
    17c9:	04 52                	add    $0x52,%al
    17cb:	93                   	xchg   %eax,%ebx
    17cc:	04 00                	add    $0x0,%al
    17ce:	00 00                	add    %al,(%eax)
    17d0:	00 00                	add    %al,(%eax)
    17d2:	00 00                	add    %al,(%eax)
    17d4:	00 b8 00 00 00 d0    	add    %bh,-0x30000000(%eax)
    17da:	00 00                	add    %al,(%eax)
    17dc:	00 01                	add    %al,(%ecx)
    17de:	00 52 d0             	add    %dl,-0x30(%edx)
    17e1:	00 00                	add    %al,(%eax)
    17e3:	00 31                	add    %dh,(%ecx)
    17e5:	01 00                	add    %eax,(%eax)
    17e7:	00 06                	add    %al,(%esi)
    17e9:	00 91 54 06 31 25    	add    %dl,0x25310654(%ecx)
    17ef:	9f                   	lahf   
    17f0:	3d 01 00 00 45       	cmp    $0x45000001,%eax
    17f5:	01 00                	add    %eax,(%eax)
    17f7:	00 06                	add    %al,(%esi)
    17f9:	00 91 54 06 31 25    	add    %dl,0x25310654(%ecx)
    17ff:	9f                   	lahf   
	...
    1808:	b8 00 00 00 d0       	mov    $0xd0000000,%eax
    180d:	00 00                	add    %al,(%eax)
    180f:	00 01                	add    %al,(%ecx)
    1811:	00 50 d0             	add    %dl,-0x30(%eax)
    1814:	00 00                	add    %al,(%eax)
    1816:	00 31                	add    %dh,(%ecx)
    1818:	01 00                	add    %eax,(%eax)
    181a:	00 0c 00             	add    %cl,(%eax,%eax,1)
    181d:	74 00                	je     181f <__executable_start-0x8046875>
    181f:	06                   	push   %es
    1820:	31 26                	xor    %esp,(%esi)
    1822:	91                   	xchg   %eax,%ecx
    1823:	54                   	push   %esp
    1824:	06                   	push   %es
    1825:	4f                   	dec    %edi
    1826:	24 21                	and    $0x21,%al
    1828:	9f                   	lahf   
    1829:	3d 01 00 00 45       	cmp    $0x45000001,%eax
    182e:	01 00                	add    %eax,(%eax)
    1830:	00 0c 00             	add    %cl,(%eax,%eax,1)
    1833:	74 00                	je     1835 <__executable_start-0x804685f>
    1835:	06                   	push   %es
    1836:	31 26                	xor    %esp,(%esi)
    1838:	91                   	xchg   %eax,%ecx
    1839:	54                   	push   %esp
    183a:	06                   	push   %es
    183b:	4f                   	dec    %edi
    183c:	24 21                	and    $0x21,%al
    183e:	9f                   	lahf   
	...
    1847:	d2 00                	rolb   %cl,(%eax)
    1849:	00 00                	add    %al,(%eax)
    184b:	d7                   	xlat   %ds:(%ebx)
    184c:	00 00                	add    %al,(%eax)
    184e:	00 01                	add    %al,(%ecx)
    1850:	00 50 d7             	add    %dl,-0x29(%eax)
    1853:	00 00                	add    %al,(%eax)
    1855:	00 dd                	add    %bl,%ch
    1857:	00 00                	add    %al,(%eax)
    1859:	00 01                	add    %al,(%ecx)
    185b:	00 56 00             	add    %dl,0x0(%esi)
    185e:	00 00                	add    %al,(%eax)
    1860:	00 00                	add    %al,(%eax)
    1862:	00 00                	add    %al,(%eax)
    1864:	00 4d 01             	add    %cl,0x1(%ebp)
    1867:	00 00                	add    %al,(%eax)
    1869:	6b 01 00             	imul   $0x0,(%ecx),%eax
    186c:	00 06                	add    %al,(%esi)
    186e:	00 50 93             	add    %dl,-0x6d(%eax)
    1871:	04 52                	add    $0x52,%al
    1873:	93                   	xchg   %eax,%ebx
    1874:	04 6b                	add    $0x6b,%al
    1876:	01 00                	add    %eax,(%eax)
    1878:	00 c3                	add    %al,%bl
    187a:	01 00                	add    %eax,(%eax)
    187c:	00 06                	add    %al,(%esi)
    187e:	00 f3                	add    %dh,%bl
    1880:	03 f5                	add    %ebp,%esi
    1882:	00 25 9f 00 00 00    	add    %ah,0x9f
    1888:	00 00                	add    %al,(%eax)
    188a:	00 00                	add    %al,(%eax)
    188c:	00 76 01             	add    %dh,0x1(%esi)
    188f:	00 00                	add    %al,(%eax)
    1891:	96                   	xchg   %eax,%esi
    1892:	01 00                	add    %eax,(%eax)
    1894:	00 06                	add    %al,(%esi)
    1896:	00 50 93             	add    %dl,-0x6d(%eax)
    1899:	04 52                	add    $0x52,%al
    189b:	93                   	xchg   %eax,%ebx
    189c:	04 00                	add    $0x0,%al
    189e:	00 00                	add    %al,(%eax)
    18a0:	00 00                	add    %al,(%eax)
    18a2:	00 00                	add    %al,(%eax)
    18a4:	00 8b 01 00 00 96    	add    %cl,-0x69ffffff(%ebx)
    18aa:	01 00                	add    %eax,(%eax)
    18ac:	00 06                	add    %al,(%esi)
    18ae:	00 51 93             	add    %dl,-0x6d(%ecx)
    18b1:	04 53                	add    $0x53,%al
    18b3:	93                   	xchg   %eax,%ebx
    18b4:	04 00                	add    $0x0,%al
    18b6:	00 00                	add    %al,(%eax)
    18b8:	00 00                	add    %al,(%eax)
    18ba:	00 00                	add    %al,(%eax)
    18bc:	00 97 01 00 00 ba    	add    %dl,-0x45ffffff(%edi)
    18c2:	01 00                	add    %eax,(%eax)
    18c4:	00 06                	add    %al,(%esi)
    18c6:	00 50 93             	add    %dl,-0x6d(%eax)
    18c9:	04 52                	add    $0x52,%al
    18cb:	93                   	xchg   %eax,%ebx
    18cc:	04 00                	add    $0x0,%al
    18ce:	00 00                	add    %al,(%eax)
    18d0:	00 00                	add    %al,(%eax)
    18d2:	00 00                	add    %al,(%eax)
    18d4:	00 f3                	add    %dh,%bl
    18d6:	01 00                	add    %eax,(%eax)
    18d8:	00 0c 02             	add    %cl,(%edx,%eax,1)
    18db:	00 00                	add    %al,(%eax)
    18dd:	07                   	pop    %es
    18de:	00 56 93             	add    %dl,-0x6d(%esi)
    18e1:	04 91                	add    $0x91,%al
    18e3:	0c 93                	or     $0x93,%al
    18e5:	04 0c                	add    $0xc,%al
    18e7:	02 00                	add    (%eax),%al
    18e9:	00 17                	add    %dl,(%edi)
    18eb:	02 00                	add    (%eax),%al
    18ed:	00 08                	add    %cl,(%eax)
    18ef:	00 91 08 93 04 91    	add    %dl,-0x6efb6cf8(%ecx)
    18f5:	0c 93                	or     $0x93,%al
    18f7:	04 00                	add    $0x0,%al
    18f9:	00 00                	add    %al,(%eax)
    18fb:	00 00                	add    %al,(%eax)
    18fd:	00 00                	add    %al,(%eax)
    18ff:	00 f3                	add    %dh,%bl
    1901:	01 00                	add    %eax,(%eax)
    1903:	00 15 02 00 00 07    	add    %dl,0x7000002
    1909:	00 53 93             	add    %dl,-0x6d(%ebx)
    190c:	04 91                	add    $0x91,%al
    190e:	04 93                	add    $0x93,%al
    1910:	04 15                	add    $0x15,%al
    1912:	02 00                	add    (%eax),%al
    1914:	00 17                	add    %dl,(%edi)
    1916:	02 00                	add    (%eax),%al
    1918:	00 08                	add    %cl,(%eax)
    191a:	00 91 00 93 04 91    	add    %dl,-0x6efb6d00(%ecx)
    1920:	04 93                	add    $0x93,%al
    1922:	04 00                	add    $0x0,%al
    1924:	00 00                	add    %al,(%eax)
    1926:	00 00                	add    %al,(%eax)
    1928:	00 00                	add    %al,(%eax)
    192a:	00 47 02             	add    %al,0x2(%edi)
    192d:	00 00                	add    %al,(%eax)
    192f:	60                   	pusha  
    1930:	02 00                	add    (%eax),%al
    1932:	00 07                	add    %al,(%edi)
    1934:	00 56 93             	add    %dl,-0x6d(%esi)
    1937:	04 91                	add    $0x91,%al
    1939:	0c 93                	or     $0x93,%al
    193b:	04 60                	add    $0x60,%al
    193d:	02 00                	add    (%eax),%al
    193f:	00 6f 02             	add    %ch,0x2(%edi)
    1942:	00 00                	add    %al,(%eax)
    1944:	08 00                	or     %al,(%eax)
    1946:	91                   	xchg   %eax,%ecx
    1947:	08 93 04 91 0c 93    	or     %dl,-0x6cf36efc(%ebx)
    194d:	04 00                	add    $0x0,%al
    194f:	00 00                	add    %al,(%eax)
    1951:	00 00                	add    %al,(%eax)
    1953:	00 00                	add    %al,(%eax)
    1955:	00 47 02             	add    %al,0x2(%edi)
    1958:	00 00                	add    %al,(%eax)
    195a:	6d                   	insl   (%dx),%es:(%edi)
    195b:	02 00                	add    (%eax),%al
    195d:	00 07                	add    %al,(%edi)
    195f:	00 53 93             	add    %dl,-0x6d(%ebx)
    1962:	04 91                	add    $0x91,%al
    1964:	04 93                	add    $0x93,%al
    1966:	04 6d                	add    $0x6d,%al
    1968:	02 00                	add    (%eax),%al
    196a:	00 6f 02             	add    %ch,0x2(%edi)
    196d:	00 00                	add    %al,(%eax)
    196f:	08 00                	or     %al,(%eax)
    1971:	91                   	xchg   %eax,%ecx
    1972:	00 93 04 91 04 93    	add    %dl,-0x6cfb6efc(%ebx)
    1978:	04 00                	add    $0x0,%al
    197a:	00 00                	add    %al,(%eax)
    197c:	00 00                	add    %al,(%eax)
    197e:	00 00                	add    %al,(%eax)
	...

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	5e                   	pop    %esi
   1:	04 00                	add    $0x0,%al
   3:	00 50 0a             	add    %dl,0xa(%eax)
   6:	00 00                	add    %al,(%eax)
   8:	61                   	popa   
   9:	0a 00                	or     (%eax),%al
   b:	00 7a 0a             	add    %bh,0xa(%edx)
	...
  16:	00 00                	add    %al,(%eax)
  18:	a3 04 00 00 5c       	mov    %eax,0x5c000004
  1d:	06                   	push   %es
  1e:	00 00                	add    %al,(%eax)
  20:	61                   	popa   
  21:	0a 00                	or     (%eax),%al
  23:	00 7a 0a             	add    %bh,0xa(%edx)
	...
  2e:	00 00                	add    %al,(%eax)
  30:	0e                   	push   %cs
  31:	05 00 00 14 05       	add    $0x5140000,%eax
  36:	00 00                	add    %al,(%eax)
  38:	3e 05 00 00 44 05    	ds add $0x5440000,%eax
	...
  46:	00 00                	add    %al,(%eax)
  48:	95                   	xchg   %eax,%ebp
  49:	05 00 00 9b 05       	add    $0x59b0000,%eax
  4e:	00 00                	add    %al,(%eax)
  50:	b9 05 00 00 bf       	mov    $0xbf000005,%ecx
  55:	05 00 00 00 00       	add    $0x0,%eax
  5a:	00 00                	add    %al,(%eax)
  5c:	00 00                	add    %al,(%eax)
  5e:	00 00                	add    %al,(%eax)
  60:	df 0c 00             	fisttp (%eax,%eax,1)
  63:	00 01                	add    %al,(%ecx)
  65:	0d 00 00 0f 0d       	or     $0xd0f0000,%eax
  6a:	00 00                	add    %al,(%eax)
  6c:	4d                   	dec    %ebp
  6d:	0d 00 00 00 00       	or     $0x0,%eax
  72:	00 00                	add    %al,(%eax)
  74:	00 00                	add    %al,(%eax)
  76:	00 00                	add    %al,(%eax)
  78:	c2 06 00             	ret    $0x6
  7b:	00 f2                	add    %dh,%dl
  7d:	06                   	push   %es
  7e:	00 00                	add    %al,(%eax)
  80:	f9                   	stc    
  81:	06                   	push   %es
  82:	00 00                	add    %al,(%eax)
  84:	fd                   	std    
  85:	06                   	push   %es
	...
  8e:	00 00                	add    %al,(%eax)
  90:	68 00 00 00 31       	push   $0x31000000
  95:	01 00                	add    %eax,(%eax)
  97:	00 3d 01 00 00 45    	add    %bh,0x45000001
  9d:	01 00                	add    %eax,(%eax)
	...
