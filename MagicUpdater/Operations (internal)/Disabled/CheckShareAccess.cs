﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using MagicUpdaterCommon.Helpers;
using MagicUpdaterCommon.Abstract;
using SmartAssembly.Attributes;

namespace MagicUpdater.Operations
{
	public class CheckShareAccess : Operation
	{
		private static readonly string _password1 = "Sela111111";

		private List<string> _passwords = new List<string>
		{
			//"sela111111",
			_password1,
			//"ыудф111111",
			//"Ыудф111111",
			//"ctkf111111",
			//"Ctkf111111"
		};

		private static readonly string REMOTE_PATH = @"c$\Windows";
		private static readonly string LOGIN = "Администратор";

		public CheckShareAccess(int? operationId) : base(operationId)
		{
		}

		protected override void Execution(object sender = null, DoWorkEventArgs e = null)
		{
			var computersList = NetWork.GetNetworkComputerNamesScanShop();

			List<string> messages = new List<string>();

			foreach(var computer in computersList)
			{
				var remotePath = $"\\\\{computer}\\{REMOTE_PATH}";
				foreach (var password in _passwords)
				{
					var result = NetWork.CheckAccess(remotePath, LOGIN, computer, password, computer);
					messages.Add(result.Message);
					if (result.IsComplete)
					{
						break;
					}
				}
			}

			AddCompleteMessage(string.Join(Environment.NewLine, messages));
		}
	}
}
