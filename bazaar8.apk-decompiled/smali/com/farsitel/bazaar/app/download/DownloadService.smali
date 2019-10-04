.class public final Lcom/farsitel/bazaar/app/download/DownloadService;
.super Ld/a/f;
.source "DownloadService.kt"

# interfaces
.implements Li/a/H;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/app/download/DownloadService$a;
    }
.end annotation


# static fields
.field public static final a:Li/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/h<",
            "Lc/c/a/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/farsitel/bazaar/app/download/DownloadService$a;


# instance fields
.field public final c:Li/a/u;

.field public final d:Lh/c/e;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

.field public h:Lc/c/a/e/d/i/A;

.field public i:Lc/c/a/e/d/i/c;

.field public j:Lc/c/a/e/d/b/m;

.field public k:Lc/c/a/d/g/a/a;

.field public l:Lc/c/a/b/d/b;

.field public m:Lc/c/a/e/d/u/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/app/download/DownloadService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Li/a/b/i;->a(I)Li/a/b/h;

    move-result-object v0

    sput-object v0, Lcom/farsitel/bazaar/app/download/DownloadService;->a:Li/a/b/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ld/a/f;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Li/a/ua;->a(Li/a/ra;ILjava/lang/Object;)Li/a/u;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->c:Li/a/u;

    .line 3
    sget-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    invoke-virtual {v0}, Lc/c/a/c/a/b;->b()Lh/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->c:Li/a/u;

    invoke-interface {v0, v1}, Lh/c/e;->plus(Lh/c/e;)Lh/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->d:Lh/c/e;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->e:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->f:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 27
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 39
    invoke-virtual/range {v2 .. v8}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/app/download/DownloadService;Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 23
    iget-object p3, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->g:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "downloadManager"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V

    return-void
.end method

