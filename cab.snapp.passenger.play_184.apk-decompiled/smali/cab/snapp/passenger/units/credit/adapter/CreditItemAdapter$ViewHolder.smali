.class Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;

.field itemCreditActionTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a018e
    .end annotation
.end field

.field itemCreditContainer:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a018f
    .end annotation
.end field

.field itemCreditDateTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0190
    .end annotation
.end field

.field itemCreditDescTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a0191
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;Landroid/view/View;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter$ViewHolder;->a:Lcab/snapp/passenger/units/credit/adapter/CreditItemAdapter;

    .line 212
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 213
    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method
