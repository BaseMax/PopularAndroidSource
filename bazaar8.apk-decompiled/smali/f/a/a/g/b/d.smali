.class public Lf/a/a/g/b/d;
.super Landroid/telephony/PhoneStateListener;
.source "MediaPlayerPlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/b/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/b/e;


# direct methods
.method public constructor <init>(Lf/a/a/g/b/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/b/d;->a:Lf/a/a/g/b/e;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lf/a/a/g/b/d;->a:Lf/a/a/g/b/e;

    invoke-static {p2}, Lf/a/a/g/b/e;->a(Lf/a/a/g/b/e;)Lf/a/a/g/b/p$a;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lf/a/a/g/b/d;->a:Lf/a/a/g/b/e;

    invoke-static {p2}, Lf/a/a/g/b/e;->a(Lf/a/a/g/b/e;)Lf/a/a/g/b/p$a;

    move-result-object p2

    invoke-interface {p2, p1}, Lf/a/a/g/b/p$a;->b(I)V

    :cond_0
    return-void
.end method