.method public static final synthetic b()Li/a/b/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/app/download/DownloadService;->a:Li/a/b/h;

    return-object v0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/app/download/DownloadService;)Ljava/util/HashSet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->f:Ljava/util/HashSet;

    return-object p0
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->d(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->d:Lh/c/e;

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 7

    .line 29
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getReferrer()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v4

    .line 32
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getVersionCode()Ljava/lang/Long;

    move-result-object v6

    .line 33
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getInstalledVersionCode()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 34
    invoke-virtual/range {v0 .. v6}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Long;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
    .locals 9

    .line 35
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getReferrer()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {p2}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->isFree()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 38
    invoke-static/range {v0 .. v8}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Long;ILjava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6

    .line 28
    new-instance v3, Lcom/farsitel/bazaar/app/download/DownloadService$sendNewStatus$1;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, p3, v0}, Lcom/farsitel/bazaar/app/download/DownloadService$sendNewStatus$1;-><init>(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;Lh/c/b;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Long;)V
    .locals 12

    .line 40
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    .line 41
    new-instance v1, Lc/c/a/a/a/a;

    .line 42
    new-instance v11, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;

    .line 43
    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->f()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-static {p0}, Lc/c/a/c/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-static {p0}, Lc/c/a/c/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v11

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 46
    invoke-direct/range {v2 .. v10}, Lcom/farsitel/bazaar/analytics/model/what/DownloadEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V

    .line 47
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/where/DownloaderService;

    invoke-direct {v2}, Lcom/farsitel/bazaar/analytics/model/where/DownloaderService;-><init>()V

    const-string v3, "system"

    .line 48
    invoke-direct {v1, v3, v11, v2}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    .line 49
    invoke-virtual {v0, v1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 5

    .line 9
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->l:Lc/c/a/b/d/b;

    const/4 v1, 0x0

    const-string v2, "appManager"

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getVersionCode()Ljava/lang/Long;

    move-result-object v4

    .line 12
    invoke-virtual {v0, v3, v4}, Lc/c/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v0

    sget-object v3, Lcom/farsitel/bazaar/common/model/ui/EntityState;->FILE_EXISTS:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v0, v3, :cond_1

    .line 13
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->l:Lc/c/a/b/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->l(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 16
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
    .locals 8

    .line 17
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->h:Lc/c/a/e/d/i/A;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/c/a/e/d/i/A;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 18
    new-instance v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnVideoStatus$1;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;Li/a/b/t;Lh/c/b;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void

    :cond_0
    const-string p1, "videoDownloadManager"

    .line 19
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->l:Lc/c/a/b/d/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lc/c/a/b/d/b;->l(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :cond_1
    const-string p1, "appManager"

    .line 22
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lc/c/a/b/f/a/b;Lcom/farsitel/bazaar/data/feature/download/DownloadManager;)V
    .locals 8

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p2, p1, v0}, Lc/c/a/b/f/a/b;->a(Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v0

    .line 25
    invoke-virtual {p2}, Lc/c/a/b/f/a/b;->a()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 26
    new-instance v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnEntityDownloadProgress$1;

    const/4 v0, 0x0

    invoke-direct {v5, p3, p1, p2, v0}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnEntityDownloadProgress$1;-><init>(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;Lc/c/a/b/f/a/b;Lh/c/b;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/d/g/b;->b:Lc/c/a/d/g/b;

    invoke-virtual {v0, p1}, Lc/c/a/d/g/b;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 11

    .line 12
    new-instance v3, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;

    invoke-direct {v3, p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    .line 13
    new-instance v4, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;

    invoke-direct {v4, p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    .line 14
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->f:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v8, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$3;

    const/4 v5, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$3;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$1;Lcom/farsitel/bazaar/app/download/DownloadService$getDownloadInfo$2;Lh/c/b;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V
    .locals 5

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->h:Lc/c/a/e/d/i/A;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoId()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getVideoUrl()Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;->getSubtitleUrls()Ljava/util/List;

    move-result-object v4

    .line 9
    invoke-virtual {v0, v1, v2, v3, v4}, Lc/c/a/e/d/i/A;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V

    return-void

    :cond_0
    const-string p1, "videoDownloadManager"

    .line 11
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 4

    .line 16
    sget-object v0, Lc/c/a/a/a;->c:Lc/c/a/a/a;

    new-instance v1, Lc/c/a/a/a/a;

    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/DownloadActionEvent;

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/analytics/model/what/DownloadActionEvent;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/farsitel/bazaar/analytics/model/where/DownloaderService;

    invoke-direct {p1}, Lcom/farsitel/bazaar/analytics/model/where/DownloaderService;-><init>()V

    const-string v3, "user"

    invoke-direct {v1, v3, v2, p1}, Lc/c/a/a/a/a;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;)V

    invoke-virtual {v0, v1}, Lc/c/a/a/a;->a(Lc/c/a/a/a/a;)V

    return-void
.end method

.method public final c()Lc/c/a/e/d/i/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->i:Lc/c/a/e/d/i/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "downloadInfoRepository"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->g:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->e(Ljava/lang/String;)Li/a/b/t;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    new-instance v5, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;

    invoke-direct {v5, p0, p1, v0, v1}, Lcom/farsitel/bazaar/app/download/DownloadService$listenOnAppStatus$1;-><init>(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;Li/a/b/t;Lh/c/b;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Li/a/e;->b(Li/a/H;Lh/c/e;Lkotlinx/coroutines/CoroutineStart;Lh/f/a/c;ILjava/lang/Object;)Li/a/ra;

    return-void

    :cond_0
    const-string p1, "downloadManager"

    .line 4
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 8

    .line 5
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 7
    sget-object v2, Lcom/farsitel/bazaar/app/notification/NotificationType;->VIDEO_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 8
    invoke-virtual {v1, v2, p1}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 9
    sget-object v1, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    .line 10
    sget-object v2, Lcom/farsitel/bazaar/app/notification/NotificationType;->APP_DOWNLOAD_PROGRESS:Lcom/farsitel/bazaar/app/notification/NotificationType;

    .line 11
    invoke-virtual {v1, v2, p1}, Lc/c/a/b/f/h;->a(Lcom/farsitel/bazaar/app/notification/NotificationType;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->g:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->g(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->h:Lc/c/a/e/d/i/A;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lc/c/a/e/d/i/A;->g(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->f:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 15
    sget-object v3, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->STOP:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 16
    sget-object p1, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "videoDownloadManager"

    .line 18
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    :try_start_2
    const-string p1, "downloadManager"

    .line 19
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_0
    move-exception p1

    .line 20
    monitor-exit v0

    throw p1
.end method

.method public final d()Lc/c/a/e/d/b/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->j:Lc/c/a/e/d/b/m;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "downloadedAppRepository"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V
    .locals 16

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getToken()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getCdnPrefixes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getHash()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getDiffDownloadExists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/farsitel/bazaar/app/download/DownloadService;->m:Lc/c/a/e/d/u/a;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/e/d/u/a;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getDownloadDiffUrl()Ljava/util/List;

    move-result-object v1

    move-object v7, v1

    goto :goto_0

    :cond_1
    const-string v1, "settingsRepository"

    .line 7
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v7, v2

    .line 8
    :goto_0
    iget-object v3, v0, Lcom/farsitel/bazaar/app/download/DownloadService;->g:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 10
    sget-object v5, Lcom/farsitel/bazaar/data/entity/EntityType;->DIFF_APP:Lcom/farsitel/bazaar/data/entity/EntityType;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getDownloadUrl()Ljava/util/List;

    move-result-object v6

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getHash()Ljava/math/BigInteger;

    move-result-object v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getDiffHash()Ljava/math/BigInteger;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x3c0

    const/4 v15, 0x0

    .line 14
    invoke-static/range {v3 .. v15}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->a(Lcom/farsitel/bazaar/data/feature/download/DownloadManager;Ljava/lang/String;Lcom/farsitel/bazaar/data/entity/EntityType;Ljava/util/List;Ljava/util/List;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljavax/crypto/Cipher;IZZILjava/lang/Object;)V

    .line 15
    invoke-virtual/range {p0 .. p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->c(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    .line 16
    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->SUCCESS_DOWNLOAD_INFO:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_3
    const-string v1, "downloadManager"

    .line 20
    invoke-static {v1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 21
    :cond_4
    sget-object v1, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->UNKNOWN_ERROR:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->isFree()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    :goto_1
    iget-object v1, v0, Lcom/farsitel/bazaar/app/download/DownloadService;->f:Ljava/util/HashSet;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method public final e()Lc/c/a/e/d/i/A;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->h:Lc/c/a/e/d/i/A;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoDownloadManager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    const/4 v0, 0x1

    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string p2, "STOP"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "STOP"

    .line 2
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->d(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_2

    :sswitch_1
    const-string p2, "VIDEO_DOWNLOAD"

    .line 7
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "VIDEO_DOWNLOAD"

    .line 8
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Ljava/lang/String;)V

    .line 9
    sget-object p2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->c(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Lcom/farsitel/bazaar/common/model/ui/VideoDownloaderModel;)V

    goto/16 :goto_2

    :sswitch_2
    const-string p1, "STOP_ALL"

    .line 11
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "STOP_ALL"

    .line 12
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->e:Ljava/lang/Object;

    monitor-enter p1

    .line 14
    :try_start_0
    iget-object p3, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->f:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->clear()V

    .line 15
    iget-object p3, p0, Lcom/farsitel/bazaar/app/download/DownloadService;->g:Lcom/farsitel/bazaar/data/feature/download/DownloadManager;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/farsitel/bazaar/data/feature/download/DownloadManager;->d()V

    .line 16
    sget-object v2, Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;->STOP_ALL:Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/farsitel/bazaar/app/download/DownloadService;->a(Lcom/farsitel/bazaar/app/download/DownloadService;Lcom/farsitel/bazaar/app/download/DownloadServiceNotifyType;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 17
    sget-object p2, Lc/c/a/b/f/h;->h:Lc/c/a/b/f/h;

    invoke-virtual {p2}, Lc/c/a/b/f/h;->a()V

    .line 18
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 19
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 20
    sget-object p2, Lh/h;->a:Lh/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    monitor-exit p1

    goto :goto_2

    :cond_2
    :try_start_1
    const-string p3, "downloadManager"

    .line 22
    invoke-static {p3}, Lh/f/b/j;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :catchall_0
    move-exception p2

    .line 23
    monitor-exit p1

    throw p2

    :sswitch_3
    const-string p2, "BATCH_DOWNLOAD"

    .line 24
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "BATCH_DOWNLOAD"

    .line 25
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Ljava/lang/String;)V

    .line 26
    sget-object p2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->a(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    .line 28
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->d(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    goto :goto_1

    :sswitch_4
    const-string p2, "DOWNLOAD"

    .line 29
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "DOWNLOAD"

    .line 30
    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/app/download/DownloadService;->b(Ljava/lang/String;)V

    .line 31
    sget-object p2, Lcom/farsitel/bazaar/app/download/DownloadService;->b:Lcom/farsitel/bazaar/app/download/DownloadService$a;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/farsitel/bazaar/app/download/DownloadService$a;->b(Lcom/farsitel/bazaar/app/download/DownloadService$a;Landroid/os/Bundle;)Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 32
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/app/download/DownloadService;->d(Lcom/farsitel/bazaar/common/model/ui/AppDownloaderModel;)V

    :cond_3
    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x7c3f4778 -> :sswitch_4
        -0x799a97f3 -> :sswitch_3
        -0x6b10a43c -> :sswitch_2
        -0x37d7c14 -> :sswitch_1
        0x270002 -> :sswitch_0
    .end sparse-switch
.end method
