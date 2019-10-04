.class final Lcab/snapp/passenger/a/n$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/a/n;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/a/n;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/n;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcab/snapp/passenger/a/n$2;->a:Lcab/snapp/passenger/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcab/snapp/passenger/a/n$2;->a:Lcab/snapp/passenger/a/n;

    invoke-static {p1}, Lcab/snapp/passenger/a/n;->a(Lcab/snapp/passenger/a/n;)Lcab/snapp/passenger/a/n$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcab/snapp/passenger/a/n$2;->a:Lcab/snapp/passenger/a/n;

    invoke-static {p1}, Lcab/snapp/passenger/a/n;->a(Lcab/snapp/passenger/a/n;)Lcab/snapp/passenger/a/n$a;

    move-result-object p1

    invoke-interface {p1}, Lcab/snapp/passenger/a/n$a;->onSnappBoxSupportClicked()V

    :cond_0
    return-void
.end method
