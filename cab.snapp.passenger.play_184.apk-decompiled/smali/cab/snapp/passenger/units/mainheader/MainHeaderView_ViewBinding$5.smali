.class final Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;-><init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

.field final synthetic b:Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;Lcab/snapp/passenger/units/mainheader/MainHeaderView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$5;->b:Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$5;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$5;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->onSearchIbClicked()V

    return-void
.end method
