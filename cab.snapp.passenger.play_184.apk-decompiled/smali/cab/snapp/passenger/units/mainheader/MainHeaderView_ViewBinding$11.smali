.class final Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$11;
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

    .line 148
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$11;->b:Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding;

    iput-object p2, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$11;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final doClick(Landroid/view/View;)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/MainHeaderView_ViewBinding$11;->a:Lcab/snapp/passenger/units/mainheader/MainHeaderView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/MainHeaderView;->onSubmitPromoBtnClicked()V

    return-void
.end method
