namespace ModelEF.Model
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        public int ID { get; set; }

        [Required(ErrorMessage = "Phải nhập tên")]
        [Display(Name = "Tên ")]
        [StringLength(200)]
        public string Name { get; set; }

        [Required]
        [Display(Name = "Đơn giá ")]
        [StringLength(50)]
        public string UnitCost { get; set; }

        [Display(Name = "Số lượng ")]
        public int? Quantity { get; set; }


        [Display(Name = "Hình ảnh ")]
        [StringLength(200)]
        public string Image { get; set; }


        [Display(Name = "Mô tả ")]
        [Column(TypeName = "ntext")]
        public string Description { get; set; }

        [Display(Name = "LoaiSP_ID ")]
        public int? CategoryId { get; set; }

        [Display(Name = "Trạng thái ")]
        [StringLength(50)]
        public string Status { get; set; }



        public virtual Category Category { get; set; }
    }
}
