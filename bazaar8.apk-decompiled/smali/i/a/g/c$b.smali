.class public abstract Li/a/g/c$b;
.super Li/a/c/k;
.source "Mutex.kt"

# interfaces
.implements Li/a/X;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "b"
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/a/c/k;-><init>()V

    iput-object p1, p0, Li/a/g/c$b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract c(Ljava/lang/Object;)V
.end method

.method public final f()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/a/c/k;->n()Z

    return-void
.end method

.method public abstract q()Ljava/lang/Object;
.end method
