.class public Lb/b/g/N$a;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/g/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lb/b/g/N;


# direct methods
.method public constructor <init>(Lb/b/g/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/g/N$a;->a:Lb/b/g/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/b/g/N$a;->a:Lb/b/g/N;

    invoke-virtual {v0}, Lb/b/g/N;->i()V

    return-void
.end method
