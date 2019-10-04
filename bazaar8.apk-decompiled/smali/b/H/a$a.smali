.class public final Lb/H/a$a;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/Executor;

.field public b:Lb/H/q;

.field public c:I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lb/H/a$a;->c:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/H/a$a;->d:I

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lb/H/a$a;->e:I

    const/16 v0, 0x14

    .line 5
    iput v0, p0, Lb/H/a$a;->f:I

    return-void
.end method


# virtual methods
.method public a(Lb/H/q;)Lb/H/a$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/H/a$a;->b:Lb/H/q;

    return-object p0
.end method

.method public a()Lb/H/a;
    .locals 1

    .line 2
    new-instance v0, Lb/H/a;

    invoke-direct {v0, p0}, Lb/H/a;-><init>(Lb/H/a$a;)V

    return-object v0
.end method
