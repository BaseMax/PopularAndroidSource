.class public Lc/e/a/c/h/d$a;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/h/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/h/d;


# direct methods
.method public constructor <init>(Lc/e/a/c/h/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/c/h/d;Lc/e/a/c/h/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/c/h/d$a;-><init>(Lc/e/a/c/h/d;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {v0}, Lc/e/a/c/h/d;->a(Lc/e/a/c/h/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eqz p2, :cond_2

    .line 3
    iget-object p2, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p2}, Lc/e/a/c/h/d;->b(Lc/e/a/c/h/d;)I

    move-result p2

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p2}, Lc/e/a/c/h/d;->b(Lc/e/a/c/h/d;)I

    move-result p2

    if-eq p2, p1, :cond_1

    iget-object p2, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p2}, Lc/e/a/c/h/d;->c(Lc/e/a/c/h/d;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4
    iget-object p2, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p2}, Lc/e/a/c/h/d;->b(Lc/e/a/c/h/d;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lc/e/a/c/h/d;->a(Lc/e/a/c/h/d;IZ)V

    .line 5
    :cond_1
    iget-object p2, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p2, p1}, Lc/e/a/c/h/d;->a(Lc/e/a/c/h/d;I)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p2}, Lc/e/a/c/h/d;->b(Lc/e/a/c/h/d;)I

    move-result p2

    if-ne p2, p1, :cond_3

    .line 7
    iget-object p1, p0, Lc/e/a/c/h/d$a;->a:Lc/e/a/c/h/d;

    invoke-static {p1, v0}, Lc/e/a/c/h/d;->a(Lc/e/a/c/h/d;I)V

    :cond_3
    :goto_0
    return-void
.end method
