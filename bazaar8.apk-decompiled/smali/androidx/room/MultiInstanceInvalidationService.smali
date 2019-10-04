.class public Landroidx/room/MultiInstanceInvalidationService;
.super Landroid/app/Service;
.source "MultiInstanceInvalidationService.java"


# instance fields
.field public a:I

.field public final b:Lb/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/f/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lb/z/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lb/z/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/room/MultiInstanceInvalidationService;->a:I

    .line 3
    new-instance v0, Lb/f/j;

    invoke-direct {v0}, Lb/f/j;-><init>()V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->b:Lb/f/j;

    .line 4
    new-instance v0, Lb/z/s;

    invoke-direct {v0, p0}, Lb/z/s;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->c:Landroid/os/RemoteCallbackList;

    .line 5
    new-instance v0, Lb/z/t;

    invoke-direct {v0, p0}, Lb/z/t;-><init>(Landroidx/room/MultiInstanceInvalidationService;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationService;->d:Lb/z/g$a;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/room/MultiInstanceInvalidationService;->d:Lb/z/g$a;

    return-object p1
.end method
