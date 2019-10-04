.class final Lcom/a/a/c/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/c/f;->create(Landroid/app/Activity;Lio/fabric/sdk/android/services/settings/o;Lcom/a/a/c/f$a;)Lcom/a/a/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/c/f$a;

.field final synthetic b:Lcom/a/a/c/f$b;


# direct methods
.method constructor <init>(Lcom/a/a/c/f$a;Lcom/a/a/c/f$b;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/a/a/c/f$3;->a:Lcom/a/a/c/f$a;

    iput-object p2, p0, Lcom/a/a/c/f$3;->b:Lcom/a/a/c/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 90
    iget-object p2, p0, Lcom/a/a/c/f$3;->a:Lcom/a/a/c/f$a;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/a/a/c/f$a;->sendUserReportsWithoutPrompting(Z)V

    .line 91
    iget-object p2, p0, Lcom/a/a/c/f$3;->b:Lcom/a/a/c/f$b;

    invoke-virtual {p2, v0}, Lcom/a/a/c/f$b;->a(Z)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
