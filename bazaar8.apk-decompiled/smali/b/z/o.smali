.class public Lb/z/o;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/z/r;


# direct methods
.method public constructor <init>(Lb/z/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/o;->a:Lb/z/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/o;->a:Lb/z/r;

    iget-object v1, v0, Lb/z/r;->d:Lb/z/j;

    iget-object v0, v0, Lb/z/r;->e:Lb/z/j$b;

    invoke-virtual {v1, v0}, Lb/z/j;->c(Lb/z/j$b;)V

    return-void
.end method
