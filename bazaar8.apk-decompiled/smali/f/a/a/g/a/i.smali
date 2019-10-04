.class public Lf/a/a/g/a/i;
.super Ljava/lang/Object;
.source "AddressPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/g/a/n;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/AppCompatEditText;

.field public final synthetic b:Lf/a/a/g/a/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/n;Landroidx/appcompat/widget/AppCompatEditText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/i;->b:Lf/a/a/g/a/n;

    iput-object p2, p0, Lf/a/a/g/a/i;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/g/a/i;->b:Lf/a/a/g/a/n;

    invoke-static {p1}, Lf/a/a/g/a/n;->b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;

    move-result-object p1

    iget-object v0, p0, Lf/a/a/g/a/i;->a:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lf/a/a/g/a/o;->a(Ljava/lang/String;)V

    return-void
.end method
