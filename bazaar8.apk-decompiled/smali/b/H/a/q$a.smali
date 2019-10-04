.class public Lb/H/a/q$a;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroidx/work/ListenableWorker;

.field public c:Lb/H/a/d/b/a;

.field public d:Lb/H/a;

.field public e:Landroidx/work/impl/WorkDatabase;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/H/a;Lb/H/a/d/b/a;Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/WorkerParameters$a;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$a;-><init>()V

    iput-object v0, p0, Lb/H/a/q$a;->h:Landroidx/work/WorkerParameters$a;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lb/H/a/q$a;->a:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lb/H/a/q$a;->c:Lb/H/a/d/b/a;

    .line 5
    iput-object p2, p0, Lb/H/a/q$a;->d:Lb/H/a;

    .line 6
    iput-object p4, p0, Lb/H/a/q$a;->e:Landroidx/work/impl/WorkDatabase;

    .line 7
    iput-object p5, p0, Lb/H/a/q$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroidx/work/WorkerParameters$a;)Lb/H/a/q$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lb/H/a/q$a;->h:Landroidx/work/WorkerParameters$a;

    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/List;)Lb/H/a/q$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/H/a/d;",
            ">;)",
            "Lb/H/a/q$a;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb/H/a/q$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public a()Lb/H/a/q;
    .locals 1

    .line 3
    new-instance v0, Lb/H/a/q;

    invoke-direct {v0, p0}, Lb/H/a/q;-><init>(Lb/H/a/q$a;)V

    return-object v0
.end method
